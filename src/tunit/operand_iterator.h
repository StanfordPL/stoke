// Copyright 2013-2015 Stanford University
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef STOKE_SRC_TUNIT_OPERAND_ITERATOR_H
#define STOKE_SRC_TUNIT_OPERAND_ITERATOR_H

#include <cassert>

#include "src/ext/x64asm/include/x64asm.h"

namespace stoke {

template <typename T, typename Fxn>
class operand_iterator {
  friend class TUnit;

public:
	const T& operator*() const {
		return code_->at(instr_).get_operand<T>(operand_);
  }
	const T* operator->() const {
		return &code_->at(instr_).get_operand<T>(operand_);
	}

  bool operator==(const operand_iterator& rhs) const {
		return code_ == rhs.code_ && instr_ == rhs.instr_ && operand_ == rhs.operand_;
  }
  bool operator!=(const operand_iterator& rhs) const {
		return !(*this == rhs);
  }

  operand_iterator& operator++() {
		operand_++;
		for (; instr_ < code_->size(); ++instr_) {
			for (; operand_ < code_->at(instr_).arity(); ++operand_) {
				if (Fxn()(code_, instr_, operand_)) {
					return *this;
				}
			}
			operand_ = 0;
		}
		return *this;
  }

private:
	const x64asm::Code* code_;
	size_t instr_;
	size_t operand_;

  operand_iterator(const x64asm::Code* code, bool begin) : code_(code) {
		instr_ = begin ? 0 : code_->size();
		operand_ = 0;
		if (begin && !Fxn()(code_, instr_, operand_)) {
			++(*this);
		}
	}
};

struct is_call_target {
	bool operator()(const x64asm::Code* code, size_t instr, size_t operand) const {
		return code->at(instr).is_call() && operand == 0;
	}
};

typedef operand_iterator<x64asm::Label, is_call_target> call_target_iterator;

struct is_imm {
	bool operator()(const x64asm::Code* code, size_t instr, size_t operand) const {
		switch (code->at(instr).type(operand)) {
			case x64asm::Type::IMM_8:
			case x64asm::Type::IMM_16:
			case x64asm::Type::IMM_32:
			case x64asm::Type::IMM_64:
			case x64asm::Type::ZERO:
			case x64asm::Type::ONE:
			case x64asm::Type::THREE:
				return true;
			default:
				return false;
		}
	}
};

typedef operand_iterator<x64asm::Imm64, is_imm> imm_iterator;

struct is_mem {
	bool operator()(const x64asm::Code* code, size_t instr, size_t operand) const {
		if (!code->at(instr).is_explicit_memory_dereference()) {
			return false;
		}
		const auto mi = code->at(instr).mem_index();
		return !code->at(instr).get_operand<x64asm::M8>(mi).rip_offset();
	}
};

typedef operand_iterator<x64asm::M8, is_mem> mem_iterator;

} // namespace stoke

#endif
