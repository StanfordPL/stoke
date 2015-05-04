  .text
  .globl d_template_param
  .type d_template_param, @function

#! file-offset 0x50000
#! rip-offset  0x50000
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.d_template_param:              #        0x50000  0      
  pushq %rbx                    #  1     0x50000  2      
  movl %edi, %ebx               #  2     0x50002  2      
  movl %ebx, %ebx               #  3     0x50004  2      
  movl 0xc(%r15,%rbx,1), %eax   #  4     0x50006  5      
  movl %eax, %eax               #  5     0x5000b  2      
  cmpb $0x54, (%r15,%rax,1)     #  6     0x5000d  5      
  je .L_50060                   #  7     0x50012  6      
  nop                           #  8     0x50018  1      
.L_50020:                       #        0x50019  0      
  xorl %eax, %eax               #  9     0x50019  2      
  nop                           #  10    0x5001b  1      
  nop                           #  11    0x5001c  1      
.L_50040:                       #        0x5001d  0      
  popq %rbx                     #  12    0x5001d  2      
  popq %r11                     #  13    0x5001f  3      
  andl $0xffffffe0, %r11d       #  14    0x50022  7      
  addq %r15, %r11               #  15    0x50029  3      
  jmpq %r11                     #  16    0x5002c  3      
  nop                           #  17    0x5002f  1      
  nop                           #  18    0x50030  1      
.L_50060:                       #        0x50031  0      
  leal 0x1(%rax), %edx          #  19    0x50031  3      
  xorl %ecx, %ecx               #  20    0x50034  2      
  movl %ebx, %ebx               #  21    0x50036  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  22    0x50038  5      
  movl %edx, %edx               #  23    0x5003d  2      
  cmpb $0x5f, (%r15,%rdx,1)     #  24    0x5003f  5      
  je .L_500a0                   #  25    0x50044  6      
  movl %ebx, %edi               #  26    0x5004a  2      
  nop                           #  27    0x5004c  1      
  callq .d_number               #  28    0x5004d  5      
  testl %eax, %eax              #  29    0x50052  2      
  js .L_50020                   #  30    0x50054  6      
  movl %ebx, %ebx               #  31    0x5005a  2      
  movl 0xc(%r15,%rbx,1), %edx   #  32    0x5005c  5      
  movl %edx, %edx               #  33    0x50061  2      
  cmpb $0x5f, (%r15,%rdx,1)     #  34    0x50063  5      
  jne .L_50020                  #  35    0x50068  6      
  leal 0x1(%rax), %ecx          #  36    0x5006e  3      
  nop                           #  37    0x50071  1      
.L_500a0:                       #        0x50072  0      
  addl $0x1, %edx               #  38    0x50072  3      
  movl %ebx, %ebx               #  39    0x50075  2      
  addl $0x1, 0x28(%r15,%rbx,1)  #  40    0x50077  6      
  movl %ebx, %ebx               #  41    0x5007d  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  42    0x5007f  5      
  movl %ebx, %ebx               #  43    0x50084  2      
  movl 0x14(%r15,%rbx,1), %edx  #  44    0x50086  5      
  movl %ebx, %ebx               #  45    0x5008b  2      
  cmpl 0x18(%r15,%rbx,1), %edx  #  46    0x5008d  5      
  jge .L_50020                  #  47    0x50092  6      
  leal (%rdx,%rdx,2), %eax      #  48    0x50098  3      
  addl $0x1, %edx               #  49    0x5009b  3      
  movl %ebx, %ebx               #  50    0x5009e  2      
  movl %edx, 0x14(%r15,%rbx,1)  #  51    0x500a0  5      
  shll $0x2, %eax               #  52    0x500a5  3      
  movl %ebx, %ebx               #  53    0x500a8  2      
  addl 0x10(%r15,%rbx,1), %eax  #  54    0x500aa  5      
  testq %rax, %rax              #  55    0x500af  3      
  je .L_50040                   #  56    0x500b2  6      
  movl %eax, %eax               #  57    0x500b8  2      
  movl $0x5, (%r15,%rax,1)      #  58    0x500ba  8      
  movl %eax, %eax               #  59    0x500c2  2      
  movl %ecx, 0x4(%r15,%rax,1)   #  60    0x500c4  5      
  popq %rbx                     #  61    0x500c9  2      
  popq %r11                     #  62    0x500cb  3      
  nop                           #  63    0x500ce  1      
  andl $0xffffffe0, %r11d       #  64    0x500cf  7      
  addq %r15, %r11               #  65    0x500d6  3      
  jmpq %r11                     #  66    0x500d9  3      
  nop                           #  67    0x500dc  1      
  nop                           #  68    0x500dd  1      
                                                         
.size d_template_param, .-d_template_param

