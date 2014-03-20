#include <cassert>
#include <cmath>
#include <csignal>
#include <unistd.h>

#include <chrono>

#include "src/search/search.h"

using namespace cpputil;
using namespace std;
using namespace std::chrono;
using namespace x64asm;

namespace {

bool give_up_now = false;
void handler(int sig, siginfo_t* siginfo, void* context) {
  give_up_now = true;
  cout << "\nTerminating Early!!\n" << endl;
}

} // namespace

namespace stoke {

Search::Search(Transforms* transforms) : transforms_(transforms) {
  set_seed(0);
  set_timeout(0);
  set_beta(1.0);
  set_progress_callback(nullptr, nullptr);
  set_statistics_callback(nullptr, nullptr);
  set_statistics_interval(100000);

  static bool once = false;
  if (!once) {
    once = true;

    struct sigaction term_act;
    memset(&term_act, '\0', sizeof(term_act));
    sigfillset(&term_act.sa_mask);
    term_act.sa_sigaction = handler;
    term_act.sa_flags = SA_ONSTACK;

    sigaction(SIGINT, &term_act, 0);
  }
}

Search& Search::set_mass(Move move, size_t mass) {
  vector<Move> new_moves;
  for (auto m : moves_) {
    if (m != move) {
      new_moves.push_back(m);
    }
  }
  for (size_t i = 0; i < mass; ++i) {
    new_moves.push_back(move);
  }
  moves_ = new_moves;
  int_ = decltype(int_)(0, moves_.size() - 1);

  return *this;
}

Search::result_type Search::run(const Cfg& target, const Cfg& rewrite, CostFunction& fxn) {
  // Make sure target is correct with respect to itself
  assert(fxn(target).first);
  // Make sure target and rewrite are sound to begin with
  assert(target.is_sound());
  assert(rewrite.is_sound());

  // Progress callback variables
  auto current = rewrite;
  auto current_cost = fxn(current, CostFunction::max_cost - 1).second;
  auto best_yet = current;
  auto best_yet_cost = current_cost;
  auto best_correct = target;
  auto best_correct_cost = fxn(target, CostFunction::max_cost - 1).second;
  auto success = false;

  // Statistics callback variables
  vector<Statistics> statistics((size_t) Move::NUM_MOVES);
  size_t iterations = 0;
  const auto start = chrono::steady_clock::now();

  if (!moves_.empty()) {
    for (; (iterations < timeout_) && (current_cost > 0) && !give_up_now; ++iterations) {
      if ((statistics_cb_ != nullptr) && (iterations % interval_ == 0) && iterations > 0) {
        const auto dur = duration_cast<duration<double>>(steady_clock::now() - start);
        statistics_cb_({statistics, iterations, dur}, statistics_cb_arg_);
      }

      // @todo Check cost function hasn't changed across iterations

      const auto move_type = moves_[int_(gen_)];
      statistics[(size_t) move_type].num_proposed++;

      if (!transforms_->modify(current, move_type)) {
        continue;
      }
      statistics[(size_t) move_type].num_succeeded++;

      const auto p = prob_(gen_);
      const auto max = current_cost - (log(p) / beta_);

      const auto new_res = fxn(current, max + 1);
      const auto is_correct = new_res.first;
      const auto new_cost = new_res.second;

      // @todo Check that cost function hasnt' changed within an iteration

      if (new_cost > max) {
        transforms_->undo(current, move_type);
        continue;
      }
      statistics[(size_t) move_type].num_accepted++;
      current_cost = new_cost;

      const auto new_best_yet = new_cost < best_yet_cost;
      const auto new_best_correct_yet = is_correct && (new_cost < best_correct_cost);
      if (new_best_yet) {
        best_yet = current;
        best_yet_cost = new_cost;
      }
      if (new_best_correct_yet) {
        success = true;
        best_correct = current;
        best_correct_cost = new_cost;
      }
      if ((progress_cb_ != nullptr) && (new_best_yet || new_best_correct_yet)) {
        progress_cb_({current, current_cost, best_yet, best_yet_cost, best_correct,
                      best_correct_cost, success
                     }, progress_cb_arg_);
      }
    }
  }

  current = best_correct;
  if (progress_cb_ != nullptr) {
    progress_cb_({current, current_cost, best_yet, best_yet_cost, best_correct,
                  best_correct_cost, success
                 }, progress_cb_arg_);
  }
  if (statistics_cb_ != nullptr)  {
    const auto dur = duration_cast<duration<double>>(steady_clock::now() - start);
    statistics_cb_({statistics, iterations, dur}, statistics_cb_arg_);
  }

  return result_type(current, success);
}

} // namespace stoke
