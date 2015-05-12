  .text
  .globl __ascii_mbtowc
  .type __ascii_mbtowc, @function

#! file-offset 0x7d4e0
#! rip-offset  0x7d4e0
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
.__ascii_mbtowc:              #        0x7d4e0  0      
  movl %esi, %esi             #  1     0x7d4e0  2      
  leal -0x4(%rsp), %eax       #  2     0x7d4e2  4      
  movl %edx, %edx             #  3     0x7d4e6  2      
  testq %rsi, %rsi            #  4     0x7d4e8  3      
  cmoveq %rax, %rsi           #  5     0x7d4eb  4      
  xorl %eax, %eax             #  6     0x7d4ef  2      
  testq %rdx, %rdx            #  7     0x7d4f1  3      
  jne .L_7d520                #  8     0x7d4f4  6      
  nop                         #  9     0x7d4fa  1      
.L_7d500:                     #        0x7d4fb  0      
  popq %r11                   #  10    0x7d4fb  3      
  andl $0xffffffe0, %r11d     #  11    0x7d4fe  7      
  addq %r15, %r11             #  12    0x7d505  3      
  jmpq %r11                   #  13    0x7d508  3      
  nop                         #  14    0x7d50b  1      
  nop                         #  15    0x7d50c  1      
.L_7d520:                     #        0x7d50d  0      
  testl %ecx, %ecx            #  16    0x7d50d  2      
  movl $0xfffffffe, %eax      #  17    0x7d50f  5      
  je .L_7d500                 #  18    0x7d514  6      
  movl %edx, %edx             #  19    0x7d51a  2      
  movzbl (%r15,%rdx,1), %eax  #  20    0x7d51c  5      
  movl %esi, %esi             #  21    0x7d521  2      
  movl %eax, (%r15,%rsi,1)    #  22    0x7d523  4      
  xorl %eax, %eax             #  23    0x7d527  2      
  movl %edx, %edx             #  24    0x7d529  2      
  cmpb $0x0, (%r15,%rdx,1)    #  25    0x7d52b  5      
  nop                         #  26    0x7d530  1      
  setne %al                   #  27    0x7d531  3      
  popq %r11                   #  28    0x7d534  3      
  andl $0xffffffe0, %r11d     #  29    0x7d537  7      
  addq %r15, %r11             #  30    0x7d53e  3      
  jmpq %r11                   #  31    0x7d541  3      
  xchgw %ax, %ax              #  32    0x7d544  3      
  nop                         #  33    0x7d547  1      
                                                       
.size __ascii_mbtowc, .-__ascii_mbtowc

