  .text
  .globl _ZN2pp6Module12InternalInitEiPFPKvPKcE
  .type _ZN2pp6Module12InternalInitEiPFPKvPKcE, @function

#! file-offset 0x243a0
#! rip-offset  0x243a0
#! capacity    192 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp6Module12InternalInitEiPFPKvPKcE:         #        0x243a0  0      
  pushq %r12                                     #  1     0x243a0  3      
  pushq %rbx                                     #  2     0x243a3  2      
  movl %edi, %ebx                                #  3     0x243a5  2      
  movl %ebx, %edi                                #  4     0x243a7  2      
  subl $0x8, %esp                                #  5     0x243a9  3      
  addq %r15, %rsp                                #  6     0x243ac  3      
  movl %ebx, %ebx                                #  7     0x243af  2      
  movl %esi, 0x1c(%r15,%rbx,1)                   #  8     0x243b1  5      
  movl %ebx, %ebx                                #  9     0x243b6  2      
  movl %edx, 0x20(%r15,%rbx,1)                   #  10    0x243b8  5      
  movl $0x10020364, %esi                         #  11    0x243bd  5      
  nop                                            #  12    0x243c2  1      
  nop                                            #  13    0x243c3  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  14    0x243c4  5      
  movl %eax, %r12d                               #  15    0x243c9  3      
  testq %r12, %r12                               #  16    0x243cc  3      
  je .L_24440                                    #  17    0x243cf  6      
  movl $0x4, %edi                                #  18    0x243d5  5      
  nop                                            #  19    0x243da  1      
  callq ._Znwj                                   #  20    0x243db  5      
  movl %eax, %eax                                #  21    0x243e0  2      
  movl %ebx, %edi                                #  22    0x243e2  2      
  movl %eax, %eax                                #  23    0x243e4  2      
  movl %r12d, (%r15,%rax,1)                      #  24    0x243e6  4      
  movl %ebx, %ebx                                #  25    0x243ea  2      
  movl %eax, 0x24(%r15,%rbx,1)                   #  26    0x243ec  5      
  movl %ebx, %ebx                                #  27    0x243f1  2      
  movl (%r15,%rbx,1), %eax                       #  28    0x243f3  4      
  movl %eax, %eax                                #  29    0x243f7  2      
  movl 0x8(%r15,%rax,1), %eax                    #  30    0x243f9  5      
  xchgw %ax, %ax                                 #  31    0x243fe  3      
  addl $0x8, %esp                                #  32    0x24401  3      
  addq %r15, %rsp                                #  33    0x24404  3      
  popq %rbx                                      #  34    0x24407  2      
  popq %r12                                      #  35    0x24409  3      
  andl $0xffffffe0, %eax                         #  36    0x2440c  5      
  addq %r15, %rax                                #  37    0x24411  3      
  jmpq %rax                                      #  38    0x24414  2      
  nop                                            #  39    0x24416  1      
.L_24440:                                        #        0x24417  0      
  addl $0x8, %esp                                #  40    0x24417  3      
  addq %r15, %rsp                                #  41    0x2441a  3      
  xorl %eax, %eax                                #  42    0x2441d  2      
  popq %rbx                                      #  43    0x2441f  2      
  popq %r12                                      #  44    0x24421  3      
  popq %r11                                      #  45    0x24424  3      
  andl $0xffffffe0, %r11d                        #  46    0x24427  7      
  addq %r15, %r11                                #  47    0x2442e  3      
  jmpq %r11                                      #  48    0x24431  3      
  nop                                            #  49    0x24434  1      
                                                                          
.size _ZN2pp6Module12InternalInitEiPFPKvPKcE, .-_ZN2pp6Module12InternalInitEiPFPKvPKcE

