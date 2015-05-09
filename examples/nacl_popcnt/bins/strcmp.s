  .text
  .globl strcmp
  .type strcmp, @function

#! file-offset 0x80560
#! rip-offset  0x80560
#! capacity    256 bytes

# Text                         #  Line  RIP      Bytes  
.strcmp:                       #        0x80560  0      
  movl %esi, %esi              #  1     0x80560  2      
  movl %edi, %edi              #  2     0x80562  2      
  movl %esi, %eax              #  3     0x80564  2      
  orl %edi, %eax               #  4     0x80566  2      
  testb $0x3, %al              #  5     0x80568  2      
  je .L_80620                  #  6     0x8056a  6      
  nop                          #  7     0x80570  1      
  nop                          #  8     0x80571  1      
.L_80580:                      #        0x80572  0      
  movl %edi, %edi              #  9     0x80572  2      
  movzbl (%r15,%rdi,1), %eax   #  10    0x80574  5      
  testb %al, %al               #  11    0x80579  2      
  jne .L_805c0                 #  12    0x8057b  6      
  jmpq .L_805e0                #  13    0x80581  5      
  nop                          #  14    0x80586  1      
  nop                          #  15    0x80587  1      
.L_805a0:                      #        0x80588  0      
  addl $0x1, %edi              #  16    0x80588  3      
  addl $0x1, %esi              #  17    0x8058b  3      
  movl %edi, %edi              #  18    0x8058e  2      
  movzbl (%r15,%rdi,1), %eax   #  19    0x80590  5      
  testb %al, %al               #  20    0x80595  2      
  je .L_805e0                  #  21    0x80597  6      
  nop                          #  22    0x8059d  1      
.L_805c0:                      #        0x8059e  0      
  movl %esi, %esi              #  23    0x8059e  2      
  cmpb (%r15,%rsi,1), %al      #  24    0x805a0  4      
  je .L_805a0                  #  25    0x805a4  6      
  nop                          #  26    0x805aa  1      
  nop                          #  27    0x805ab  1      
.L_805e0:                      #        0x805ac  0      
  movl %edi, %edi              #  28    0x805ac  2      
  movzbl (%r15,%rdi,1), %eax   #  29    0x805ae  5      
  movl %esi, %esi              #  30    0x805b3  2      
  movzbl (%r15,%rsi,1), %edx   #  31    0x805b5  5      
  subl %edx, %eax              #  32    0x805ba  2      
  popq %r11                    #  33    0x805bc  3      
  andl $0xffffffe0, %r11d      #  34    0x805bf  7      
  addq %r15, %r11              #  35    0x805c6  3      
  jmpq %r11                    #  36    0x805c9  3      
  nop                          #  37    0x805cc  1      
.L_80600:                      #        0x805cd  0      
  addl $0x4, %edi              #  38    0x805cd  3      
  addl $0x4, %esi              #  39    0x805d0  3      
  nop                          #  40    0x805d3  1      
  nop                          #  41    0x805d4  1      
.L_80620:                      #        0x805d5  0      
  movl %edi, %edi              #  42    0x805d5  2      
  movl (%r15,%rdi,1), %eax     #  43    0x805d7  4      
  movl %esi, %esi              #  44    0x805db  2      
  cmpl (%r15,%rsi,1), %eax     #  45    0x805dd  4      
  jne .L_80580                 #  46    0x805e1  6      
  leal -0x1010101(%rax), %edx  #  47    0x805e7  6      
  notl %eax                    #  48    0x805ed  2      
  andl %eax, %edx              #  49    0x805ef  2      
  nop                          #  50    0x805f1  1      
  andl $0x80808080, %edx       #  51    0x805f2  6      
  je .L_80600                  #  52    0x805f8  6      
  xorl %eax, %eax              #  53    0x805fe  2      
  popq %r11                    #  54    0x80600  3      
  andl $0xffffffe0, %r11d      #  55    0x80603  7      
  addq %r15, %r11              #  56    0x8060a  3      
  jmpq %r11                    #  57    0x8060d  3      
  nop                          #  58    0x80610  1      
  nop                          #  59    0x80611  1      
  nop                          #  60    0x80612  1      
  nop                          #  61    0x80613  1      
  nop                          #  62    0x80614  1      
  nop                          #  63    0x80615  1      
  nop                          #  64    0x80616  1      
  nop                          #  65    0x80617  1      
  nop                          #  66    0x80618  1      
  nop                          #  67    0x80619  1      
                                                        
.size strcmp, .-strcmp

