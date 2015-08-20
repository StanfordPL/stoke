  .text
  .globl _ZNKSt11__timepunctIwE7_M_daysEPPKw
  .type _ZNKSt11__timepunctIwE7_M_daysEPPKw, @function

#! file-offset 0xf1260
#! rip-offset  0xb1260
#! capacity    160 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE7_M_daysEPPKw:  #        0xb1260  0      OPC=<label>         
  movl %edi, %edi                      #  1     0xb1260  2      OPC=movl_r32_r32    
  movl %esi, %esi                      #  2     0xb1262  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  3     0xb1264  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax          #  4     0xb1266  5      OPC=movl_r32_m32    
  popq %r11                            #  5     0xb126b  2      OPC=popq_r64_1      
  movl %eax, %eax                      #  6     0xb126d  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %edx         #  7     0xb126f  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  8     0xb1274  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)             #  9     0xb1276  4      OPC=movl_m32_r32    
  nop                                  #  10    0xb127a  1      OPC=nop             
  nop                                  #  11    0xb127b  1      OPC=nop             
  nop                                  #  12    0xb127c  1      OPC=nop             
  nop                                  #  13    0xb127d  1      OPC=nop             
  nop                                  #  14    0xb127e  1      OPC=nop             
  nop                                  #  15    0xb127f  1      OPC=nop             
  movl %eax, %eax                      #  16    0xb1280  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %edx         #  17    0xb1282  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  18    0xb1287  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)          #  19    0xb1289  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  20    0xb128e  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %edx         #  21    0xb1290  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  22    0xb1295  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rsi,1)          #  23    0xb1297  5      OPC=movl_m32_r32    
  nop                                  #  24    0xb129c  1      OPC=nop             
  nop                                  #  25    0xb129d  1      OPC=nop             
  nop                                  #  26    0xb129e  1      OPC=nop             
  nop                                  #  27    0xb129f  1      OPC=nop             
  movl %eax, %eax                      #  28    0xb12a0  2      OPC=movl_r32_r32    
  movl 0x38(%r15,%rax,1), %edx         #  29    0xb12a2  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  30    0xb12a7  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)          #  31    0xb12a9  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  32    0xb12ae  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rax,1), %edx         #  33    0xb12b0  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  34    0xb12b5  2      OPC=movl_r32_r32    
  movl %edx, 0x10(%r15,%rsi,1)         #  35    0xb12b7  5      OPC=movl_m32_r32    
  nop                                  #  36    0xb12bc  1      OPC=nop             
  nop                                  #  37    0xb12bd  1      OPC=nop             
  nop                                  #  38    0xb12be  1      OPC=nop             
  nop                                  #  39    0xb12bf  1      OPC=nop             
  movl %eax, %eax                      #  40    0xb12c0  2      OPC=movl_r32_r32    
  movl 0x40(%r15,%rax,1), %edx         #  41    0xb12c2  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  42    0xb12c7  2      OPC=movl_r32_r32    
  movl %edx, 0x14(%r15,%rsi,1)         #  43    0xb12c9  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  44    0xb12ce  2      OPC=movl_r32_r32    
  movl 0x44(%r15,%rax,1), %eax         #  45    0xb12d0  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  46    0xb12d5  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rsi,1)         #  47    0xb12d7  5      OPC=movl_m32_r32    
  nop                                  #  48    0xb12dc  1      OPC=nop             
  nop                                  #  49    0xb12dd  1      OPC=nop             
  nop                                  #  50    0xb12de  1      OPC=nop             
  nop                                  #  51    0xb12df  1      OPC=nop             
  andl $0xffffffe0, %r11d              #  52    0xb12e0  7      OPC=andl_r32_imm32  
  nop                                  #  53    0xb12e7  1      OPC=nop             
  nop                                  #  54    0xb12e8  1      OPC=nop             
  nop                                  #  55    0xb12e9  1      OPC=nop             
  nop                                  #  56    0xb12ea  1      OPC=nop             
  addq %r15, %r11                      #  57    0xb12eb  3      OPC=addq_r64_r64    
  jmpq %r11                            #  58    0xb12ee  3      OPC=jmpq_r64        
  nop                                  #  59    0xb12f1  1      OPC=nop             
  nop                                  #  60    0xb12f2  1      OPC=nop             
  nop                                  #  61    0xb12f3  1      OPC=nop             
  nop                                  #  62    0xb12f4  1      OPC=nop             
  nop                                  #  63    0xb12f5  1      OPC=nop             
  nop                                  #  64    0xb12f6  1      OPC=nop             
  nop                                  #  65    0xb12f7  1      OPC=nop             
  nop                                  #  66    0xb12f8  1      OPC=nop             
  nop                                  #  67    0xb12f9  1      OPC=nop             
  nop                                  #  68    0xb12fa  1      OPC=nop             
  nop                                  #  69    0xb12fb  1      OPC=nop             
  nop                                  #  70    0xb12fc  1      OPC=nop             
  nop                                  #  71    0xb12fd  1      OPC=nop             
  nop                                  #  72    0xb12fe  1      OPC=nop             
  nop                                  #  73    0xb12ff  1      OPC=nop             
  nop                                  #  74    0xb1300  1      OPC=nop             
  nop                                  #  75    0xb1301  1      OPC=nop             
  nop                                  #  76    0xb1302  1      OPC=nop             
  nop                                  #  77    0xb1303  1      OPC=nop             
  nop                                  #  78    0xb1304  1      OPC=nop             
  nop                                  #  79    0xb1305  1      OPC=nop             
  nop                                  #  80    0xb1306  1      OPC=nop             
                                                                                    
.size _ZNKSt11__timepunctIwE7_M_daysEPPKw, .-_ZNKSt11__timepunctIwE7_M_daysEPPKw

