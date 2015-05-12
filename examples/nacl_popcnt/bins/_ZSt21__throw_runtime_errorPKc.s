  .text
  .globl _ZSt21__throw_runtime_errorPKc
  .type _ZSt21__throw_runtime_errorPKc, @function

#! file-offset 0x4d640
#! rip-offset  0x4d640
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt21__throw_runtime_errorPKc:         #        0x4d640  0      
  pushq %r12                             #  1     0x4d640  3      
  movl %edi, %esi                        #  2     0x4d643  2      
  pushq %rbx                             #  3     0x4d645  2      
  subl $0x28, %esp                       #  4     0x4d647  3      
  addq %r15, %rsp                        #  5     0x4d64a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d64d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d651  4      
  movl %ebx, %edi                        #  8     0x4d655  2      
  nop                                    #  9     0x4d657  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d658  5      
  movl $0x8, %edi                        #  11    0x4d65d  5      
  nop                                    #  12    0x4d662  1      
  nop                                    #  13    0x4d663  1      
  callq .__cxa_allocate_exception        #  14    0x4d664  5      
  movl %eax, %r12d                       #  15    0x4d669  3      
  movl %ebx, %esi                        #  16    0x4d66c  2      
  movl %r12d, %edi                       #  17    0x4d66e  3      
  nop                                    #  18    0x4d671  1      
  nop                                    #  19    0x4d672  1      
  callq ._ZNSt13runtime_errorC1ERKSs     #  20    0x4d673  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d678  4      
  subl $0xc, %edi                        #  22    0x4d67c  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d67f  6      
  jne .L_4d6e0                           #  24    0x4d685  6      
  xchgw %ax, %ax                         #  25    0x4d68b  3      
  nop                                    #  26    0x4d68e  1      
.L_4d6c0:                                #        0x4d68f  0      
  movl $0x4eb20, %edx                    #  27    0x4d68f  5      
  movl $0x100211e4, %esi                 #  28    0x4d694  5      
  movl %r12d, %edi                       #  29    0x4d699  3      
  nop                                    #  30    0x4d69c  1      
  callq .__cxa_throw                     #  31    0x4d69d  5      
.L_4d6e0:                                #        0x4d6a2  0      
  movl %edi, %edi                        #  32    0x4d6a2  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d6a4  5      
  leal -0x1(%rax), %edx                  #  34    0x4d6a9  3      
  testl %eax, %eax                       #  35    0x4d6ac  2      
  movl %edi, %edi                        #  36    0x4d6ae  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d6b0  5      
  jg .L_4d6c0                            #  38    0x4d6b5  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d6bb  4      
  xchgw %ax, %ax                         #  40    0x4d6bf  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d6c2  5      
  jmpq .L_4d6c0                          #  42    0x4d6c7  5      
  nop                                    #  43    0x4d6cc  1      
  nop                                    #  44    0x4d6cd  1      
  movl %r12d, %edi                       #  45    0x4d6ce  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d6d1  4      
  nop                                    #  47    0x4d6d5  1      
  nop                                    #  48    0x4d6d6  1      
  callq .__cxa_free_exception            #  49    0x4d6d7  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d6dc  4      
  movl %ebx, %edi                        #  51    0x4d6e0  2      
  movl %eax, %r12d                       #  52    0x4d6e2  3      
  nop                                    #  53    0x4d6e5  1      
  nop                                    #  54    0x4d6e6  1      
  callq ._ZNSsD1Ev                       #  55    0x4d6e7  5      
  movl %r12d, %eax                       #  56    0x4d6ec  3      
  nop                                    #  57    0x4d6ef  1      
  nop                                    #  58    0x4d6f0  1      
.L_4d780:                                #        0x4d6f1  0      
  movl %eax, %edi                        #  59    0x4d6f1  2      
  nop                                    #  60    0x4d6f3  1      
  nop                                    #  61    0x4d6f4  1      
  callq ._Unwind_Resume                  #  62    0x4d6f5  5      
  jmpq .L_4d780                          #  63    0x4d6fa  5      
  nop                                    #  64    0x4d6ff  1      
  nop                                    #  65    0x4d700  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d701  4      
  jne .L_4d780                           #  67    0x4d705  6      
  nop                                    #  68    0x4d70b  1      
  nop                                    #  69    0x4d70c  1      
  callq ._ZSt9terminatev                 #  70    0x4d70d  5      
                                                                  
.size _ZSt21__throw_runtime_errorPKc, .-_ZSt21__throw_runtime_errorPKc

