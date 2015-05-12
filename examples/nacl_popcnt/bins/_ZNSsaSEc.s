  .text
  .globl _ZNSsaSEc
  .type _ZNSsaSEc, @function

#! file-offset 0x48800
#! rip-offset  0x48800
#! capacity    96 bytes

# Text                               #  Line  RIP      Bytes  
._ZNSsaSEc:                          #        0x48800  0      
  pushq %rbx                         #  1     0x48800  2      
  movl %edi, %ebx                    #  2     0x48802  2      
  movsbl %sil, %r8d                  #  3     0x48804  4      
  movl %ebx, %ebx                    #  4     0x48808  2      
  movl (%r15,%rbx,1), %eax           #  5     0x4880a  4      
  movl %ebx, %edi                    #  6     0x4880e  2      
  movl $0x1, %ecx                    #  7     0x48810  5      
  xorl %esi, %esi                    #  8     0x48815  2      
  subl $0xc, %eax                    #  9     0x48817  3      
  movl %eax, %eax                    #  10    0x4881a  2      
  movl (%r15,%rax,1), %edx           #  11    0x4881c  4      
  nop                                #  12    0x48820  1      
  nop                                #  13    0x48821  1      
  nop                                #  14    0x48822  1      
  callq ._ZNSs14_M_replace_auxEjjjc  #  15    0x48823  5      
  movl %ebx, %eax                    #  16    0x48828  2      
  popq %rbx                          #  17    0x4882a  2      
  popq %r11                          #  18    0x4882c  3      
  andl $0xffffffe0, %r11d            #  19    0x4882f  7      
  addq %r15, %r11                    #  20    0x48836  3      
  jmpq %r11                          #  21    0x48839  3      
  nop                                #  22    0x4883c  1      
  nop                                #  23    0x4883d  1      
  nop                                #  24    0x4883e  1      
  nop                                #  25    0x4883f  1      
  nop                                #  26    0x48840  1      
  nop                                #  27    0x48841  1      
  nop                                #  28    0x48842  1      
  nop                                #  29    0x48843  1      
  nop                                #  30    0x48844  1      
  nop                                #  31    0x48845  1      
  nop                                #  32    0x48846  1      
  nop                                #  33    0x48847  1      
  nop                                #  34    0x48848  1      
  nop                                #  35    0x48849  1      
  nop                                #  36    0x4884a  1      
  nop                                #  37    0x4884b  1      
  nop                                #  38    0x4884c  1      
                                                              
.size _ZNSsaSEc, .-_ZNSsaSEc

