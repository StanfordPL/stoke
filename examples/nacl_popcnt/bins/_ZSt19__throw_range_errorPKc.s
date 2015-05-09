  .text
  .globl _ZSt19__throw_range_errorPKc
  .type _ZSt19__throw_range_errorPKc, @function

#! file-offset 0x4d480
#! rip-offset  0x4d480
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt19__throw_range_errorPKc:           #        0x4d480  0      
  pushq %r12                             #  1     0x4d480  3      
  movl %edi, %esi                        #  2     0x4d483  2      
  pushq %rbx                             #  3     0x4d485  2      
  subl $0x28, %esp                       #  4     0x4d487  3      
  addq %r15, %rsp                        #  5     0x4d48a  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d48d  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d491  4      
  movl %ebx, %edi                        #  8     0x4d495  2      
  nop                                    #  9     0x4d497  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d498  5      
  movl $0x8, %edi                        #  11    0x4d49d  5      
  nop                                    #  12    0x4d4a2  1      
  nop                                    #  13    0x4d4a3  1      
  callq .__cxa_allocate_exception        #  14    0x4d4a4  5      
  movl %eax, %r12d                       #  15    0x4d4a9  3      
  movl %ebx, %esi                        #  16    0x4d4ac  2      
  movl %r12d, %edi                       #  17    0x4d4ae  3      
  nop                                    #  18    0x4d4b1  1      
  nop                                    #  19    0x4d4b2  1      
  callq ._ZNSt11range_errorC1ERKSs       #  20    0x4d4b3  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d4b8  4      
  subl $0xc, %edi                        #  22    0x4d4bc  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d4bf  6      
  jne .L_4d520                           #  24    0x4d4c5  6      
  xchgw %ax, %ax                         #  25    0x4d4cb  3      
  nop                                    #  26    0x4d4ce  1      
.L_4d500:                                #        0x4d4cf  0      
  movl $0x4cc40, %edx                    #  27    0x4d4cf  5      
  movl $0x10021004, %esi                 #  28    0x4d4d4  5      
  movl %r12d, %edi                       #  29    0x4d4d9  3      
  nop                                    #  30    0x4d4dc  1      
  callq .__cxa_throw                     #  31    0x4d4dd  5      
.L_4d520:                                #        0x4d4e2  0      
  movl %edi, %edi                        #  32    0x4d4e2  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d4e4  5      
  leal -0x1(%rax), %edx                  #  34    0x4d4e9  3      
  testl %eax, %eax                       #  35    0x4d4ec  2      
  movl %edi, %edi                        #  36    0x4d4ee  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d4f0  5      
  jg .L_4d500                            #  38    0x4d4f5  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d4fb  4      
  xchgw %ax, %ax                         #  40    0x4d4ff  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d502  5      
  jmpq .L_4d500                          #  42    0x4d507  5      
  nop                                    #  43    0x4d50c  1      
  nop                                    #  44    0x4d50d  1      
  movl %r12d, %edi                       #  45    0x4d50e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d511  4      
  nop                                    #  47    0x4d515  1      
  nop                                    #  48    0x4d516  1      
  callq .__cxa_free_exception            #  49    0x4d517  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d51c  4      
  movl %ebx, %edi                        #  51    0x4d520  2      
  movl %eax, %r12d                       #  52    0x4d522  3      
  nop                                    #  53    0x4d525  1      
  nop                                    #  54    0x4d526  1      
  callq ._ZNSsD1Ev                       #  55    0x4d527  5      
  movl %r12d, %eax                       #  56    0x4d52c  3      
  nop                                    #  57    0x4d52f  1      
  nop                                    #  58    0x4d530  1      
.L_4d5c0:                                #        0x4d531  0      
  movl %eax, %edi                        #  59    0x4d531  2      
  nop                                    #  60    0x4d533  1      
  nop                                    #  61    0x4d534  1      
  callq ._Unwind_Resume                  #  62    0x4d535  5      
  jmpq .L_4d5c0                          #  63    0x4d53a  5      
  nop                                    #  64    0x4d53f  1      
  nop                                    #  65    0x4d540  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d541  4      
  jne .L_4d5c0                           #  67    0x4d545  6      
  nop                                    #  68    0x4d54b  1      
  nop                                    #  69    0x4d54c  1      
  callq ._ZSt9terminatev                 #  70    0x4d54d  5      
                                                                  
.size _ZSt19__throw_range_errorPKc, .-_ZSt19__throw_range_errorPKc

