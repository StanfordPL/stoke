#include <cassert>

#include "src/search/search.h"

using namespace cpputil;
using namespace std;
using namespace x64asm;

#ifndef NDEBUG
  #define FOR_ASSERT(x) x
#else
  #define FOR_ASSERT(x) 
#endif

namespace {

bool give_up_now = false;
void handler(int sig, siginfo_t *siginfo, void *context) {
  give_up_now = true;
  cout << "\nTerminating Early!!\n" << endl;
}

} // namespace

namespace stoke {

Search::Search() {
	set_timeout(0);
	set_beta(1.0);
	set_progress_callback(nullptr, nullptr);
	set_statistics_callback(nullptr, nullptr);

	static bool once = false;
	if ( !once ) {
		once = true;

		struct sigaction term_act;
		memset(&term_act, '\0', sizeof(term_act));
		sigfillset(&term_act.sa_mask);
		term_act.sa_sigaction = handler;
		term_act.sa_flags = SA_ONSTACK;

		sigaction(SIGINT, &term_act, 0);
	}
}

void Search::run(const Cfg& target, const Cfg& rewrite, const CostFunction& fxn) {
	// Make sure target is correct with respect to itself
	assert((*cost_fxn_)(target_).first);
	// Make sure target and rewrite are sound to begin with
	assert(target_.is_sound());
	assert(rewrite_.is_sound());

	// Progress callback variables
	auto current = rewrite_;
	auto current_cost = fxn(current, CostFunction::max_cost - 1);
	auto best_yet = current;
	auto best_yet_cost = current_cost;
	auto best_correct = target;
	auto best_correct_cost = fxn(target, CostFunction::max_cost - 1);
	auto success = false;

	auto start = time(0);
	if ( !moves_.empty() )
		for ( size_t itr = 0; itr < timeout_ && !give_up_now && best_cost > 0; ++itr ) {
      // Inter-iteration cost function check
      FOR_ASSERT(const auto cost_check_1 = ((*cost_fxn_)(rewrite_, max+1)).second);
      assert(cost == cost_check_1 && "Cost function changes between iterations!");

			auto move_idx = Random::get() % moves_.size();
			auto move = moves_[move_idx];
      DBG(cout << "MOVE TYPE: " << move->type() << endl);

			const auto changed = move->modify(rewrite_);
			assert(rewrite_.is_sound());
			assert(rewrite_.get_code().check());

			if ( !changed ) {
        DBG(cout << "UNCHANGED" << endl << rewrite_.get_code() << endl << endl);
				continue;
      } else {
        DBG(cout << "NEW CODE" << endl << rewrite_.get_code() << endl << endl);
      }

			const auto p = (double) Random::get() / RAND_MAX;
			max = cost - (log(p) / beta_);

			const auto new_res = (*cost_fxn_)(rewrite_, max+1);
			const auto new_cost = new_res.second;

      // Intra-iteration cost function check
      FOR_ASSERT(const auto cost_check_2 = ((*cost_fxn_)(rewrite_, max+1)).second);
      assert(new_cost == cost_check_2 && "Cost function changes within an iteration!");

			if ( new_cost > max ) {
        DBG(cout << dec << "REJECTING (cost = " << new_cost << ")" << endl);
        DBG(cout << dec << "          (max  = " << max << ")" << endl);

				move->undo(rewrite_);
				assert(rewrite_.is_sound());
				assert(rewrite_.get_code().check());

				continue;
			} else {
        DBG(cout << dec << "ACCEPTING (cost = " << new_cost << ")" << endl);
        DBG(cout << dec << "          (max  = " << max << ")" << endl);
      }

			cost = new_cost;
			const auto new_best = new_res.first && (cost < best_cost);
			const auto new_best_yet = cost < best_yet;

			if ( new_best ) {
				best_cost = cost;
				best_rewrite_ = rewrite_;
				success_ = true;
			}
			if ( new_best_yet )
				best_yet = cost;
			if ( (progress_cb_ != 0) && (new_best || new_best_yet) ) 
				progress_cb_({target_, rewrite_, cost_fxn_, moves_, 
						cost, best_cost, best_yet, success_,
						time(0)-start, itr}, progress_cb_arg_);
		}

	rewrite_ = best_rewrite_;
	if ( finished_cb_ != 0 )
		finished_cb_({target_, rewrite_, cost_fxn_, moves_, 
				cost, best_cost, best_yet, success_,
				time(0)-start, timeout_}, finished_cb_arg_);

	rewrite_.remove_unreachable()
			.remove_nop()
			.remove_unused(cost_fxn_);
	assert(rewrite_.is_sound());
	assert(rewrite_.get_code().check());
}

} // namespace stoke
