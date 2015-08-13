  .text
  .globl _ZNKSt11__timepunctIwE7_M_daysEPPKw
  .type _ZNKSt11__timepunctIwE7_M_daysEPPKw, @function

#! file-offset 0xf0f60
#! rip-offset  0xb0f60
#! capacity    160 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE7_M_daysEPPKw:  #        0xb0f60  0      OPC=<label>         
  movl %edi, %edi                      #  1     0xb0f60  2      OPC=movl_r32_r32    
  movl %esi, %esi                      #  2     0xb0f62  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  3     0xb0f64  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax          #  4     0xb0f66  5      OPC=movl_r32_m32    
  popq %r11                            #  5     0xb0f6b  2      OPC=popq_r64_1      
  movl %eax, %eax                      #  6     0xb0f6d  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %edx         #  7     0xb0f6f  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  8     0xb0f74  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)             #  9     0xb0f76  4      OPC=movl_m32_r32    
  nop                                  #  10    0xb0f7a  1      OPC=nop             
  nop                                  #  11    0xb0f7b  1      OPC=nop             
  nop                                  #  12    0xb0f7c  1      OPC=nop             
  nop                                  #  13    0xb0f7d  1      OPC=nop             
  nop                                  #  14    0xb0f7e  1      OPC=nop             
  nop                                  #  15    0xb0f7f  1      OPC=nop             
  movl %eax, %eax                      #  16    0xb0f80  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %edx         #  17    0xb0f82  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  18    0xb0f87  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)          #  19    0xb0f89  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  20    0xb0f8e  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %edx         #  21    0xb0f90  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  22    0xb0f95  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rsi,1)          #  23    0xb0f97  5      OPC=movl_m32_r32    
  nop                                  #  24    0xb0f9c  1      OPC=nop             
  nop                                  #  25    0xb0f9d  1      OPC=nop             
  nop                                  #  26    0xb0f9e  1      OPC=nop             
  nop                                  #  27    0xb0f9f  1      OPC=nop             
  movl %eax, %eax                      #  28    0xb0fa0  2      OPC=movl_r32_r32    
  movl 0x38(%r15,%rax,1), %edx         #  29    0xb0fa2  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  30    0xb0fa7  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)          #  31    0xb0fa9  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  32    0xb0fae  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rax,1), %edx         #  33    0xb0fb0  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  34    0xb0fb5  2      OPC=movl_r32_r32    
  movl %edx, 0x10(%r15,%rsi,1)         #  35    0xb0fb7  5      OPC=movl_m32_r32    
  nop                                  #  36    0xb0fbc  1      OPC=nop             
  nop                                  #  37    0xb0fbd  1      OPC=nop             
  nop                                  #  38    0xb0fbe  1      OPC=nop             
  nop                                  #  39    0xb0fbf  1      OPC=nop             
  movl %eax, %eax                      #  40    0xb0fc0  2      OPC=movl_r32_r32    
  movl 0x40(%r15,%rax,1), %edx         #  41    0xb0fc2  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  42    0xb0fc7  2      OPC=movl_r32_r32    
  movl %edx, 0x14(%r15,%rsi,1)         #  43    0xb0fc9  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  44    0xb0fce  2      OPC=movl_r32_r32    
  movl 0x44(%r15,%rax,1), %eax         #  45    0xb0fd0  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  46    0xb0fd5  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rsi,1)         #  47    0xb0fd7  5      OPC=movl_m32_r32    
  nop                                  #  48    0xb0fdc  1      OPC=nop             
  nop                                  #  49    0xb0fdd  1      OPC=nop             
  nop                                  #  50    0xb0fde  1      OPC=nop             
  nop                                  #  51    0xb0fdf  1      OPC=nop             
  andl $0xffffffe0, %r11d              #  52    0xb0fe0  7      OPC=andl_r32_imm32  
  nop                                  #  53    0xb0fe7  1      OPC=nop             
  nop                                  #  54    0xb0fe8  1      OPC=nop             
  nop                                  #  55    0xb0fe9  1      OPC=nop             
  nop                                  #  56    0xb0fea  1      OPC=nop             
  addq %r15, %r11                      #  57    0xb0feb  3      OPC=addq_r64_r64    
  jmpq %r11                            #  58    0xb0fee  3      OPC=jmpq_r64        
  nop                                  #  59    0xb0ff1  1      OPC=nop             
  nop                                  #  60    0xb0ff2  1      OPC=nop             
  nop                                  #  61    0xb0ff3  1      OPC=nop             
  nop                                  #  62    0xb0ff4  1      OPC=nop             
  nop                                  #  63    0xb0ff5  1      OPC=nop             
  nop                                  #  64    0xb0ff6  1      OPC=nop             
  nop                                  #  65    0xb0ff7  1      OPC=nop             
  nop                                  #  66    0xb0ff8  1      OPC=nop             
  nop                                  #  67    0xb0ff9  1      OPC=nop             
  nop                                  #  68    0xb0ffa  1      OPC=nop             
  nop                                  #  69    0xb0ffb  1      OPC=nop             
  nop                                  #  70    0xb0ffc  1      OPC=nop             
  nop                                  #  71    0xb0ffd  1      OPC=nop             
  nop                                  #  72    0xb0ffe  1      OPC=nop             
  nop                                  #  73    0xb0fff  1      OPC=nop             
  nop                                  #  74    0xb1000  1      OPC=nop             
  nop                                  #  75    0xb1001  1      OPC=nop             
  nop                                  #  76    0xb1002  1      OPC=nop             
  nop                                  #  77    0xb1003  1      OPC=nop             
  nop                                  #  78    0xb1004  1      OPC=nop             
  nop                                  #  79    0xb1005  1      OPC=nop             
  nop                                  #  80    0xb1006  1      OPC=nop             
                                                                                    
.size _ZNKSt11__timepunctIwE7_M_daysEPPKw, .-_ZNKSt11__timepunctIwE7_M_daysEPPKw

