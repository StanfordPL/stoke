  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x183a00
#! rip-offset  0x143a00
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.wmemset:                  #        0x143a00  0      OPC=0     
  testl %edx, %edx         #  1     0x143a00  2      OPC=2436  
  movl %edi, %eax          #  2     0x143a02  2      OPC=1157  
  je .L_143a40             #  3     0x143a04  6      OPC=893   
  nop                      #  4     0x143a0a  1      OPC=1343  
  nop                      #  5     0x143a0b  1      OPC=1343  
  movq %rax, %r8           #  6     0x143a0c  3      OPC=1162  
  xorl %ecx, %ecx          #  7     0x143a0f  2      OPC=3758  
  nop                      #  8     0x143a11  1      OPC=1343  
  nop                      #  9     0x143a12  1      OPC=1343  
  nop                      #  10    0x143a13  1      OPC=1343  
  nop                      #  11    0x143a14  1      OPC=1343  
  nop                      #  12    0x143a15  1      OPC=1343  
  nop                      #  13    0x143a16  1      OPC=1343  
  nop                      #  14    0x143a17  1      OPC=1343  
  nop                      #  15    0x143a18  1      OPC=1343  
  nop                      #  16    0x143a19  1      OPC=1343  
  nop                      #  17    0x143a1a  1      OPC=1343  
  nop                      #  18    0x143a1b  1      OPC=1343  
  nop                      #  19    0x143a1c  1      OPC=1343  
  nop                      #  20    0x143a1d  1      OPC=1343  
  nop                      #  21    0x143a1e  1      OPC=1343  
  nop                      #  22    0x143a1f  1      OPC=1343  
  nop                      #  23    0x143a20  1      OPC=1343  
  nop                      #  24    0x143a21  1      OPC=1343  
  nop                      #  25    0x143a22  1      OPC=1343  
  nop                      #  26    0x143a23  1      OPC=1343  
  nop                      #  27    0x143a24  1      OPC=1343  
  nop                      #  28    0x143a25  1      OPC=1343  
.L_143a20:                 #        0x143a26  0      OPC=0     
  addl $0x1, %ecx          #  29    0x143a26  3      OPC=65    
  movl %r8d, %r8d          #  30    0x143a29  3      OPC=1157  
  movl %esi, (%r15,%r8,1)  #  31    0x143a2c  4      OPC=1136  
  addl $0x4, %r8d          #  32    0x143a30  4      OPC=65    
  cmpl %ecx, %edx          #  33    0x143a34  2      OPC=472   
  ja .L_143a20             #  34    0x143a36  6      OPC=863   
  nop                      #  35    0x143a3c  1      OPC=1343  
  nop                      #  36    0x143a3d  1      OPC=1343  
  nop                      #  37    0x143a3e  1      OPC=1343  
  nop                      #  38    0x143a3f  1      OPC=1343  
  nop                      #  39    0x143a40  1      OPC=1343  
  nop                      #  40    0x143a41  1      OPC=1343  
  nop                      #  41    0x143a42  1      OPC=1343  
  nop                      #  42    0x143a43  1      OPC=1343  
  nop                      #  43    0x143a44  1      OPC=1343  
  nop                      #  44    0x143a45  1      OPC=1343  
  nop                      #  45    0x143a46  1      OPC=1343  
  nop                      #  46    0x143a47  1      OPC=1343  
  nop                      #  47    0x143a48  1      OPC=1343  
  nop                      #  48    0x143a49  1      OPC=1343  
  nop                      #  49    0x143a4a  1      OPC=1343  
  nop                      #  50    0x143a4b  1      OPC=1343  
.L_143a40:                 #        0x143a4c  0      OPC=0     
  popq %r11                #  51    0x143a4c  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  52    0x143a4e  7      OPC=131   
  nop                      #  53    0x143a55  1      OPC=1343  
  nop                      #  54    0x143a56  1      OPC=1343  
  nop                      #  55    0x143a57  1      OPC=1343  
  nop                      #  56    0x143a58  1      OPC=1343  
  addq %r15, %r11          #  57    0x143a59  3      OPC=72    
  jmpq %r11                #  58    0x143a5c  3      OPC=928   
  nop                      #  59    0x143a5f  1      OPC=1343  
  nop                      #  60    0x143a60  1      OPC=1343  
  nop                      #  61    0x143a61  1      OPC=1343  
  nop                      #  62    0x143a62  1      OPC=1343  
  nop                      #  63    0x143a63  1      OPC=1343  
  nop                      #  64    0x143a64  1      OPC=1343  
  nop                      #  65    0x143a65  1      OPC=1343  
  nop                      #  66    0x143a66  1      OPC=1343  
  nop                      #  67    0x143a67  1      OPC=1343  
  nop                      #  68    0x143a68  1      OPC=1343  
  nop                      #  69    0x143a69  1      OPC=1343  
  nop                      #  70    0x143a6a  1      OPC=1343  
  nop                      #  71    0x143a6b  1      OPC=1343  
  nop                      #  72    0x143a6c  1      OPC=1343  
  nop                      #  73    0x143a6d  1      OPC=1343  
  nop                      #  74    0x143a6e  1      OPC=1343  
  nop                      #  75    0x143a6f  1      OPC=1343  
  nop                      #  76    0x143a70  1      OPC=1343  
  nop                      #  77    0x143a71  1      OPC=1343  
  nop                      #  78    0x143a72  1      OPC=1343  
                                                               
.size wmemset, .-wmemset

