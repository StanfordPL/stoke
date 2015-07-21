  .text
  .globl __register_frame
  .type __register_frame, @function

#! file-offset 0x14f7a0
#! rip-offset  0x10f7a0
#! capacity    96 bytes

# Text                         #  Line  RIP       Bytes  Opcode    
.__register_frame:             #        0x10f7a0  0      OPC=0     
  pushq %rbx                   #  1     0x10f7a0  1      OPC=1861  
  movl %edi, %ebx              #  2     0x10f7a1  2      OPC=1157  
  movl %ebx, %ebx              #  3     0x10f7a3  2      OPC=1157  
  movl (%r15,%rbx,1), %eax     #  4     0x10f7a5  4      OPC=1156  
  testl %eax, %eax             #  5     0x10f7a9  2      OPC=2436  
  jne .L_10f7c0                #  6     0x10f7ab  6      OPC=963   
  nop                          #  7     0x10f7b1  1      OPC=1343  
  nop                          #  8     0x10f7b2  1      OPC=1343  
  popq %rbx                    #  9     0x10f7b3  1      OPC=1694  
  popq %r11                    #  10    0x10f7b4  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  11    0x10f7b6  7      OPC=131   
  nop                          #  12    0x10f7bd  1      OPC=1343  
  nop                          #  13    0x10f7be  1      OPC=1343  
  nop                          #  14    0x10f7bf  1      OPC=1343  
  nop                          #  15    0x10f7c0  1      OPC=1343  
  addq %r15, %r11              #  16    0x10f7c1  3      OPC=72    
  jmpq %r11                    #  17    0x10f7c4  3      OPC=928   
  nop                          #  18    0x10f7c7  1      OPC=1343  
  nop                          #  19    0x10f7c8  1      OPC=1343  
  nop                          #  20    0x10f7c9  1      OPC=1343  
  nop                          #  21    0x10f7ca  1      OPC=1343  
  nop                          #  22    0x10f7cb  1      OPC=1343  
  nop                          #  23    0x10f7cc  1      OPC=1343  
.L_10f7c0:                     #        0x10f7cd  0      OPC=0     
  movl $0x18, %edi             #  24    0x10f7cd  5      OPC=1154  
  nop                          #  25    0x10f7d2  1      OPC=1343  
  nop                          #  26    0x10f7d3  1      OPC=1343  
  nop                          #  27    0x10f7d4  1      OPC=1343  
  nop                          #  28    0x10f7d5  1      OPC=1343  
  nop                          #  29    0x10f7d6  1      OPC=1343  
  nop                          #  30    0x10f7d7  1      OPC=1343  
  nop                          #  31    0x10f7d8  1      OPC=1343  
  nop                          #  32    0x10f7d9  1      OPC=1343  
  nop                          #  33    0x10f7da  1      OPC=1343  
  nop                          #  34    0x10f7db  1      OPC=1343  
  nop                          #  35    0x10f7dc  1      OPC=1343  
  nop                          #  36    0x10f7dd  1      OPC=1343  
  nop                          #  37    0x10f7de  1      OPC=1343  
  nop                          #  38    0x10f7df  1      OPC=1343  
  nop                          #  39    0x10f7e0  1      OPC=1343  
  nop                          #  40    0x10f7e1  1      OPC=1343  
  nop                          #  41    0x10f7e2  1      OPC=1343  
  nop                          #  42    0x10f7e3  1      OPC=1343  
  nop                          #  43    0x10f7e4  1      OPC=1343  
  nop                          #  44    0x10f7e5  1      OPC=1343  
  nop                          #  45    0x10f7e6  1      OPC=1343  
  nop                          #  46    0x10f7e7  1      OPC=1343  
  callq .malloc                #  47    0x10f7e8  5      OPC=260   
  movl %ebx, %edi              #  48    0x10f7ed  2      OPC=1157  
  movl %eax, %esi              #  49    0x10f7ef  2      OPC=1157  
  popq %rbx                    #  50    0x10f7f1  1      OPC=1694  
  jmpq .__register_frame_info  #  51    0x10f7f2  5      OPC=930   
  nop                          #  52    0x10f7f7  1      OPC=1343  
  nop                          #  53    0x10f7f8  1      OPC=1343  
  nop                          #  54    0x10f7f9  1      OPC=1343  
  nop                          #  55    0x10f7fa  1      OPC=1343  
  nop                          #  56    0x10f7fb  1      OPC=1343  
  nop                          #  57    0x10f7fc  1      OPC=1343  
  nop                          #  58    0x10f7fd  1      OPC=1343  
  nop                          #  59    0x10f7fe  1      OPC=1343  
  nop                          #  60    0x10f7ff  1      OPC=1343  
  nop                          #  61    0x10f800  1      OPC=1343  
  nop                          #  62    0x10f801  1      OPC=1343  
  nop                          #  63    0x10f802  1      OPC=1343  
  nop                          #  64    0x10f803  1      OPC=1343  
  nop                          #  65    0x10f804  1      OPC=1343  
  nop                          #  66    0x10f805  1      OPC=1343  
  nop                          #  67    0x10f806  1      OPC=1343  
  nop                          #  68    0x10f807  1      OPC=1343  
  nop                          #  69    0x10f808  1      OPC=1343  
  nop                          #  70    0x10f809  1      OPC=1343  
  nop                          #  71    0x10f80a  1      OPC=1343  
  nop                          #  72    0x10f80b  1      OPC=1343  
  nop                          #  73    0x10f80c  1      OPC=1343  
                                                                   
.size __register_frame, .-__register_frame

