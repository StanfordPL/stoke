  .text
  .globl _ZSt19__throw_range_errorPKc
  .type _ZSt19__throw_range_errorPKc, @function

#! file-offset 0x4d4a0
#! rip-offset  0x4d4a0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZSt19__throw_range_errorPKc:           #        0x4d4a0  0      
  pushq %r12                             #  1     0x4d4a0  3      
  movl %edi, %esi                        #  2     0x4d4a3  2      
  pushq %rbx                             #  3     0x4d4a5  2      
  subl $0x28, %esp                       #  4     0x4d4a7  3      
  addq %r15, %rsp                        #  5     0x4d4aa  3      
  leal 0x10(%rsp), %ebx                  #  6     0x4d4ad  4      
  leal 0x1f(%rsp), %edx                  #  7     0x4d4b1  4      
  movl %ebx, %edi                        #  8     0x4d4b5  2      
  nop                                    #  9     0x4d4b7  1      
  callq ._ZNSsC1EPKcRKSaIcE              #  10    0x4d4b8  5      
  movl $0x8, %edi                        #  11    0x4d4bd  5      
  nop                                    #  12    0x4d4c2  1      
  nop                                    #  13    0x4d4c3  1      
  callq .__cxa_allocate_exception        #  14    0x4d4c4  5      
  movl %eax, %r12d                       #  15    0x4d4c9  3      
  movl %ebx, %esi                        #  16    0x4d4cc  2      
  movl %r12d, %edi                       #  17    0x4d4ce  3      
  nop                                    #  18    0x4d4d1  1      
  nop                                    #  19    0x4d4d2  1      
  callq ._ZNSt11range_errorC1ERKSs       #  20    0x4d4d3  5      
  movl 0x10(%rsp), %edi                  #  21    0x4d4d8  4      
  subl $0xc, %edi                        #  22    0x4d4dc  3      
  cmpl $0x10031da0, %edi                 #  23    0x4d4df  6      
  jne .L_4d540                           #  24    0x4d4e5  6      
  xchgw %ax, %ax                         #  25    0x4d4eb  3      
  nop                                    #  26    0x4d4ee  1      
.L_4d520:                                #        0x4d4ef  0      
  movl $0x4cc60, %edx                    #  27    0x4d4ef  5      
  movl $0x10021004, %esi                 #  28    0x4d4f4  5      
  movl %r12d, %edi                       #  29    0x4d4f9  3      
  nop                                    #  30    0x4d4fc  1      
  callq .__cxa_throw                     #  31    0x4d4fd  5      
.L_4d540:                                #        0x4d502  0      
  movl %edi, %edi                        #  32    0x4d502  2      
  movl 0x8(%r15,%rdi,1), %eax            #  33    0x4d504  5      
  leal -0x1(%rax), %edx                  #  34    0x4d509  3      
  testl %eax, %eax                       #  35    0x4d50c  2      
  movl %edi, %edi                        #  36    0x4d50e  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  37    0x4d510  5      
  jg .L_4d520                            #  38    0x4d515  6      
  leal 0x1e(%rsp), %esi                  #  39    0x4d51b  4      
  xchgw %ax, %ax                         #  40    0x4d51f  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  41    0x4d522  5      
  jmpq .L_4d520                          #  42    0x4d527  5      
  nop                                    #  43    0x4d52c  1      
  nop                                    #  44    0x4d52d  1      
  movl %r12d, %edi                       #  45    0x4d52e  3      
  movl %eax, 0x8(%rsp)                   #  46    0x4d531  4      
  nop                                    #  47    0x4d535  1      
  nop                                    #  48    0x4d536  1      
  callq .__cxa_free_exception            #  49    0x4d537  5      
  movl 0x8(%rsp), %eax                   #  50    0x4d53c  4      
  movl %ebx, %edi                        #  51    0x4d540  2      
  movl %eax, %r12d                       #  52    0x4d542  3      
  nop                                    #  53    0x4d545  1      
  nop                                    #  54    0x4d546  1      
  callq ._ZNSsD1Ev                       #  55    0x4d547  5      
  movl %r12d, %eax                       #  56    0x4d54c  3      
  nop                                    #  57    0x4d54f  1      
  nop                                    #  58    0x4d550  1      
.L_4d5e0:                                #        0x4d551  0      
  movl %eax, %edi                        #  59    0x4d551  2      
  nop                                    #  60    0x4d553  1      
  nop                                    #  61    0x4d554  1      
  callq ._Unwind_Resume                  #  62    0x4d555  5      
  jmpq .L_4d5e0                          #  63    0x4d55a  5      
  nop                                    #  64    0x4d55f  1      
  nop                                    #  65    0x4d560  1      
  cmpq $0xffffffffffffffff, %rdx         #  66    0x4d561  4      
  jne .L_4d5e0                           #  67    0x4d565  6      
  nop                                    #  68    0x4d56b  1      
  nop                                    #  69    0x4d56c  1      
  callq ._ZSt9terminatev                 #  70    0x4d56d  5      
                                                                  
.size _ZSt19__throw_range_errorPKc, .-_ZSt19__throw_range_errorPKc

