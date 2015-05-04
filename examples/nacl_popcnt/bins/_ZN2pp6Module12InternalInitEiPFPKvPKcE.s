  .text
  .globl _ZN2pp6Module12InternalInitEiPFPKvPKcE
  .type _ZN2pp6Module12InternalInitEiPFPKvPKcE, @function

#! file-offset 0x24440
#! rip-offset  0x24440
#! capacity    192 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp6Module12InternalInitEiPFPKvPKcE:         #        0x24440  0      
  pushq %r12                                     #  1     0x24440  3      
  pushq %rbx                                     #  2     0x24443  2      
  movl %edi, %ebx                                #  3     0x24445  2      
  movl %ebx, %edi                                #  4     0x24447  2      
  subl $0x8, %esp                                #  5     0x24449  3      
  addq %r15, %rsp                                #  6     0x2444c  3      
  movl %ebx, %ebx                                #  7     0x2444f  2      
  movl %esi, 0x1c(%r15,%rbx,1)                   #  8     0x24451  5      
  movl %ebx, %ebx                                #  9     0x24456  2      
  movl %edx, 0x20(%r15,%rbx,1)                   #  10    0x24458  5      
  movl $0x10020364, %esi                         #  11    0x2445d  5      
  nop                                            #  12    0x24462  1      
  nop                                            #  13    0x24463  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  14    0x24464  5      
  movl %eax, %r12d                               #  15    0x24469  3      
  testq %r12, %r12                               #  16    0x2446c  3      
  je .L_244e0                                    #  17    0x2446f  6      
  movl $0x4, %edi                                #  18    0x24475  5      
  nop                                            #  19    0x2447a  1      
  callq ._Znwj                                   #  20    0x2447b  5      
  movl %eax, %eax                                #  21    0x24480  2      
  movl %ebx, %edi                                #  22    0x24482  2      
  movl %eax, %eax                                #  23    0x24484  2      
  movl %r12d, (%r15,%rax,1)                      #  24    0x24486  4      
  movl %ebx, %ebx                                #  25    0x2448a  2      
  movl %eax, 0x24(%r15,%rbx,1)                   #  26    0x2448c  5      
  movl %ebx, %ebx                                #  27    0x24491  2      
  movl (%r15,%rbx,1), %eax                       #  28    0x24493  4      
  movl %eax, %eax                                #  29    0x24497  2      
  movl 0x8(%r15,%rax,1), %eax                    #  30    0x24499  5      
  xchgw %ax, %ax                                 #  31    0x2449e  3      
  addl $0x8, %esp                                #  32    0x244a1  3      
  addq %r15, %rsp                                #  33    0x244a4  3      
  popq %rbx                                      #  34    0x244a7  2      
  popq %r12                                      #  35    0x244a9  3      
  andl $0xffffffe0, %eax                         #  36    0x244ac  5      
  addq %r15, %rax                                #  37    0x244b1  3      
  jmpq %rax                                      #  38    0x244b4  2      
  nop                                            #  39    0x244b6  1      
.L_244e0:                                        #        0x244b7  0      
  addl $0x8, %esp                                #  40    0x244b7  3      
  addq %r15, %rsp                                #  41    0x244ba  3      
  xorl %eax, %eax                                #  42    0x244bd  2      
  popq %rbx                                      #  43    0x244bf  2      
  popq %r12                                      #  44    0x244c1  3      
  popq %r11                                      #  45    0x244c4  3      
  andl $0xffffffe0, %r11d                        #  46    0x244c7  7      
  addq %r15, %r11                                #  47    0x244ce  3      
  jmpq %r11                                      #  48    0x244d1  3      
  nop                                            #  49    0x244d4  1      
                                                                          
.size _ZN2pp6Module12InternalInitEiPFPKvPKcE, .-_ZN2pp6Module12InternalInitEiPFPKvPKcE

