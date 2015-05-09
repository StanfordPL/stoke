  .text
  .globl __ascii_mbtowc
  .type __ascii_mbtowc, @function

#! file-offset 0x7d4c0
#! rip-offset  0x7d4c0
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.__ascii_mbtowc:              #        0x7d4c0  0      
  movl %esi, %esi             #  1     0x7d4c0  2      
  leal -0x4(%rsp), %eax       #  2     0x7d4c2  4      
  movl %edx, %edx             #  3     0x7d4c6  2      
  testq %rsi, %rsi            #  4     0x7d4c8  3      
  cmoveq %rax, %rsi           #  5     0x7d4cb  4      
  xorl %eax, %eax             #  6     0x7d4cf  2      
  testq %rdx, %rdx            #  7     0x7d4d1  3      
  jne .L_7d500                #  8     0x7d4d4  6      
  nop                         #  9     0x7d4da  1      
.L_7d4e0:                     #        0x7d4db  0      
  popq %r11                   #  10    0x7d4db  3      
  andl $0xffffffe0, %r11d     #  11    0x7d4de  7      
  addq %r15, %r11             #  12    0x7d4e5  3      
  jmpq %r11                   #  13    0x7d4e8  3      
  nop                         #  14    0x7d4eb  1      
  nop                         #  15    0x7d4ec  1      
.L_7d500:                     #        0x7d4ed  0      
  testl %ecx, %ecx            #  16    0x7d4ed  2      
  movl $0xfffffffe, %eax      #  17    0x7d4ef  5      
  je .L_7d4e0                 #  18    0x7d4f4  6      
  movl %edx, %edx             #  19    0x7d4fa  2      
  movzbl (%r15,%rdx,1), %eax  #  20    0x7d4fc  5      
  movl %esi, %esi             #  21    0x7d501  2      
  movl %eax, (%r15,%rsi,1)    #  22    0x7d503  4      
  xorl %eax, %eax             #  23    0x7d507  2      
  movl %edx, %edx             #  24    0x7d509  2      
  cmpb $0x0, (%r15,%rdx,1)    #  25    0x7d50b  5      
  nop                         #  26    0x7d510  1      
  setne %al                   #  27    0x7d511  3      
  popq %r11                   #  28    0x7d514  3      
  andl $0xffffffe0, %r11d     #  29    0x7d517  7      
  addq %r15, %r11             #  30    0x7d51e  3      
  jmpq %r11                   #  31    0x7d521  3      
  xchgw %ax, %ax              #  32    0x7d524  3      
  nop                         #  33    0x7d527  1      
                                                       
.size __ascii_mbtowc, .-__ascii_mbtowc

