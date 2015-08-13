  .text
  .globl _ZNKSt11__timepunctIwE19_M_days_abbreviatedEPPKw
  .type _ZNKSt11__timepunctIwE19_M_days_abbreviatedEPPKw, @function

#! file-offset 0xf1000
#! rip-offset  0xb1000
#! capacity    160 bytes

# Text                                              #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE19_M_days_abbreviatedEPPKw:  #        0xb1000  0      OPC=<label>         
  movl %edi, %edi                                   #  1     0xb1000  2      OPC=movl_r32_r32    
  movl %esi, %esi                                   #  2     0xb1002  2      OPC=movl_r32_r32    
  movl %edi, %edi                                   #  3     0xb1004  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                       #  4     0xb1006  5      OPC=movl_r32_m32    
  popq %r11                                         #  5     0xb100b  2      OPC=popq_r64_1      
  movl %eax, %eax                                   #  6     0xb100d  2      OPC=movl_r32_r32    
  movl 0x48(%r15,%rax,1), %edx                      #  7     0xb100f  5      OPC=movl_r32_m32    
  movl %esi, %esi                                   #  8     0xb1014  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)                          #  9     0xb1016  4      OPC=movl_m32_r32    
  nop                                               #  10    0xb101a  1      OPC=nop             
  nop                                               #  11    0xb101b  1      OPC=nop             
  nop                                               #  12    0xb101c  1      OPC=nop             
  nop                                               #  13    0xb101d  1      OPC=nop             
  nop                                               #  14    0xb101e  1      OPC=nop             
  nop                                               #  15    0xb101f  1      OPC=nop             
  movl %eax, %eax                                   #  16    0xb1020  2      OPC=movl_r32_r32    
  movl 0x4c(%r15,%rax,1), %edx                      #  17    0xb1022  5      OPC=movl_r32_m32    
  movl %esi, %esi                                   #  18    0xb1027  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)                       #  19    0xb1029  5      OPC=movl_m32_r32    
  movl %eax, %eax                                   #  20    0xb102e  2      OPC=movl_r32_r32    
  movl 0x50(%r15,%rax,1), %edx                      #  21    0xb1030  5      OPC=movl_r32_m32    
  movl %esi, %esi                                   #  22    0xb1035  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rsi,1)                       #  23    0xb1037  5      OPC=movl_m32_r32    
  nop                                               #  24    0xb103c  1      OPC=nop             
  nop                                               #  25    0xb103d  1      OPC=nop             
  nop                                               #  26    0xb103e  1      OPC=nop             
  nop                                               #  27    0xb103f  1      OPC=nop             
  movl %eax, %eax                                   #  28    0xb1040  2      OPC=movl_r32_r32    
  movl 0x54(%r15,%rax,1), %edx                      #  29    0xb1042  5      OPC=movl_r32_m32    
  movl %esi, %esi                                   #  30    0xb1047  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)                       #  31    0xb1049  5      OPC=movl_m32_r32    
  movl %eax, %eax                                   #  32    0xb104e  2      OPC=movl_r32_r32    
  movl 0x58(%r15,%rax,1), %edx                      #  33    0xb1050  5      OPC=movl_r32_m32    
  movl %esi, %esi                                   #  34    0xb1055  2      OPC=movl_r32_r32    
  movl %edx, 0x10(%r15,%rsi,1)                      #  35    0xb1057  5      OPC=movl_m32_r32    
  nop                                               #  36    0xb105c  1      OPC=nop             
  nop                                               #  37    0xb105d  1      OPC=nop             
  nop                                               #  38    0xb105e  1      OPC=nop             
  nop                                               #  39    0xb105f  1      OPC=nop             
  movl %eax, %eax                                   #  40    0xb1060  2      OPC=movl_r32_r32    
  movl 0x5c(%r15,%rax,1), %edx                      #  41    0xb1062  5      OPC=movl_r32_m32    
  movl %esi, %esi                                   #  42    0xb1067  2      OPC=movl_r32_r32    
  movl %edx, 0x14(%r15,%rsi,1)                      #  43    0xb1069  5      OPC=movl_m32_r32    
  movl %eax, %eax                                   #  44    0xb106e  2      OPC=movl_r32_r32    
  movl 0x60(%r15,%rax,1), %eax                      #  45    0xb1070  5      OPC=movl_r32_m32    
  movl %esi, %esi                                   #  46    0xb1075  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rsi,1)                      #  47    0xb1077  5      OPC=movl_m32_r32    
  nop                                               #  48    0xb107c  1      OPC=nop             
  nop                                               #  49    0xb107d  1      OPC=nop             
  nop                                               #  50    0xb107e  1      OPC=nop             
  nop                                               #  51    0xb107f  1      OPC=nop             
  andl $0xffffffe0, %r11d                           #  52    0xb1080  7      OPC=andl_r32_imm32  
  nop                                               #  53    0xb1087  1      OPC=nop             
  nop                                               #  54    0xb1088  1      OPC=nop             
  nop                                               #  55    0xb1089  1      OPC=nop             
  nop                                               #  56    0xb108a  1      OPC=nop             
  addq %r15, %r11                                   #  57    0xb108b  3      OPC=addq_r64_r64    
  jmpq %r11                                         #  58    0xb108e  3      OPC=jmpq_r64        
  nop                                               #  59    0xb1091  1      OPC=nop             
  nop                                               #  60    0xb1092  1      OPC=nop             
  nop                                               #  61    0xb1093  1      OPC=nop             
  nop                                               #  62    0xb1094  1      OPC=nop             
  nop                                               #  63    0xb1095  1      OPC=nop             
  nop                                               #  64    0xb1096  1      OPC=nop             
  nop                                               #  65    0xb1097  1      OPC=nop             
  nop                                               #  66    0xb1098  1      OPC=nop             
  nop                                               #  67    0xb1099  1      OPC=nop             
  nop                                               #  68    0xb109a  1      OPC=nop             
  nop                                               #  69    0xb109b  1      OPC=nop             
  nop                                               #  70    0xb109c  1      OPC=nop             
  nop                                               #  71    0xb109d  1      OPC=nop             
  nop                                               #  72    0xb109e  1      OPC=nop             
  nop                                               #  73    0xb109f  1      OPC=nop             
  nop                                               #  74    0xb10a0  1      OPC=nop             
  nop                                               #  75    0xb10a1  1      OPC=nop             
  nop                                               #  76    0xb10a2  1      OPC=nop             
  nop                                               #  77    0xb10a3  1      OPC=nop             
  nop                                               #  78    0xb10a4  1      OPC=nop             
  nop                                               #  79    0xb10a5  1      OPC=nop             
  nop                                               #  80    0xb10a6  1      OPC=nop             
                                                                                                 
.size _ZNKSt11__timepunctIwE19_M_days_abbreviatedEPPKw, .-_ZNKSt11__timepunctIwE19_M_days_abbreviatedEPPKw

