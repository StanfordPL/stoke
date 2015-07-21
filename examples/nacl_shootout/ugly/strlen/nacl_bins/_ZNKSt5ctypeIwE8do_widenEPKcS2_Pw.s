  .text
  .globl _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw
  .type _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw, @function

#! file-offset 0x13c4c0
#! rip-offset  0xfc4c0
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  Opcode    
._ZNKSt5ctypeIwE8do_widenEPKcS2_Pw:  #        0xfc4c0  0      OPC=0     
  movl %esi, %esi                    #  1     0xfc4c0  2      OPC=1157  
  movl %edx, %eax                    #  2     0xfc4c2  2      OPC=1157  
  movl %edi, %edi                    #  3     0xfc4c4  2      OPC=1157  
  cmpl %eax, %esi                    #  4     0xfc4c6  2      OPC=472   
  movl %ecx, %ecx                    #  5     0xfc4c8  2      OPC=1157  
  jae .L_fc520                       #  6     0xfc4ca  6      OPC=869   
  nop                                #  7     0xfc4d0  1      OPC=1343  
  nop                                #  8     0xfc4d1  1      OPC=1343  
  nop                                #  9     0xfc4d2  1      OPC=1343  
  nop                                #  10    0xfc4d3  1      OPC=1343  
  nop                                #  11    0xfc4d4  1      OPC=1343  
  nop                                #  12    0xfc4d5  1      OPC=1343  
  nop                                #  13    0xfc4d6  1      OPC=1343  
  nop                                #  14    0xfc4d7  1      OPC=1343  
  nop                                #  15    0xfc4d8  1      OPC=1343  
  nop                                #  16    0xfc4d9  1      OPC=1343  
  nop                                #  17    0xfc4da  1      OPC=1343  
  nop                                #  18    0xfc4db  1      OPC=1343  
  nop                                #  19    0xfc4dc  1      OPC=1343  
  nop                                #  20    0xfc4dd  1      OPC=1343  
  nop                                #  21    0xfc4de  1      OPC=1343  
  nop                                #  22    0xfc4df  1      OPC=1343  
  nop                                #  23    0xfc4e0  1      OPC=1343  
  nop                                #  24    0xfc4e1  1      OPC=1343  
  nop                                #  25    0xfc4e2  1      OPC=1343  
  nop                                #  26    0xfc4e3  1      OPC=1343  
  nop                                #  27    0xfc4e4  1      OPC=1343  
  nop                                #  28    0xfc4e5  1      OPC=1343  
.L_fc4e0:                            #        0xfc4e6  0      OPC=0     
  movl %esi, %esi                    #  29    0xfc4e6  2      OPC=1157  
  movzbl (%r15,%rsi,1), %r8d         #  30    0xfc4e8  5      OPC=1302  
  addl $0x1, %esi                    #  31    0xfc4ed  3      OPC=65    
  leaq 0x90(%rdi,%r8,4), %r8         #  32    0xfc4f0  8      OPC=1069  
  movl %r8d, %r8d                    #  33    0xfc4f8  3      OPC=1157  
  movl (%r15,%r8,1), %r8d            #  34    0xfc4fb  4      OPC=1156  
  movl %ecx, %ecx                    #  35    0xfc4ff  2      OPC=1157  
  movl %r8d, (%r15,%rcx,1)           #  36    0xfc501  4      OPC=1136  
  nop                                #  37    0xfc505  1      OPC=1343  
  addl $0x4, %ecx                    #  38    0xfc506  3      OPC=65    
  cmpl %esi, %eax                    #  39    0xfc509  2      OPC=472   
  ja .L_fc4e0                        #  40    0xfc50b  6      OPC=863   
  nop                                #  41    0xfc511  1      OPC=1343  
  nop                                #  42    0xfc512  1      OPC=1343  
  nop                                #  43    0xfc513  1      OPC=1343  
  nop                                #  44    0xfc514  1      OPC=1343  
  nop                                #  45    0xfc515  1      OPC=1343  
  nop                                #  46    0xfc516  1      OPC=1343  
  nop                                #  47    0xfc517  1      OPC=1343  
  nop                                #  48    0xfc518  1      OPC=1343  
  nop                                #  49    0xfc519  1      OPC=1343  
  nop                                #  50    0xfc51a  1      OPC=1343  
  nop                                #  51    0xfc51b  1      OPC=1343  
  nop                                #  52    0xfc51c  1      OPC=1343  
  nop                                #  53    0xfc51d  1      OPC=1343  
  nop                                #  54    0xfc51e  1      OPC=1343  
  nop                                #  55    0xfc51f  1      OPC=1343  
  nop                                #  56    0xfc520  1      OPC=1343  
  nop                                #  57    0xfc521  1      OPC=1343  
  nop                                #  58    0xfc522  1      OPC=1343  
  nop                                #  59    0xfc523  1      OPC=1343  
  nop                                #  60    0xfc524  1      OPC=1343  
  nop                                #  61    0xfc525  1      OPC=1343  
  nop                                #  62    0xfc526  1      OPC=1343  
  nop                                #  63    0xfc527  1      OPC=1343  
  nop                                #  64    0xfc528  1      OPC=1343  
  nop                                #  65    0xfc529  1      OPC=1343  
  nop                                #  66    0xfc52a  1      OPC=1343  
  nop                                #  67    0xfc52b  1      OPC=1343  
.L_fc520:                            #        0xfc52c  0      OPC=0     
  popq %r11                          #  68    0xfc52c  2      OPC=1694  
  andl $0xffffffe0, %r11d            #  69    0xfc52e  7      OPC=131   
  nop                                #  70    0xfc535  1      OPC=1343  
  nop                                #  71    0xfc536  1      OPC=1343  
  nop                                #  72    0xfc537  1      OPC=1343  
  nop                                #  73    0xfc538  1      OPC=1343  
  addq %r15, %r11                    #  74    0xfc539  3      OPC=72    
  jmpq %r11                          #  75    0xfc53c  3      OPC=928   
  nop                                #  76    0xfc53f  1      OPC=1343  
  nop                                #  77    0xfc540  1      OPC=1343  
  nop                                #  78    0xfc541  1      OPC=1343  
  nop                                #  79    0xfc542  1      OPC=1343  
  nop                                #  80    0xfc543  1      OPC=1343  
  nop                                #  81    0xfc544  1      OPC=1343  
  nop                                #  82    0xfc545  1      OPC=1343  
  nop                                #  83    0xfc546  1      OPC=1343  
  nop                                #  84    0xfc547  1      OPC=1343  
  nop                                #  85    0xfc548  1      OPC=1343  
  nop                                #  86    0xfc549  1      OPC=1343  
  nop                                #  87    0xfc54a  1      OPC=1343  
  nop                                #  88    0xfc54b  1      OPC=1343  
  nop                                #  89    0xfc54c  1      OPC=1343  
  nop                                #  90    0xfc54d  1      OPC=1343  
  nop                                #  91    0xfc54e  1      OPC=1343  
  nop                                #  92    0xfc54f  1      OPC=1343  
  nop                                #  93    0xfc550  1      OPC=1343  
  nop                                #  94    0xfc551  1      OPC=1343  
  nop                                #  95    0xfc552  1      OPC=1343  
                                                                        
.size _ZNKSt5ctypeIwE8do_widenEPKcS2_Pw, .-_ZNKSt5ctypeIwE8do_widenEPKcS2_Pw

