  .text
  .globl _ZNSs4swapERSs
  .type _ZNSs4swapERSs, @function

#! file-offset 0xea020
#! rip-offset  0xaa020
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
._ZNSs4swapERSs:               #        0xaa020  0      OPC=0     
  movl %edi, %edi              #  1     0xaa020  2      OPC=1157  
  movl %esi, %esi              #  2     0xaa022  2      OPC=1157  
  movl %edi, %edi              #  3     0xaa024  2      OPC=1157  
  movl (%r15,%rdi,1), %eax     #  4     0xaa026  4      OPC=1156  
  subl $0xc, %eax              #  5     0xaa02a  3      OPC=2384  
  movl %eax, %eax              #  6     0xaa02d  2      OPC=1157  
  movl 0x8(%r15,%rax,1), %r8d  #  7     0xaa02f  5      OPC=1156  
  testl %r8d, %r8d             #  8     0xaa034  3      OPC=2436  
  js .L_aa080                  #  9     0xaa037  6      OPC=1043  
  nop                          #  10    0xaa03d  1      OPC=1343  
  nop                          #  11    0xaa03e  1      OPC=1343  
  nop                          #  12    0xaa03f  1      OPC=1343  
  nop                          #  13    0xaa040  1      OPC=1343  
  nop                          #  14    0xaa041  1      OPC=1343  
  nop                          #  15    0xaa042  1      OPC=1343  
  nop                          #  16    0xaa043  1      OPC=1343  
  nop                          #  17    0xaa044  1      OPC=1343  
  nop                          #  18    0xaa045  1      OPC=1343  
.L_aa040:                      #        0xaa046  0      OPC=0     
  movl %esi, %esi              #  19    0xaa046  2      OPC=1157  
  movl (%r15,%rsi,1), %eax     #  20    0xaa048  4      OPC=1156  
  leal -0xc(%rax), %edx        #  21    0xaa04c  3      OPC=1066  
  movl %edx, %edx              #  22    0xaa04f  2      OPC=1157  
  movl 0x8(%r15,%rdx,1), %ecx  #  23    0xaa051  5      OPC=1156  
  testl %ecx, %ecx             #  24    0xaa056  2      OPC=2436  
  jns .L_aa060                 #  25    0xaa058  6      OPC=1005  
  nop                          #  26    0xaa05e  1      OPC=1343  
  nop                          #  27    0xaa05f  1      OPC=1343  
  movl %edx, %edx              #  28    0xaa060  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rdx,1)  #  29    0xaa062  9      OPC=1135  
  nop                          #  30    0xaa06b  1      OPC=1343  
.L_aa060:                      #        0xaa06c  0      OPC=0     
  movl %edi, %edi              #  31    0xaa06c  2      OPC=1157  
  movl (%r15,%rdi,1), %edx     #  32    0xaa06e  4      OPC=1156  
  movl %edi, %edi              #  33    0xaa072  2      OPC=1157  
  movl %eax, (%r15,%rdi,1)     #  34    0xaa074  4      OPC=1136  
  popq %r11                    #  35    0xaa078  2      OPC=1694  
  movl %esi, %esi              #  36    0xaa07a  2      OPC=1157  
  movl %edx, (%r15,%rsi,1)     #  37    0xaa07c  4      OPC=1136  
  andl $0xffffffe0, %r11d      #  38    0xaa080  7      OPC=131   
  nop                          #  39    0xaa087  1      OPC=1343  
  nop                          #  40    0xaa088  1      OPC=1343  
  nop                          #  41    0xaa089  1      OPC=1343  
  nop                          #  42    0xaa08a  1      OPC=1343  
  addq %r15, %r11              #  43    0xaa08b  3      OPC=72    
  jmpq %r11                    #  44    0xaa08e  3      OPC=928   
  xchgw %ax, %ax               #  45    0xaa091  2      OPC=3700  
.L_aa080:                      #        0xaa093  0      OPC=0     
  movl %eax, %eax              #  46    0xaa093  2      OPC=1157  
  movl $0x0, 0x8(%r15,%rax,1)  #  47    0xaa095  9      OPC=1135  
  jmpq .L_aa040                #  48    0xaa09e  5      OPC=930   
  nop                          #  49    0xaa0a3  1      OPC=1343  
  nop                          #  50    0xaa0a4  1      OPC=1343  
  nop                          #  51    0xaa0a5  1      OPC=1343  
  nop                          #  52    0xaa0a6  1      OPC=1343  
  nop                          #  53    0xaa0a7  1      OPC=1343  
  nop                          #  54    0xaa0a8  1      OPC=1343  
  nop                          #  55    0xaa0a9  1      OPC=1343  
  nop                          #  56    0xaa0aa  1      OPC=1343  
  nop                          #  57    0xaa0ab  1      OPC=1343  
  nop                          #  58    0xaa0ac  1      OPC=1343  
  nop                          #  59    0xaa0ad  1      OPC=1343  
  nop                          #  60    0xaa0ae  1      OPC=1343  
  nop                          #  61    0xaa0af  1      OPC=1343  
  nop                          #  62    0xaa0b0  1      OPC=1343  
  nop                          #  63    0xaa0b1  1      OPC=1343  
  nop                          #  64    0xaa0b2  1      OPC=1343  
  nop                          #  65    0xaa0b3  1      OPC=1343  
  nop                          #  66    0xaa0b4  1      OPC=1343  
  nop                          #  67    0xaa0b5  1      OPC=1343  
  nop                          #  68    0xaa0b6  1      OPC=1343  
  nop                          #  69    0xaa0b7  1      OPC=1343  
                                                                  
.size _ZNSs4swapERSs, .-_ZNSs4swapERSs

