  .text
  .globl _ZNSsaSEc
  .type _ZNSsaSEc, @function

#! file-offset 0x48880
#! rip-offset  0x48880
#! capacity    96 bytes

# Text                               #  Line  RIP      Bytes  
._ZNSsaSEc:                          #        0x48880  0      
  pushq %rbx                         #  1     0x48880  2      
  movl %edi, %ebx                    #  2     0x48882  2      
  movsbl %sil, %r8d                  #  3     0x48884  4      
  movl %ebx, %ebx                    #  4     0x48888  2      
  movl (%r15,%rbx,1), %eax           #  5     0x4888a  4      
  movl %ebx, %edi                    #  6     0x4888e  2      
  movl $0x1, %ecx                    #  7     0x48890  5      
  xorl %esi, %esi                    #  8     0x48895  2      
  subl $0xc, %eax                    #  9     0x48897  3      
  movl %eax, %eax                    #  10    0x4889a  2      
  movl (%r15,%rax,1), %edx           #  11    0x4889c  4      
  nop                                #  12    0x488a0  1      
  nop                                #  13    0x488a1  1      
  nop                                #  14    0x488a2  1      
  callq ._ZNSs14_M_replace_auxEjjjc  #  15    0x488a3  5      
  movl %ebx, %eax                    #  16    0x488a8  2      
  popq %rbx                          #  17    0x488aa  2      
  popq %r11                          #  18    0x488ac  3      
  andl $0xffffffe0, %r11d            #  19    0x488af  7      
  addq %r15, %r11                    #  20    0x488b6  3      
  jmpq %r11                          #  21    0x488b9  3      
  nop                                #  22    0x488bc  1      
  nop                                #  23    0x488bd  1      
  nop                                #  24    0x488be  1      
  nop                                #  25    0x488bf  1      
  nop                                #  26    0x488c0  1      
  nop                                #  27    0x488c1  1      
  nop                                #  28    0x488c2  1      
  nop                                #  29    0x488c3  1      
  nop                                #  30    0x488c4  1      
  nop                                #  31    0x488c5  1      
  nop                                #  32    0x488c6  1      
  nop                                #  33    0x488c7  1      
  nop                                #  34    0x488c8  1      
  nop                                #  35    0x488c9  1      
  nop                                #  36    0x488ca  1      
  nop                                #  37    0x488cb  1      
  nop                                #  38    0x488cc  1      
                                                              
.size _ZNSsaSEc, .-_ZNSsaSEc

