  .text
  .globl strlcpy
  .type strlcpy, @function

#! file-offset 0x80680
#! rip-offset  0x80680
#! capacity    224 bytes

# Text                        #  Line  RIP      Bytes  
.strlcpy:                     #        0x80680  0      
  movl %esi, %esi             #  1     0x80680  2      
  testl %edx, %edx            #  2     0x80682  2      
  movl %edi, %edi             #  3     0x80684  2      
  movq %rsi, %rax             #  4     0x80686  3      
  je .L_80720                 #  5     0x80689  6      
  xchgw %ax, %ax              #  6     0x8068f  3      
  nop                         #  7     0x80692  1      
.L_806a0:                     #        0x80693  0      
  subl $0x1, %edx             #  8     0x80693  3      
  je .L_80700                 #  9     0x80696  6      
  movl %eax, %eax             #  10    0x8069c  2      
  movzbl (%r15,%rax,1), %ecx  #  11    0x8069e  5      
  addl $0x1, %eax             #  12    0x806a3  3      
  movl %edi, %edi             #  13    0x806a6  2      
  movb %cl, (%r15,%rdi,1)     #  14    0x806a8  4      
  addl $0x1, %edi             #  15    0x806ac  3      
  testb %cl, %cl              #  16    0x806af  2      
  jne .L_806a0                #  17    0x806b1  6      
  testl %edx, %edx            #  18    0x806b7  2      
  xchgw %ax, %ax              #  19    0x806b9  3      
  je .L_80700                 #  20    0x806bc  6      
  nop                         #  21    0x806c2  1      
  nop                         #  22    0x806c3  1      
.L_806e0:                     #        0x806c4  0      
  popq %r11                   #  23    0x806c4  3      
  notl %esi                   #  24    0x806c7  2      
  leal (%rsi,%rax,1), %eax    #  25    0x806c9  3      
  andl $0xffffffe0, %r11d     #  26    0x806cc  7      
  addq %r15, %r11             #  27    0x806d3  3      
  jmpq %r11                   #  28    0x806d6  3      
  nop                         #  29    0x806d9  1      
.L_80700:                     #        0x806da  0      
  movl %edi, %edi             #  30    0x806da  2      
  movb $0x0, (%r15,%rdi,1)    #  31    0x806dc  5      
  nop                         #  32    0x806e1  1      
  nop                         #  33    0x806e2  1      
.L_80720:                     #        0x806e3  0      
  movl %eax, %eax             #  34    0x806e3  2      
  movzbl (%r15,%rax,1), %edx  #  35    0x806e5  5      
  addl $0x1, %eax             #  36    0x806ea  3      
  testb %dl, %dl              #  37    0x806ed  2      
  je .L_806e0                 #  38    0x806ef  6      
  movl %eax, %eax             #  39    0x806f5  2      
  movzbl (%r15,%rax,1), %edx  #  40    0x806f7  5      
  addl $0x1, %eax             #  41    0x806fc  3      
  testb %dl, %dl              #  42    0x806ff  2      
  jne .L_80720                #  43    0x80701  6      
  nop                         #  44    0x80707  1      
  jmpq .L_806e0               #  45    0x80708  5      
  nop                         #  46    0x8070d  1      
  nop                         #  47    0x8070e  1      
  nop                         #  48    0x8070f  1      
  nop                         #  49    0x80710  1      
  nop                         #  50    0x80711  1      
  nop                         #  51    0x80712  1      
  nop                         #  52    0x80713  1      
  nop                         #  53    0x80714  1      
  nop                         #  54    0x80715  1      
  nop                         #  55    0x80716  1      
  nop                         #  56    0x80717  1      
  nop                         #  57    0x80718  1      
  nop                         #  58    0x80719  1      
  nop                         #  59    0x8071a  1      
  nop                         #  60    0x8071b  1      
  nop                         #  61    0x8071c  1      
  nop                         #  62    0x8071d  1      
  nop                         #  63    0x8071e  1      
  nop                         #  64    0x8071f  1      
  nop                         #  65    0x80720  1      
  nop                         #  66    0x80721  1      
  nop                         #  67    0x80722  1      
  nop                         #  68    0x80723  1      
  nop                         #  69    0x80724  1      
  nop                         #  70    0x80725  1      
  nop                         #  71    0x80726  1      
  nop                         #  72    0x80727  1      
  nop                         #  73    0x80728  1      
  nop                         #  74    0x80729  1      
  nop                         #  75    0x8072a  1      
                                                       
.size strlcpy, .-strlcpy

