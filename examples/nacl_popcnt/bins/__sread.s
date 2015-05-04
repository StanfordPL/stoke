  .text
  .globl __sread
  .type __sread, @function

#! file-offset 0x801e0
#! rip-offset  0x801e0
#! capacity    96 bytes

# Text                            #  Line  RIP      Bytes  
.__sread:                         #        0x801e0  0      
  pushq %rbx                      #  1     0x801e0  2      
  movl %esi, %ebx                 #  2     0x801e2  2      
  movl %edx, %esi                 #  3     0x801e4  2      
  movl %ebx, %ebx                 #  4     0x801e6  2      
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x801e8  6      
  movl %ecx, %edx                 #  6     0x801ee  2      
  nop                             #  7     0x801f0  1      
  callq .read                     #  8     0x801f1  5      
  testl %eax, %eax                #  9     0x801f6  2      
  js .L_80220                     #  10    0x801f8  6      
  movslq %eax, %rdx               #  11    0x801fe  3      
  movl %ebx, %ebx                 #  12    0x80201  2      
  addq %rdx, 0x50(%r15,%rbx,1)    #  13    0x80203  5      
  popq %rbx                       #  14    0x80208  2      
  popq %r11                       #  15    0x8020a  3      
  andl $0xffffffe0, %r11d         #  16    0x8020d  7      
  addq %r15, %r11                 #  17    0x80214  3      
  jmpq %r11                       #  18    0x80217  3      
  nop                             #  19    0x8021a  1      
.L_80220:                         #        0x8021b  0      
  movl %ebx, %ebx                 #  20    0x8021b  2      
  andw $0xefff, 0xc(%r15,%rbx,1)  #  21    0x8021d  8      
  popq %rbx                       #  22    0x80225  2      
  popq %r11                       #  23    0x80227  3      
  andl $0xffffffe0, %r11d         #  24    0x8022a  7      
  addq %r15, %r11                 #  25    0x80231  3      
  jmpq %r11                       #  26    0x80234  3      
  nop                             #  27    0x80237  1      
  nop                             #  28    0x80238  1      
  nop                             #  29    0x80239  1      
  nop                             #  30    0x8023a  1      
  nop                             #  31    0x8023b  1      
  nop                             #  32    0x8023c  1      
  nop                             #  33    0x8023d  1      
  nop                             #  34    0x8023e  1      
  nop                             #  35    0x8023f  1      
                                                           
.size __sread, .-__sread

