  .text
  .globl strcmp
  .type strcmp, @function

#! file-offset 0x80600
#! rip-offset  0x80600
#! capacity    256 bytes

# Text                         #  Line  RIP      Bytes  
.strcmp:                       #        0x80600  0      
  movl %esi, %esi              #  1     0x80600  2      
  movl %edi, %edi              #  2     0x80602  2      
  movl %esi, %eax              #  3     0x80604  2      
  orl %edi, %eax               #  4     0x80606  2      
  testb $0x3, %al              #  5     0x80608  2      
  je .L_806c0                  #  6     0x8060a  6      
  nop                          #  7     0x80610  1      
  nop                          #  8     0x80611  1      
.L_80620:                      #        0x80612  0      
  movl %edi, %edi              #  9     0x80612  2      
  movzbl (%r15,%rdi,1), %eax   #  10    0x80614  5      
  testb %al, %al               #  11    0x80619  2      
  jne .L_80660                 #  12    0x8061b  6      
  jmpq .L_80680                #  13    0x80621  5      
  nop                          #  14    0x80626  1      
  nop                          #  15    0x80627  1      
.L_80640:                      #        0x80628  0      
  addl $0x1, %edi              #  16    0x80628  3      
  addl $0x1, %esi              #  17    0x8062b  3      
  movl %edi, %edi              #  18    0x8062e  2      
  movzbl (%r15,%rdi,1), %eax   #  19    0x80630  5      
  testb %al, %al               #  20    0x80635  2      
  je .L_80680                  #  21    0x80637  6      
  nop                          #  22    0x8063d  1      
.L_80660:                      #        0x8063e  0      
  movl %esi, %esi              #  23    0x8063e  2      
  cmpb (%r15,%rsi,1), %al      #  24    0x80640  4      
  je .L_80640                  #  25    0x80644  6      
  nop                          #  26    0x8064a  1      
  nop                          #  27    0x8064b  1      
.L_80680:                      #        0x8064c  0      
  movl %edi, %edi              #  28    0x8064c  2      
  movzbl (%r15,%rdi,1), %eax   #  29    0x8064e  5      
  movl %esi, %esi              #  30    0x80653  2      
  movzbl (%r15,%rsi,1), %edx   #  31    0x80655  5      
  subl %edx, %eax              #  32    0x8065a  2      
  popq %r11                    #  33    0x8065c  3      
  andl $0xffffffe0, %r11d      #  34    0x8065f  7      
  addq %r15, %r11              #  35    0x80666  3      
  jmpq %r11                    #  36    0x80669  3      
  nop                          #  37    0x8066c  1      
.L_806a0:                      #        0x8066d  0      
  addl $0x4, %edi              #  38    0x8066d  3      
  addl $0x4, %esi              #  39    0x80670  3      
  nop                          #  40    0x80673  1      
  nop                          #  41    0x80674  1      
.L_806c0:                      #        0x80675  0      
  movl %edi, %edi              #  42    0x80675  2      
  movl (%r15,%rdi,1), %eax     #  43    0x80677  4      
  movl %esi, %esi              #  44    0x8067b  2      
  cmpl (%r15,%rsi,1), %eax     #  45    0x8067d  4      
  jne .L_80620                 #  46    0x80681  6      
  leal -0x1010101(%rax), %edx  #  47    0x80687  6      
  notl %eax                    #  48    0x8068d  2      
  andl %eax, %edx              #  49    0x8068f  2      
  nop                          #  50    0x80691  1      
  andl $0x80808080, %edx       #  51    0x80692  6      
  je .L_806a0                  #  52    0x80698  6      
  xorl %eax, %eax              #  53    0x8069e  2      
  popq %r11                    #  54    0x806a0  3      
  andl $0xffffffe0, %r11d      #  55    0x806a3  7      
  addq %r15, %r11              #  56    0x806aa  3      
  jmpq %r11                    #  57    0x806ad  3      
  nop                          #  58    0x806b0  1      
  nop                          #  59    0x806b1  1      
  nop                          #  60    0x806b2  1      
  nop                          #  61    0x806b3  1      
  nop                          #  62    0x806b4  1      
  nop                          #  63    0x806b5  1      
  nop                          #  64    0x806b6  1      
  nop                          #  65    0x806b7  1      
  nop                          #  66    0x806b8  1      
  nop                          #  67    0x806b9  1      
                                                        
.size strcmp, .-strcmp

