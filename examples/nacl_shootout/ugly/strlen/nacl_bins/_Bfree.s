  .text
  .globl _Bfree
  .type _Bfree, @function

#! file-offset 0x189a00
#! rip-offset  0x149a00
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
._Bfree:                        #        0x149a00  0      OPC=0     
  movl %esi, %esi               #  1     0x149a00  2      OPC=1157  
  movl %edi, %edi               #  2     0x149a02  2      OPC=1157  
  testq %rsi, %rsi              #  3     0x149a04  3      OPC=2438  
  je .L_149a40                  #  4     0x149a07  6      OPC=893   
  nop                           #  5     0x149a0d  1      OPC=1343  
  nop                           #  6     0x149a0e  1      OPC=1343  
  movl %esi, %esi               #  7     0x149a0f  2      OPC=1157  
  movl 0x4(%r15,%rsi,1), %eax   #  8     0x149a11  5      OPC=1156  
  shll $0x2, %eax               #  9     0x149a16  3      OPC=2269  
  movl %edi, %edi               #  10    0x149a19  2      OPC=1157  
  addl 0x4c(%r15,%rdi,1), %eax  #  11    0x149a1b  5      OPC=66    
  movl %eax, %eax               #  12    0x149a20  2      OPC=1157  
  movl (%r15,%rax,1), %edx      #  13    0x149a22  4      OPC=1156  
  movl %esi, %esi               #  14    0x149a26  2      OPC=1157  
  movl %edx, (%r15,%rsi,1)      #  15    0x149a28  4      OPC=1136  
  movl %eax, %eax               #  16    0x149a2c  2      OPC=1157  
  movl %esi, (%r15,%rax,1)      #  17    0x149a2e  4      OPC=1136  
  nop                           #  18    0x149a32  1      OPC=1343  
  nop                           #  19    0x149a33  1      OPC=1343  
  nop                           #  20    0x149a34  1      OPC=1343  
  nop                           #  21    0x149a35  1      OPC=1343  
  nop                           #  22    0x149a36  1      OPC=1343  
  nop                           #  23    0x149a37  1      OPC=1343  
  nop                           #  24    0x149a38  1      OPC=1343  
  nop                           #  25    0x149a39  1      OPC=1343  
  nop                           #  26    0x149a3a  1      OPC=1343  
  nop                           #  27    0x149a3b  1      OPC=1343  
  nop                           #  28    0x149a3c  1      OPC=1343  
  nop                           #  29    0x149a3d  1      OPC=1343  
  nop                           #  30    0x149a3e  1      OPC=1343  
  nop                           #  31    0x149a3f  1      OPC=1343  
  nop                           #  32    0x149a40  1      OPC=1343  
  nop                           #  33    0x149a41  1      OPC=1343  
  nop                           #  34    0x149a42  1      OPC=1343  
  nop                           #  35    0x149a43  1      OPC=1343  
  nop                           #  36    0x149a44  1      OPC=1343  
  nop                           #  37    0x149a45  1      OPC=1343  
.L_149a40:                      #        0x149a46  0      OPC=0     
  popq %r11                     #  38    0x149a46  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  39    0x149a48  7      OPC=131   
  nop                           #  40    0x149a4f  1      OPC=1343  
  nop                           #  41    0x149a50  1      OPC=1343  
  nop                           #  42    0x149a51  1      OPC=1343  
  nop                           #  43    0x149a52  1      OPC=1343  
  addq %r15, %r11               #  44    0x149a53  3      OPC=72    
  jmpq %r11                     #  45    0x149a56  3      OPC=928   
  nop                           #  46    0x149a59  1      OPC=1343  
  nop                           #  47    0x149a5a  1      OPC=1343  
  nop                           #  48    0x149a5b  1      OPC=1343  
  nop                           #  49    0x149a5c  1      OPC=1343  
  nop                           #  50    0x149a5d  1      OPC=1343  
  nop                           #  51    0x149a5e  1      OPC=1343  
  nop                           #  52    0x149a5f  1      OPC=1343  
  nop                           #  53    0x149a60  1      OPC=1343  
  nop                           #  54    0x149a61  1      OPC=1343  
  nop                           #  55    0x149a62  1      OPC=1343  
  nop                           #  56    0x149a63  1      OPC=1343  
  nop                           #  57    0x149a64  1      OPC=1343  
  nop                           #  58    0x149a65  1      OPC=1343  
  nop                           #  59    0x149a66  1      OPC=1343  
  nop                           #  60    0x149a67  1      OPC=1343  
  nop                           #  61    0x149a68  1      OPC=1343  
  nop                           #  62    0x149a69  1      OPC=1343  
  nop                           #  63    0x149a6a  1      OPC=1343  
  nop                           #  64    0x149a6b  1      OPC=1343  
  nop                           #  65    0x149a6c  1      OPC=1343  
                                                                    
.size _Bfree, .-_Bfree

