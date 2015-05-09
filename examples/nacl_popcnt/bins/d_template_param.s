  .text
  .globl d_template_param
  .type d_template_param, @function

#! file-offset 0x4ff60
#! rip-offset  0x4ff60
#! capacity    288 bytes

# Text                          #  Line  RIP      Bytes  
.d_template_param:              #        0x4ff60  0      
  pushq %rbx                    #  1     0x4ff60  2      
  movl %edi, %ebx               #  2     0x4ff62  2      
  movl %ebx, %ebx               #  3     0x4ff64  2      
  movl 0xc(%r15,%rbx,1), %eax   #  4     0x4ff66  5      
  movl %eax, %eax               #  5     0x4ff6b  2      
  cmpb $0x54, (%r15,%rax,1)     #  6     0x4ff6d  5      
  je .L_4ffc0                   #  7     0x4ff72  6      
  nop                           #  8     0x4ff78  1      
.L_4ff80:                       #        0x4ff79  0      
  xorl %eax, %eax               #  9     0x4ff79  2      
  nop                           #  10    0x4ff7b  1      
  nop                           #  11    0x4ff7c  1      
.L_4ffa0:                       #        0x4ff7d  0      
  popq %rbx                     #  12    0x4ff7d  2      
  popq %r11                     #  13    0x4ff7f  3      
  andl $0xffffffe0, %r11d       #  14    0x4ff82  7      
  addq %r15, %r11               #  15    0x4ff89  3      
  jmpq %r11                     #  16    0x4ff8c  3      
  nop                           #  17    0x4ff8f  1      
  nop                           #  18    0x4ff90  1      
.L_4ffc0:                       #        0x4ff91  0      
  leal 0x1(%rax), %edx          #  19    0x4ff91  3      
  xorl %ecx, %ecx               #  20    0x4ff94  2      
  movl %ebx, %ebx               #  21    0x4ff96  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  22    0x4ff98  5      
  movl %edx, %edx               #  23    0x4ff9d  2      
  cmpb $0x5f, (%r15,%rdx,1)     #  24    0x4ff9f  5      
  je .L_50000                   #  25    0x4ffa4  6      
  movl %ebx, %edi               #  26    0x4ffaa  2      
  nop                           #  27    0x4ffac  1      
  callq .d_number               #  28    0x4ffad  5      
  testl %eax, %eax              #  29    0x4ffb2  2      
  js .L_4ff80                   #  30    0x4ffb4  6      
  movl %ebx, %ebx               #  31    0x4ffba  2      
  movl 0xc(%r15,%rbx,1), %edx   #  32    0x4ffbc  5      
  movl %edx, %edx               #  33    0x4ffc1  2      
  cmpb $0x5f, (%r15,%rdx,1)     #  34    0x4ffc3  5      
  jne .L_4ff80                  #  35    0x4ffc8  6      
  leal 0x1(%rax), %ecx          #  36    0x4ffce  3      
  nop                           #  37    0x4ffd1  1      
.L_50000:                       #        0x4ffd2  0      
  addl $0x1, %edx               #  38    0x4ffd2  3      
  movl %ebx, %ebx               #  39    0x4ffd5  2      
  addl $0x1, 0x28(%r15,%rbx,1)  #  40    0x4ffd7  6      
  movl %ebx, %ebx               #  41    0x4ffdd  2      
  movl %edx, 0xc(%r15,%rbx,1)   #  42    0x4ffdf  5      
  movl %ebx, %ebx               #  43    0x4ffe4  2      
  movl 0x14(%r15,%rbx,1), %edx  #  44    0x4ffe6  5      
  movl %ebx, %ebx               #  45    0x4ffeb  2      
  cmpl 0x18(%r15,%rbx,1), %edx  #  46    0x4ffed  5      
  jge .L_4ff80                  #  47    0x4fff2  6      
  leal (%rdx,%rdx,2), %eax      #  48    0x4fff8  3      
  addl $0x1, %edx               #  49    0x4fffb  3      
  movl %ebx, %ebx               #  50    0x4fffe  2      
  movl %edx, 0x14(%r15,%rbx,1)  #  51    0x50000  5      
  shll $0x2, %eax               #  52    0x50005  3      
  movl %ebx, %ebx               #  53    0x50008  2      
  addl 0x10(%r15,%rbx,1), %eax  #  54    0x5000a  5      
  testq %rax, %rax              #  55    0x5000f  3      
  je .L_4ffa0                   #  56    0x50012  6      
  movl %eax, %eax               #  57    0x50018  2      
  movl $0x5, (%r15,%rax,1)      #  58    0x5001a  8      
  movl %eax, %eax               #  59    0x50022  2      
  movl %ecx, 0x4(%r15,%rax,1)   #  60    0x50024  5      
  popq %rbx                     #  61    0x50029  2      
  popq %r11                     #  62    0x5002b  3      
  nop                           #  63    0x5002e  1      
  andl $0xffffffe0, %r11d       #  64    0x5002f  7      
  addq %r15, %r11               #  65    0x50036  3      
  jmpq %r11                     #  66    0x50039  3      
  nop                           #  67    0x5003c  1      
  nop                           #  68    0x5003d  1      
                                                         
.size d_template_param, .-d_template_param

