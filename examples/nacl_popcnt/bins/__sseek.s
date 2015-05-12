  .text
  .globl __sseek
  .type __sseek, @function

#! file-offset 0x80040
#! rip-offset  0x80040
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
.__sseek:                         #        0x80040  0      
  pushq %rbx                      #  1     0x80040  2      
  movl %esi, %ebx                 #  2     0x80042  2      
  movslq %edx, %rsi               #  3     0x80044  3      
  movl %ebx, %ebx                 #  4     0x80047  2      
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x80049  6      
  movl %ecx, %edx                 #  6     0x8004f  2      
  nop                             #  7     0x80051  1      
  callq .lseek                    #  8     0x80052  5      
  cmpq $0xffffffffffffffff, %rax  #  9     0x80057  4      
  je .L_800a0                     #  10    0x8005b  6      
  movl %ebx, %ebx                 #  11    0x80061  2      
  orw $0x1000, 0xc(%r15,%rbx,1)   #  12    0x80063  8      
  movl %ebx, %ebx                 #  13    0x8006b  2      
  movq %rax, 0x50(%r15,%rbx,1)    #  14    0x8006d  5      
  popq %rbx                       #  15    0x80072  2      
  popq %r11                       #  16    0x80074  3      
  nop                             #  17    0x80077  1      
  andl $0xffffffe0, %r11d         #  18    0x80078  7      
  addq %r15, %r11                 #  19    0x8007f  3      
  jmpq %r11                       #  20    0x80082  3      
  nop                             #  21    0x80085  1      
  nop                             #  22    0x80086  1      
.L_800a0:                         #        0x80087  0      
  movl %ebx, %ebx                 #  23    0x80087  2      
  andw $0xefff, 0xc(%r15,%rbx,1)  #  24    0x80089  8      
  popq %rbx                       #  25    0x80091  2      
  popq %r11                       #  26    0x80093  3      
  andl $0xffffffe0, %r11d         #  27    0x80096  7      
  addq %r15, %r11                 #  28    0x8009d  3      
  jmpq %r11                       #  29    0x800a0  3      
  nop                             #  30    0x800a3  1      
                                                           
.size __sseek, .-__sseek

