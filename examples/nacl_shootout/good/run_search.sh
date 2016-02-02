#!/bin/bash

stoke search \
  --init target \
  --target target.s \
  --cost "1000000*correctness + 25*(nacl2)*(nacl2 > 5) + nacl2*(nacl2 <= 5) + measured" \
  --correctness "correctness+nacl2 == 0" \
  --live_out "{ %rax }" \
  --stack_out \
  --heap_out \
  --restricted_reg_penalty 100 \
  --bad_instruction_penalty 100 \
  --max_jumps 10000 \
  --testcases bounded_tcs \
  --strategy "bounded,ddec" \
  --sound_nullspace \
  --bound 2 \
  --alias_strategy "string" \
  --add_nops_mass 1 \
  --delete_mass 1 \
  -o notcs_verified.s \
  --postprocessing nacl \
  --cpu_flags "{ }" \
  --opc_blacklist "{ prefetch* cmc stc clc lfence leaveq mfence sfence cbtw clt* cld crc32* cwt*  pause imul* emms set* cmpxchg* crc32* adc* sbb* xchg* idiv* xadd* rol* rcl* ror* rcr* bswap div* ver* bsr* bsf* mul* btr* bts* bt* cmp* test* j* ud2 cqt* shrd* }" \
  --opc_whitelist "{ }" \
  --cycle_timeout 100000 \
  --failed_verification_action add_counterexample \
  --validator_must_support \
  --preserve_regs "{ %rbx %rsp %rbp %r12 %r13 %r14 %r15 %xmm0 %xmm1 %xmm2 %xmm3 %xmm4 %xmm5 %xmm6 %xmm7 %xmm8 %xmm9 %xmm10 %xmm11 %xmm12 %xmm13 %xmm14 %xmm15 }" \
  --mem_ops "{ (%r15,%rdi,1) (%r15,%rsi,1) 0x4(%r15,%rdi,1) 0x4(%r15,%rsi,1) -0x4(%r15,%rsi,1) -0x4(%r15,%rdi,1) 0x1(%r15,%rdi,1) -0x1(%r15,%rdi,1) 0x1(%r15,%rsi,1) -0x1(%r15,%rsi,1) }"
