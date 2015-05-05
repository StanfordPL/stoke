  .text
  .globl _Z7computej
  .type _Z7computej, @function

#! file-offset 0x201e0
#! rip-offset  0x201e0
#! capacity    192 bytes

# Text                     #  Line  RIP      Bytes  
._Z7computej:              #        0x201e0  0      
  xorl %eax, %eax          #  1     0x201e0  2      
  xorl %esi, %esi          #  2     0x201e2  2      
  testl %edi, %edi         #  3     0x201e4  2      
  je .L_20280              #  4     0x201e6  6      
  nop                      #  5     0x201ec  1      
  nop                      #  6     0x201ed  1      
.L_20200:                  #        0x201ee  0      
  addl $0x1, %esi          #  7     0x201ee  3      
  cmpl %esi, %edi          #  8     0x201f1  2      
  jbe .L_20260             #  9     0x201f3  6      
  nop                      #  10    0x201f9  1      
  nop                      #  11    0x201fa  1      
.L_20220:                  #        0x201fb  0      
  testl %esi, %esi         #  12    0x201fb  2      
  je .L_20200              #  13    0x201fd  6      
  movl %esi, %edx          #  14    0x20203  2      
  nop                      #  15    0x20205  1      
  nop                      #  16    0x20206  1      
.L_20240:                  #        0x20207  0      
  movl %edx, %ecx          #  17    0x20207  2      
  andl $0x1, %ecx          #  18    0x20209  3      
  cmpl $0x1, %ecx          #  19    0x2020c  3      
  sbbl $0xffffffff, %eax   #  20    0x2020f  5      
  shrl $0x1, %edx          #  21    0x20214  2      
  jne .L_20240             #  22    0x20216  6      
  addl $0x1, %esi          #  23    0x2021c  3      
  cmpl %esi, %edi          #  24    0x2021f  2      
  ja .L_20220              #  25    0x20221  6      
  nop                      #  26    0x20227  1      
.L_20260:                  #        0x20228  0      
  retq
  popq %r11                #  27    0x20228  3      
  andl $0xffffffe0, %r11d  #  28    0x2022b  7      
  addq %r15, %r11          #  29    0x20232  3      
  jmpq %r11                #  30    0x20235  3      
  nop                      #  31    0x20238  1      
  nop                      #  32    0x20239  1      
.L_20280:                  #        0x2023a  0      
  retq
  popq %r11                #  33    0x2023a  3      
  andl $0xffffffe0, %r11d  #  34    0x2023d  7      
  addq %r15, %r11          #  35    0x20244  3      
  jmpq %r11                #  36    0x20247  3      
  nop                      #  37    0x2024a  1      
  nop                      #  38    0x2024b  1      
                                                    
.size _Z7computej, .-_Z7computej

