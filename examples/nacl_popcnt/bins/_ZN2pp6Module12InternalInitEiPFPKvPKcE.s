  .text
  .globl _ZN2pp6Module12InternalInitEiPFPKvPKcE
  .type _ZN2pp6Module12InternalInitEiPFPKvPKcE, @function

#! file-offset 0x243c0
#! rip-offset  0x243c0
#! capacity    192 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp6Module12InternalInitEiPFPKvPKcE:         #        0x243c0  0      
  pushq %r12                                     #  1     0x243c0  3      
  pushq %rbx                                     #  2     0x243c3  2      
  movl %edi, %ebx                                #  3     0x243c5  2      
  movl %ebx, %edi                                #  4     0x243c7  2      
  subl $0x8, %esp                                #  5     0x243c9  3      
  addq %r15, %rsp                                #  6     0x243cc  3      
  movl %ebx, %ebx                                #  7     0x243cf  2      
  movl %esi, 0x1c(%r15,%rbx,1)                   #  8     0x243d1  5      
  movl %ebx, %ebx                                #  9     0x243d6  2      
  movl %edx, 0x20(%r15,%rbx,1)                   #  10    0x243d8  5      
  movl $0x10020364, %esi                         #  11    0x243dd  5      
  nop                                            #  12    0x243e2  1      
  nop                                            #  13    0x243e3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  14    0x243e4  5      
  movl %eax, %r12d                               #  15    0x243e9  3      
  testq %r12, %r12                               #  16    0x243ec  3      
  je .L_24460                                    #  17    0x243ef  6      
  movl $0x4, %edi                                #  18    0x243f5  5      
  nop                                            #  19    0x243fa  1      
  callq ._Znwj                                   #  20    0x243fb  5      
  movl %eax, %eax                                #  21    0x24400  2      
  movl %ebx, %edi                                #  22    0x24402  2      
  movl %eax, %eax                                #  23    0x24404  2      
  movl %r12d, (%r15,%rax,1)                      #  24    0x24406  4      
  movl %ebx, %ebx                                #  25    0x2440a  2      
  movl %eax, 0x24(%r15,%rbx,1)                   #  26    0x2440c  5      
  movl %ebx, %ebx                                #  27    0x24411  2      
  movl (%r15,%rbx,1), %eax                       #  28    0x24413  4      
  movl %eax, %eax                                #  29    0x24417  2      
  movl 0x8(%r15,%rax,1), %eax                    #  30    0x24419  5      
  xchgw %ax, %ax                                 #  31    0x2441e  3      
  addl $0x8, %esp                                #  32    0x24421  3      
  addq %r15, %rsp                                #  33    0x24424  3      
  popq %rbx                                      #  34    0x24427  2      
  popq %r12                                      #  35    0x24429  3      
  andl $0xffffffe0, %eax                         #  36    0x2442c  5      
  addq %r15, %rax                                #  37    0x24431  3      
  jmpq %rax                                      #  38    0x24434  2      
  nop                                            #  39    0x24436  1      
.L_24460:                                        #        0x24437  0      
  addl $0x8, %esp                                #  40    0x24437  3      
  addq %r15, %rsp                                #  41    0x2443a  3      
  xorl %eax, %eax                                #  42    0x2443d  2      
  popq %rbx                                      #  43    0x2443f  2      
  popq %r12                                      #  44    0x24441  3      
  popq %r11                                      #  45    0x24444  3      
  andl $0xffffffe0, %r11d                        #  46    0x24447  7      
  addq %r15, %r11                                #  47    0x2444e  3      
  jmpq %r11                                      #  48    0x24451  3      
  nop                                            #  49    0x24454  1      
                                                                          
.size _ZN2pp6Module12InternalInitEiPFPKvPKcE, .-_ZN2pp6Module12InternalInitEiPFPKvPKcE

