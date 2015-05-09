  .text
  .globl __sseek
  .type __sseek, @function

#! file-offset 0x80020
#! rip-offset  0x80020
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
.__sseek:                         #        0x80020  0      
  pushq %rbx                      #  1     0x80020  2      
  movl %esi, %ebx                 #  2     0x80022  2      
  movslq %edx, %rsi               #  3     0x80024  3      
  movl %ebx, %ebx                 #  4     0x80027  2      
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x80029  6      
  movl %ecx, %edx                 #  6     0x8002f  2      
  nop                             #  7     0x80031  1      
  callq .lseek                    #  8     0x80032  5      
  cmpq $0xffffffffffffffff, %rax  #  9     0x80037  4      
  je .L_80080                     #  10    0x8003b  6      
  movl %ebx, %ebx                 #  11    0x80041  2      
  orw $0x1000, 0xc(%r15,%rbx,1)   #  12    0x80043  8      
  movl %ebx, %ebx                 #  13    0x8004b  2      
  movq %rax, 0x50(%r15,%rbx,1)    #  14    0x8004d  5      
  popq %rbx                       #  15    0x80052  2      
  popq %r11                       #  16    0x80054  3      
  nop                             #  17    0x80057  1      
  andl $0xffffffe0, %r11d         #  18    0x80058  7      
  addq %r15, %r11                 #  19    0x8005f  3      
  jmpq %r11                       #  20    0x80062  3      
  nop                             #  21    0x80065  1      
  nop                             #  22    0x80066  1      
.L_80080:                         #        0x80067  0      
  movl %ebx, %ebx                 #  23    0x80067  2      
  andw $0xefff, 0xc(%r15,%rbx,1)  #  24    0x80069  8      
  popq %rbx                       #  25    0x80071  2      
  popq %r11                       #  26    0x80073  3      
  andl $0xffffffe0, %r11d         #  27    0x80076  7      
  addq %r15, %r11                 #  28    0x8007d  3      
  jmpq %r11                       #  29    0x80080  3      
  nop                             #  30    0x80083  1      
                                                           
.size __sseek, .-__sseek

