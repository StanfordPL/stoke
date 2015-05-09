  .text
  .globl _ZNSsaSEc
  .type _ZNSsaSEc, @function

#! file-offset 0x487e0
#! rip-offset  0x487e0
#! capacity    96 bytes

# Text                               #  Line  RIP      Bytes  
._ZNSsaSEc:                          #        0x487e0  0      
  pushq %rbx                         #  1     0x487e0  2      
  movl %edi, %ebx                    #  2     0x487e2  2      
  movsbl %sil, %r8d                  #  3     0x487e4  4      
  movl %ebx, %ebx                    #  4     0x487e8  2      
  movl (%r15,%rbx,1), %eax           #  5     0x487ea  4      
  movl %ebx, %edi                    #  6     0x487ee  2      
  movl $0x1, %ecx                    #  7     0x487f0  5      
  xorl %esi, %esi                    #  8     0x487f5  2      
  subl $0xc, %eax                    #  9     0x487f7  3      
  movl %eax, %eax                    #  10    0x487fa  2      
  movl (%r15,%rax,1), %edx           #  11    0x487fc  4      
  nop                                #  12    0x48800  1      
  nop                                #  13    0x48801  1      
  nop                                #  14    0x48802  1      
  callq ._ZNSs14_M_replace_auxEjjjc  #  15    0x48803  5      
  movl %ebx, %eax                    #  16    0x48808  2      
  popq %rbx                          #  17    0x4880a  2      
  popq %r11                          #  18    0x4880c  3      
  andl $0xffffffe0, %r11d            #  19    0x4880f  7      
  addq %r15, %r11                    #  20    0x48816  3      
  jmpq %r11                          #  21    0x48819  3      
  nop                                #  22    0x4881c  1      
  nop                                #  23    0x4881d  1      
  nop                                #  24    0x4881e  1      
  nop                                #  25    0x4881f  1      
  nop                                #  26    0x48820  1      
  nop                                #  27    0x48821  1      
  nop                                #  28    0x48822  1      
  nop                                #  29    0x48823  1      
  nop                                #  30    0x48824  1      
  nop                                #  31    0x48825  1      
  nop                                #  32    0x48826  1      
  nop                                #  33    0x48827  1      
  nop                                #  34    0x48828  1      
  nop                                #  35    0x48829  1      
  nop                                #  36    0x4882a  1      
  nop                                #  37    0x4882b  1      
  nop                                #  38    0x4882c  1      
                                                              
.size _ZNSsaSEc, .-_ZNSsaSEc

