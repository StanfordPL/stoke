  .text
  .globl _ZSt21__throw_runtime_errorPKc
  .type _ZSt21__throw_runtime_errorPKc, @function

#! file-offset 0x4d620
#! rip-offset  0x4d620
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt21__throw_runtime_errorPKc:         #        0x4d620  0      
  pushq %r12                             #  1     0x4d620  3      
  movl %edi, %esi                        #  2     0x4d623  2      
  pushq %rbx                             #  3     0x4d625  2      
  subl $0x28, %esp                       #  4     0x4d627  3      
  addq %r15, %rsp                        #  5     0x4d62a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d62d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d631  4      
  movl %ebx, %edi                        #  8     0x4d635  2      
  nop                                    #  9     0x4d637  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d638  5      
  movl $0x8, %edi                        #  11    0x4d63d  5      
  nop                                    #  12    0x4d642  1      
  nop                                    #  13    0x4d643  1      
  callq .__cxa_allocate_exception        #  14    0x4d644  5      
  movl %eax, %r12d                       #  15    0x4d649  3      
  movl %ebx, %esi                        #  16    0x4d64c  2      
  movl %r12d, %edi                       #  17    0x4d64e  3      
  nop                                    #  18    0x4d651  1      
  nop                                    #  19    0x4d652  1      
  callq ._ZNSt13runtime_errorC1ERKSs     #  20    0x4d653  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d658  4      
  subl $0xc, %edi                        #  22    0x4d65c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d65f  6      
  jne .L_4d6c0                           #  24    0x4d665  6      
  xchgw %ax, %ax                         #  25    0x4d66b  3      
  nop                                    #  26    0x4d66e  1      
.L_4d6a0:                                #        0x4d66f  0      
  movl $0x4eb00, %edx                    #  27    0x4d66f  5      
  movl $0x100211e4, %esi                 #  28    0x4d674  5      
  movl %r12d, %edi                       #  29    0x4d679  3      
  nop                                    #  30    0x4d67c  1      
  callq .__cxa_throw                     #  31    0x4d67d  5      
.L_4d6c0:                                #        0x4d682  0      
  movl %edi, %edi                        #  32    0x4d682  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d684  5      
  leal -0x1(%rax), %edx                  #  34    0x4d689  3      
  testl %eax, %eax                       #  35    0x4d68c  2      
  movl %edi, %edi                        #  36    0x4d68e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d690  5      
  jg .L_4d6a0                            #  38    0x4d695  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d69b  4      
  xchgw %ax, %ax                         #  40    0x4d69f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d6a2  5      
  jmpq .L_4d6a0                          #  42    0x4d6a7  5      
  nop                                    #  43    0x4d6ac  1      
  nop                                    #  44    0x4d6ad  1      
  movl %r12d, %edi                       #  45    0x4d6ae  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d6b1  4      
  nop                                    #  47    0x4d6b5  1      
  nop                                    #  48    0x4d6b6  1      
  callq .__cxa_free_exception            #  49    0x4d6b7  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d6bc  4      
  movl %ebx, %edi                        #  51    0x4d6c0  2      
  movl %eax, %r12d                       #  52    0x4d6c2  3      
  nop                                    #  53    0x4d6c5  1      
  nop                                    #  54    0x4d6c6  1      
  callq ._ZNSsD1Ev                       #  55    0x4d6c7  5      
  movl %r12d, %eax                       #  56    0x4d6cc  3      
  nop                                    #  57    0x4d6cf  1      
  nop                                    #  58    0x4d6d0  1      
.L_4d760:                                #        0x4d6d1  0      
  movl %eax, %edi                        #  59    0x4d6d1  2      
  nop                                    #  60    0x4d6d3  1      
  nop                                    #  61    0x4d6d4  1      
  callq ._Unwind_Resume                  #  62    0x4d6d5  5      
  jmpq .L_4d760                          #  63    0x4d6da  5      
  nop                                    #  64    0x4d6df  1      
  nop                                    #  65    0x4d6e0  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d6e1  4      
  jne .L_4d760                           #  67    0x4d6e5  6      
  nop                                    #  68    0x4d6eb  1      
  nop                                    #  69    0x4d6ec  1      
  callq ._ZSt9terminatev                 #  70    0x4d6ed  5      
                                                                  
.size _ZSt21__throw_runtime_errorPKc, .-_ZSt21__throw_runtime_errorPKc

