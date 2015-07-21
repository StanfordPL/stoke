  .text
  .globl PPP_InitializeModule
  .type PPP_InitializeModule, @function

#! file-offset 0x6be60
#! rip-offset  0x2be60
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.PPP_InitializeModule:         #        0x2be60  0      OPC=0     
  pushq %rbx                   #  1     0x2be60  1      OPC=1861  
  movl %esi, %ebx              #  2     0x2be61  2      OPC=1157  
  movl %edi, 0x10045773(%rip)  #  3     0x2be63  6      OPC=1136  
  movl $0x10039c68, %edi       #  4     0x2be69  5      OPC=1154  
  nop                          #  5     0x2be6e  1      OPC=1343  
  nop                          #  6     0x2be6f  1      OPC=1343  
  nop                          #  7     0x2be70  1      OPC=1343  
  nop                          #  8     0x2be71  1      OPC=1343  
  nop                          #  9     0x2be72  1      OPC=1343  
  nop                          #  10    0x2be73  1      OPC=1343  
  nop                          #  11    0x2be74  1      OPC=1343  
  nop                          #  12    0x2be75  1      OPC=1343  
  nop                          #  13    0x2be76  1      OPC=1343  
  nop                          #  14    0x2be77  1      OPC=1343  
  andl $0xffffffe0, %ebx       #  15    0x2be78  6      OPC=131   
  nop                          #  16    0x2be7e  1      OPC=1343  
  nop                          #  17    0x2be7f  1      OPC=1343  
  nop                          #  18    0x2be80  1      OPC=1343  
  addq %r15, %rbx              #  19    0x2be81  3      OPC=72    
  callq %rbx                   #  20    0x2be84  2      OPC=258   
  movl %eax, 0x1004574e(%rip)  #  21    0x2be86  6      OPC=1136  
  movl $0x10039c7a, %edi       #  22    0x2be8c  5      OPC=1154  
  nop                          #  23    0x2be91  1      OPC=1343  
  nop                          #  24    0x2be92  1      OPC=1343  
  nop                          #  25    0x2be93  1      OPC=1343  
  nop                          #  26    0x2be94  1      OPC=1343  
  nop                          #  27    0x2be95  1      OPC=1343  
  nop                          #  28    0x2be96  1      OPC=1343  
  nop                          #  29    0x2be97  1      OPC=1343  
  nop                          #  30    0x2be98  1      OPC=1343  
  nop                          #  31    0x2be99  1      OPC=1343  
  nop                          #  32    0x2be9a  1      OPC=1343  
  nop                          #  33    0x2be9b  1      OPC=1343  
  nop                          #  34    0x2be9c  1      OPC=1343  
  nop                          #  35    0x2be9d  1      OPC=1343  
  andl $0xffffffe0, %ebx       #  36    0x2be9e  6      OPC=131   
  nop                          #  37    0x2bea4  1      OPC=1343  
  nop                          #  38    0x2bea5  1      OPC=1343  
  nop                          #  39    0x2bea6  1      OPC=1343  
  addq %r15, %rbx              #  40    0x2bea7  3      OPC=72    
  callq %rbx                   #  41    0x2beaa  2      OPC=258   
  movl %eax, 0x10045732(%rip)  #  42    0x2beac  6      OPC=1136  
  movl $0x10039c86, %edi       #  43    0x2beb2  5      OPC=1154  
  nop                          #  44    0x2beb7  1      OPC=1343  
  nop                          #  45    0x2beb8  1      OPC=1343  
  nop                          #  46    0x2beb9  1      OPC=1343  
  nop                          #  47    0x2beba  1      OPC=1343  
  nop                          #  48    0x2bebb  1      OPC=1343  
  nop                          #  49    0x2bebc  1      OPC=1343  
  nop                          #  50    0x2bebd  1      OPC=1343  
  nop                          #  51    0x2bebe  1      OPC=1343  
  nop                          #  52    0x2bebf  1      OPC=1343  
  nop                          #  53    0x2bec0  1      OPC=1343  
  nop                          #  54    0x2bec1  1      OPC=1343  
  nop                          #  55    0x2bec2  1      OPC=1343  
  nop                          #  56    0x2bec3  1      OPC=1343  
  andl $0xffffffe0, %ebx       #  57    0x2bec4  6      OPC=131   
  nop                          #  58    0x2beca  1      OPC=1343  
  nop                          #  59    0x2becb  1      OPC=1343  
  nop                          #  60    0x2becc  1      OPC=1343  
  addq %r15, %rbx              #  61    0x2becd  3      OPC=72    
  callq %rbx                   #  62    0x2bed0  2      OPC=258   
  movl %eax, 0x1004570a(%rip)  #  63    0x2bed2  6      OPC=1136  
  xorl %eax, %eax              #  64    0x2bed8  2      OPC=3758  
  popq %rbx                    #  65    0x2beda  1      OPC=1694  
  popq %r11                    #  66    0x2bedb  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  67    0x2bedd  7      OPC=131   
  nop                          #  68    0x2bee4  1      OPC=1343  
  nop                          #  69    0x2bee5  1      OPC=1343  
  nop                          #  70    0x2bee6  1      OPC=1343  
  nop                          #  71    0x2bee7  1      OPC=1343  
  addq %r15, %r11              #  72    0x2bee8  3      OPC=72    
  jmpq %r11                    #  73    0x2beeb  3      OPC=928   
  nop                          #  74    0x2beee  1      OPC=1343  
  nop                          #  75    0x2beef  1      OPC=1343  
  nop                          #  76    0x2bef0  1      OPC=1343  
  nop                          #  77    0x2bef1  1      OPC=1343  
  nop                          #  78    0x2bef2  1      OPC=1343  
  nop                          #  79    0x2bef3  1      OPC=1343  
  nop                          #  80    0x2bef4  1      OPC=1343  
  nop                          #  81    0x2bef5  1      OPC=1343  
  nop                          #  82    0x2bef6  1      OPC=1343  
  nop                          #  83    0x2bef7  1      OPC=1343  
  nop                          #  84    0x2bef8  1      OPC=1343  
                                                                  
.size PPP_InitializeModule, .-PPP_InitializeModule

