  .text
  .globl strcmp
  .type strcmp, @function

#! file-offset 0x80580
#! rip-offset  0x80580
#! capacity    256 bytes

# Text                         #  Line  RIP      Bytes  
.strcmp:                       #        0x80580  0      
  movl %esi, %esi              #  1     0x80580  2      
  movl %edi, %edi              #  2     0x80582  2      
  movl %esi, %eax              #  3     0x80584  2      
  orl %edi, %eax               #  4     0x80586  2      
  testb $0x3, %al              #  5     0x80588  2      
  je .L_80640                  #  6     0x8058a  6      
  nop                          #  7     0x80590  1      
  nop                          #  8     0x80591  1      
.L_805a0:                      #        0x80592  0      
  movl %edi, %edi              #  9     0x80592  2      
  movzbl (%r15,%rdi,1), %eax   #  10    0x80594  5      
  testb %al, %al               #  11    0x80599  2      
  jne .L_805e0                 #  12    0x8059b  6      
  jmpq .L_80600                #  13    0x805a1  5      
  nop                          #  14    0x805a6  1      
  nop                          #  15    0x805a7  1      
.L_805c0:                      #        0x805a8  0      
  addl $0x1, %edi              #  16    0x805a8  3      
  addl $0x1, %esi              #  17    0x805ab  3      
  movl %edi, %edi              #  18    0x805ae  2      
  movzbl (%r15,%rdi,1), %eax   #  19    0x805b0  5      
  testb %al, %al               #  20    0x805b5  2      
  je .L_80600                  #  21    0x805b7  6      
  nop                          #  22    0x805bd  1      
.L_805e0:                      #        0x805be  0      
  movl %esi, %esi              #  23    0x805be  2      
  cmpb (%r15,%rsi,1), %al      #  24    0x805c0  4      
  je .L_805c0                  #  25    0x805c4  6      
  nop                          #  26    0x805ca  1      
  nop                          #  27    0x805cb  1      
.L_80600:                      #        0x805cc  0      
  movl %edi, %edi              #  28    0x805cc  2      
  movzbl (%r15,%rdi,1), %eax   #  29    0x805ce  5      
  movl %esi, %esi              #  30    0x805d3  2      
  movzbl (%r15,%rsi,1), %edx   #  31    0x805d5  5      
  subl %edx, %eax              #  32    0x805da  2      
  popq %r11                    #  33    0x805dc  3      
  andl $0xffffffe0, %r11d      #  34    0x805df  7      
  addq %r15, %r11              #  35    0x805e6  3      
  jmpq %r11                    #  36    0x805e9  3      
  nop                          #  37    0x805ec  1      
.L_80620:                      #        0x805ed  0      
  addl $0x4, %edi              #  38    0x805ed  3      
  addl $0x4, %esi              #  39    0x805f0  3      
  nop                          #  40    0x805f3  1      
  nop                          #  41    0x805f4  1      
.L_80640:                      #        0x805f5  0      
  movl %edi, %edi              #  42    0x805f5  2      
  movl (%r15,%rdi,1), %eax     #  43    0x805f7  4      
  movl %esi, %esi              #  44    0x805fb  2      
  cmpl (%r15,%rsi,1), %eax     #  45    0x805fd  4      
  jne .L_805a0                 #  46    0x80601  6      
  leal -0x1010101(%rax), %edx  #  47    0x80607  6      
  notl %eax                    #  48    0x8060d  2      
  andl %eax, %edx              #  49    0x8060f  2      
  nop                          #  50    0x80611  1      
  andl $0x80808080, %edx       #  51    0x80612  6      
  je .L_80620                  #  52    0x80618  6      
  xorl %eax, %eax              #  53    0x8061e  2      
  popq %r11                    #  54    0x80620  3      
  andl $0xffffffe0, %r11d      #  55    0x80623  7      
  addq %r15, %r11              #  56    0x8062a  3      
  jmpq %r11                    #  57    0x8062d  3      
  nop                          #  58    0x80630  1      
  nop                          #  59    0x80631  1      
  nop                          #  60    0x80632  1      
  nop                          #  61    0x80633  1      
  nop                          #  62    0x80634  1      
  nop                          #  63    0x80635  1      
  nop                          #  64    0x80636  1      
  nop                          #  65    0x80637  1      
  nop                          #  66    0x80638  1      
  nop                          #  67    0x80639  1      
                                                        
.size strcmp, .-strcmp

