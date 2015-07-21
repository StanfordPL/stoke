  .text
  .globl __deregister_frame
  .type __deregister_frame, @function

#! file-offset 0x150a20
#! rip-offset  0x110a20
#! capacity    128 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.__deregister_frame:              #        0x110a20  0      OPC=0     
  movl %edi, %edi                 #  1     0x110a20  2      OPC=1157  
  subl $0x8, %esp                 #  2     0x110a22  3      OPC=2384  
  addq %r15, %rsp                 #  3     0x110a25  3      OPC=72    
  movl %edi, %edi                 #  4     0x110a28  2      OPC=1157  
  movl (%r15,%rdi,1), %r11d       #  5     0x110a2a  4      OPC=1156  
  testl %r11d, %r11d              #  6     0x110a2e  3      OPC=2436  
  jne .L_110a60                   #  7     0x110a31  6      OPC=963   
  nop                             #  8     0x110a37  1      OPC=1343  
  nop                             #  9     0x110a38  1      OPC=1343  
  addl $0x8, %esp                 #  10    0x110a39  3      OPC=65    
  addq %r15, %rsp                 #  11    0x110a3c  3      OPC=72    
  popq %r11                       #  12    0x110a3f  2      OPC=1694  
  nop                             #  13    0x110a41  1      OPC=1343  
  nop                             #  14    0x110a42  1      OPC=1343  
  nop                             #  15    0x110a43  1      OPC=1343  
  nop                             #  16    0x110a44  1      OPC=1343  
  nop                             #  17    0x110a45  1      OPC=1343  
  andl $0xffffffe0, %r11d         #  18    0x110a46  7      OPC=131   
  nop                             #  19    0x110a4d  1      OPC=1343  
  nop                             #  20    0x110a4e  1      OPC=1343  
  nop                             #  21    0x110a4f  1      OPC=1343  
  nop                             #  22    0x110a50  1      OPC=1343  
  addq %r15, %r11                 #  23    0x110a51  3      OPC=72    
  jmpq %r11                       #  24    0x110a54  3      OPC=928   
  nop                             #  25    0x110a57  1      OPC=1343  
  nop                             #  26    0x110a58  1      OPC=1343  
  nop                             #  27    0x110a59  1      OPC=1343  
  nop                             #  28    0x110a5a  1      OPC=1343  
  nop                             #  29    0x110a5b  1      OPC=1343  
  nop                             #  30    0x110a5c  1      OPC=1343  
  nop                             #  31    0x110a5d  1      OPC=1343  
  nop                             #  32    0x110a5e  1      OPC=1343  
  nop                             #  33    0x110a5f  1      OPC=1343  
  nop                             #  34    0x110a60  1      OPC=1343  
  nop                             #  35    0x110a61  1      OPC=1343  
  nop                             #  36    0x110a62  1      OPC=1343  
  nop                             #  37    0x110a63  1      OPC=1343  
  nop                             #  38    0x110a64  1      OPC=1343  
  nop                             #  39    0x110a65  1      OPC=1343  
  nop                             #  40    0x110a66  1      OPC=1343  
  nop                             #  41    0x110a67  1      OPC=1343  
  nop                             #  42    0x110a68  1      OPC=1343  
  nop                             #  43    0x110a69  1      OPC=1343  
  nop                             #  44    0x110a6a  1      OPC=1343  
  nop                             #  45    0x110a6b  1      OPC=1343  
  nop                             #  46    0x110a6c  1      OPC=1343  
.L_110a60:                        #        0x110a6d  0      OPC=0     
  nop                             #  47    0x110a6d  1      OPC=1343  
  nop                             #  48    0x110a6e  1      OPC=1343  
  nop                             #  49    0x110a6f  1      OPC=1343  
  nop                             #  50    0x110a70  1      OPC=1343  
  nop                             #  51    0x110a71  1      OPC=1343  
  nop                             #  52    0x110a72  1      OPC=1343  
  nop                             #  53    0x110a73  1      OPC=1343  
  nop                             #  54    0x110a74  1      OPC=1343  
  nop                             #  55    0x110a75  1      OPC=1343  
  nop                             #  56    0x110a76  1      OPC=1343  
  nop                             #  57    0x110a77  1      OPC=1343  
  nop                             #  58    0x110a78  1      OPC=1343  
  nop                             #  59    0x110a79  1      OPC=1343  
  nop                             #  60    0x110a7a  1      OPC=1343  
  nop                             #  61    0x110a7b  1      OPC=1343  
  nop                             #  62    0x110a7c  1      OPC=1343  
  nop                             #  63    0x110a7d  1      OPC=1343  
  nop                             #  64    0x110a7e  1      OPC=1343  
  nop                             #  65    0x110a7f  1      OPC=1343  
  nop                             #  66    0x110a80  1      OPC=1343  
  nop                             #  67    0x110a81  1      OPC=1343  
  nop                             #  68    0x110a82  1      OPC=1343  
  nop                             #  69    0x110a83  1      OPC=1343  
  nop                             #  70    0x110a84  1      OPC=1343  
  nop                             #  71    0x110a85  1      OPC=1343  
  nop                             #  72    0x110a86  1      OPC=1343  
  nop                             #  73    0x110a87  1      OPC=1343  
  callq .__deregister_frame_info  #  74    0x110a88  5      OPC=260   
  addl $0x8, %esp                 #  75    0x110a8d  3      OPC=65    
  addq %r15, %rsp                 #  76    0x110a90  3      OPC=72    
  movl %eax, %edi                 #  77    0x110a93  2      OPC=1157  
  jmpq .free                      #  78    0x110a95  5      OPC=930   
  nop                             #  79    0x110a9a  1      OPC=1343  
  nop                             #  80    0x110a9b  1      OPC=1343  
  nop                             #  81    0x110a9c  1      OPC=1343  
  nop                             #  82    0x110a9d  1      OPC=1343  
  nop                             #  83    0x110a9e  1      OPC=1343  
  nop                             #  84    0x110a9f  1      OPC=1343  
  nop                             #  85    0x110aa0  1      OPC=1343  
  nop                             #  86    0x110aa1  1      OPC=1343  
  nop                             #  87    0x110aa2  1      OPC=1343  
  nop                             #  88    0x110aa3  1      OPC=1343  
  nop                             #  89    0x110aa4  1      OPC=1343  
  nop                             #  90    0x110aa5  1      OPC=1343  
  nop                             #  91    0x110aa6  1      OPC=1343  
  nop                             #  92    0x110aa7  1      OPC=1343  
  nop                             #  93    0x110aa8  1      OPC=1343  
  nop                             #  94    0x110aa9  1      OPC=1343  
  nop                             #  95    0x110aaa  1      OPC=1343  
  nop                             #  96    0x110aab  1      OPC=1343  
  nop                             #  97    0x110aac  1      OPC=1343  
                                                                      
.size __deregister_frame, .-__deregister_frame

