  .text
  .globl strlcpy
  .type strlcpy, @function

#! file-offset 0x80660
#! rip-offset  0x80660
#! capacity    224 bytes

# Text                        #  Line  RIP      Bytes  
.strlcpy:                     #        0x80660  0      
  movl %esi, %esi             #  1     0x80660  2      
  testl %edx, %edx            #  2     0x80662  2      
  movl %edi, %edi             #  3     0x80664  2      
  movq %rsi, %rax             #  4     0x80666  3      
  je .L_80700                 #  5     0x80669  6      
  xchgw %ax, %ax              #  6     0x8066f  3      
  nop                         #  7     0x80672  1      
.L_80680:                     #        0x80673  0      
  subl $0x1, %edx             #  8     0x80673  3      
  je .L_806e0                 #  9     0x80676  6      
  movl %eax, %eax             #  10    0x8067c  2      
  movzbl (%r15,%rax,1), %ecx  #  11    0x8067e  5      
  addl $0x1, %eax             #  12    0x80683  3      
  movl %edi, %edi             #  13    0x80686  2      
  movb %cl, (%r15,%rdi,1)     #  14    0x80688  4      
  addl $0x1, %edi             #  15    0x8068c  3      
  testb %cl, %cl              #  16    0x8068f  2      
  jne .L_80680                #  17    0x80691  6      
  testl %edx, %edx            #  18    0x80697  2      
  xchgw %ax, %ax              #  19    0x80699  3      
  je .L_806e0                 #  20    0x8069c  6      
  nop                         #  21    0x806a2  1      
  nop                         #  22    0x806a3  1      
.L_806c0:                     #        0x806a4  0      
  popq %r11                   #  23    0x806a4  3      
  notl %esi                   #  24    0x806a7  2      
  leal (%rsi,%rax,1), %eax    #  25    0x806a9  3      
  andl $0xffffffe0, %r11d     #  26    0x806ac  7      
  addq %r15, %r11             #  27    0x806b3  3      
  jmpq %r11                   #  28    0x806b6  3      
  nop                         #  29    0x806b9  1      
.L_806e0:                     #        0x806ba  0      
  movl %edi, %edi             #  30    0x806ba  2      
  movb $0x0, (%r15,%rdi,1)    #  31    0x806bc  5      
  nop                         #  32    0x806c1  1      
  nop                         #  33    0x806c2  1      
.L_80700:                     #        0x806c3  0      
  movl %eax, %eax             #  34    0x806c3  2      
  movzbl (%r15,%rax,1), %edx  #  35    0x806c5  5      
  addl $0x1, %eax             #  36    0x806ca  3      
  testb %dl, %dl              #  37    0x806cd  2      
  je .L_806c0                 #  38    0x806cf  6      
  movl %eax, %eax             #  39    0x806d5  2      
  movzbl (%r15,%rax,1), %edx  #  40    0x806d7  5      
  addl $0x1, %eax             #  41    0x806dc  3      
  testb %dl, %dl              #  42    0x806df  2      
  jne .L_80700                #  43    0x806e1  6      
  nop                         #  44    0x806e7  1      
  jmpq .L_806c0               #  45    0x806e8  5      
  nop                         #  46    0x806ed  1      
  nop                         #  47    0x806ee  1      
  nop                         #  48    0x806ef  1      
  nop                         #  49    0x806f0  1      
  nop                         #  50    0x806f1  1      
  nop                         #  51    0x806f2  1      
  nop                         #  52    0x806f3  1      
  nop                         #  53    0x806f4  1      
  nop                         #  54    0x806f5  1      
  nop                         #  55    0x806f6  1      
  nop                         #  56    0x806f7  1      
  nop                         #  57    0x806f8  1      
  nop                         #  58    0x806f9  1      
  nop                         #  59    0x806fa  1      
  nop                         #  60    0x806fb  1      
  nop                         #  61    0x806fc  1      
  nop                         #  62    0x806fd  1      
  nop                         #  63    0x806fe  1      
  nop                         #  64    0x806ff  1      
  nop                         #  65    0x80700  1      
  nop                         #  66    0x80701  1      
  nop                         #  67    0x80702  1      
  nop                         #  68    0x80703  1      
  nop                         #  69    0x80704  1      
  nop                         #  70    0x80705  1      
  nop                         #  71    0x80706  1      
  nop                         #  72    0x80707  1      
  nop                         #  73    0x80708  1      
  nop                         #  74    0x80709  1      
  nop                         #  75    0x8070a  1      
                                                       
.size strlcpy, .-strlcpy

