  .text
  .globl _ZNSt11logic_errorD0Ev
  .type _ZNSt11logic_errorD0Ev, @function

#! file-offset 0x4ec80
#! rip-offset  0x4ec80
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt11logic_errorD0Ev:                 #        0x4ec80  0      
  pushq %rbx                             #  1     0x4ec80  2      
  movl %edi, %ebx                        #  2     0x4ec82  2      
  subl $0x10, %esp                       #  3     0x4ec84  3      
  addq %r15, %rsp                        #  4     0x4ec87  3      
  movl %ebx, %ebx                        #  5     0x4ec8a  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ec8c  5      
  movl %ebx, %ebx                        #  7     0x4ec91  2      
  movl $0x100211b8, (%r15,%rbx,1)        #  8     0x4ec93  8      
  subl $0xc, %edi                        #  9     0x4ec9b  3      
  nop                                    #  10    0x4ec9e  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ec9f  6      
  jne .L_4ed20                           #  12    0x4eca5  6      
  nop                                    #  13    0x4ecab  1      
  nop                                    #  14    0x4ecac  1      
.L_4ecc0:                                #        0x4ecad  0      
  movl %ebx, %edi                        #  15    0x4ecad  2      
  nop                                    #  16    0x4ecaf  1      
  nop                                    #  17    0x4ecb0  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ecb1  5      
  movl %ebx, %edi                        #  19    0x4ecb6  2      
  nop                                    #  20    0x4ecb8  1      
  nop                                    #  21    0x4ecb9  1      
  callq ._ZdlPv                          #  22    0x4ecba  5      
  addl $0x10, %esp                       #  23    0x4ecbf  3      
  addq %r15, %rsp                        #  24    0x4ecc2  3      
  popq %rbx                              #  25    0x4ecc5  2      
  popq %r11                              #  26    0x4ecc7  3      
  andl $0xffffffe0, %r11d                #  27    0x4ecca  7      
  addq %r15, %r11                        #  28    0x4ecd1  3      
  jmpq %r11                              #  29    0x4ecd4  3      
  nop                                    #  30    0x4ecd7  1      
.L_4ed20:                                #        0x4ecd8  0      
  movl %edi, %edi                        #  31    0x4ecd8  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4ecda  5      
  leal -0x1(%rax), %edx                  #  33    0x4ecdf  3      
  testl %eax, %eax                       #  34    0x4ece2  2      
  movl %edi, %edi                        #  35    0x4ece4  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4ece6  5      
  jg .L_4ecc0                            #  37    0x4eceb  6      
  leal 0xf(%rsp), %esi                   #  38    0x4ecf1  4      
  xchgw %ax, %ax                         #  39    0x4ecf5  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4ecf8  5      
  jmpq .L_4ecc0                          #  41    0x4ecfd  5      
  nop                                    #  42    0x4ed02  1      
  nop                                    #  43    0x4ed03  1      
  nop                                    #  44    0x4ed04  1      
  nop                                    #  45    0x4ed05  1      
  nop                                    #  46    0x4ed06  1      
  nop                                    #  47    0x4ed07  1      
  nop                                    #  48    0x4ed08  1      
  nop                                    #  49    0x4ed09  1      
  nop                                    #  50    0x4ed0a  1      
  nop                                    #  51    0x4ed0b  1      
  nop                                    #  52    0x4ed0c  1      
  nop                                    #  53    0x4ed0d  1      
  nop                                    #  54    0x4ed0e  1      
  nop                                    #  55    0x4ed0f  1      
  nop                                    #  56    0x4ed10  1      
  nop                                    #  57    0x4ed11  1      
  nop                                    #  58    0x4ed12  1      
  nop                                    #  59    0x4ed13  1      
  nop                                    #  60    0x4ed14  1      
  nop                                    #  61    0x4ed15  1      
  nop                                    #  62    0x4ed16  1      
  nop                                    #  63    0x4ed17  1      
  nop                                    #  64    0x4ed18  1      
  nop                                    #  65    0x4ed19  1      
  nop                                    #  66    0x4ed1a  1      
  nop                                    #  67    0x4ed1b  1      
  nop                                    #  68    0x4ed1c  1      
                                                                  
.size _ZNSt11logic_errorD0Ev, .-_ZNSt11logic_errorD0Ev

