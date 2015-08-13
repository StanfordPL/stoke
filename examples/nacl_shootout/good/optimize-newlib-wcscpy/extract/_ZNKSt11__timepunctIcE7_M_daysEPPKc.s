  .text
  .globl _ZNKSt11__timepunctIcE7_M_daysEPPKc
  .type _ZNKSt11__timepunctIcE7_M_daysEPPKc, @function

#! file-offset 0xb7fc0
#! rip-offset  0x77fc0
#! capacity    160 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIcE7_M_daysEPPKc:  #        0x77fc0  0      OPC=<label>         
  movl %edi, %edi                      #  1     0x77fc0  2      OPC=movl_r32_r32    
  movl %esi, %esi                      #  2     0x77fc2  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  3     0x77fc4  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax          #  4     0x77fc6  5      OPC=movl_r32_m32    
  popq %r11                            #  5     0x77fcb  2      OPC=popq_r64_1      
  movl %eax, %eax                      #  6     0x77fcd  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %edx         #  7     0x77fcf  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  8     0x77fd4  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)             #  9     0x77fd6  4      OPC=movl_m32_r32    
  nop                                  #  10    0x77fda  1      OPC=nop             
  nop                                  #  11    0x77fdb  1      OPC=nop             
  nop                                  #  12    0x77fdc  1      OPC=nop             
  nop                                  #  13    0x77fdd  1      OPC=nop             
  nop                                  #  14    0x77fde  1      OPC=nop             
  nop                                  #  15    0x77fdf  1      OPC=nop             
  movl %eax, %eax                      #  16    0x77fe0  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %edx         #  17    0x77fe2  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  18    0x77fe7  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)          #  19    0x77fe9  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  20    0x77fee  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %edx         #  21    0x77ff0  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  22    0x77ff5  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rsi,1)          #  23    0x77ff7  5      OPC=movl_m32_r32    
  nop                                  #  24    0x77ffc  1      OPC=nop             
  nop                                  #  25    0x77ffd  1      OPC=nop             
  nop                                  #  26    0x77ffe  1      OPC=nop             
  nop                                  #  27    0x77fff  1      OPC=nop             
  movl %eax, %eax                      #  28    0x78000  2      OPC=movl_r32_r32    
  movl 0x38(%r15,%rax,1), %edx         #  29    0x78002  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  30    0x78007  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)          #  31    0x78009  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  32    0x7800e  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rax,1), %edx         #  33    0x78010  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  34    0x78015  2      OPC=movl_r32_r32    
  movl %edx, 0x10(%r15,%rsi,1)         #  35    0x78017  5      OPC=movl_m32_r32    
  nop                                  #  36    0x7801c  1      OPC=nop             
  nop                                  #  37    0x7801d  1      OPC=nop             
  nop                                  #  38    0x7801e  1      OPC=nop             
  nop                                  #  39    0x7801f  1      OPC=nop             
  movl %eax, %eax                      #  40    0x78020  2      OPC=movl_r32_r32    
  movl 0x40(%r15,%rax,1), %edx         #  41    0x78022  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  42    0x78027  2      OPC=movl_r32_r32    
  movl %edx, 0x14(%r15,%rsi,1)         #  43    0x78029  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  44    0x7802e  2      OPC=movl_r32_r32    
  movl 0x44(%r15,%rax,1), %eax         #  45    0x78030  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  46    0x78035  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rsi,1)         #  47    0x78037  5      OPC=movl_m32_r32    
  nop                                  #  48    0x7803c  1      OPC=nop             
  nop                                  #  49    0x7803d  1      OPC=nop             
  nop                                  #  50    0x7803e  1      OPC=nop             
  nop                                  #  51    0x7803f  1      OPC=nop             
  andl $0xffffffe0, %r11d              #  52    0x78040  7      OPC=andl_r32_imm32  
  nop                                  #  53    0x78047  1      OPC=nop             
  nop                                  #  54    0x78048  1      OPC=nop             
  nop                                  #  55    0x78049  1      OPC=nop             
  nop                                  #  56    0x7804a  1      OPC=nop             
  addq %r15, %r11                      #  57    0x7804b  3      OPC=addq_r64_r64    
  jmpq %r11                            #  58    0x7804e  3      OPC=jmpq_r64        
  nop                                  #  59    0x78051  1      OPC=nop             
  nop                                  #  60    0x78052  1      OPC=nop             
  nop                                  #  61    0x78053  1      OPC=nop             
  nop                                  #  62    0x78054  1      OPC=nop             
  nop                                  #  63    0x78055  1      OPC=nop             
  nop                                  #  64    0x78056  1      OPC=nop             
  nop                                  #  65    0x78057  1      OPC=nop             
  nop                                  #  66    0x78058  1      OPC=nop             
  nop                                  #  67    0x78059  1      OPC=nop             
  nop                                  #  68    0x7805a  1      OPC=nop             
  nop                                  #  69    0x7805b  1      OPC=nop             
  nop                                  #  70    0x7805c  1      OPC=nop             
  nop                                  #  71    0x7805d  1      OPC=nop             
  nop                                  #  72    0x7805e  1      OPC=nop             
  nop                                  #  73    0x7805f  1      OPC=nop             
  nop                                  #  74    0x78060  1      OPC=nop             
  nop                                  #  75    0x78061  1      OPC=nop             
  nop                                  #  76    0x78062  1      OPC=nop             
  nop                                  #  77    0x78063  1      OPC=nop             
  nop                                  #  78    0x78064  1      OPC=nop             
  nop                                  #  79    0x78065  1      OPC=nop             
  nop                                  #  80    0x78066  1      OPC=nop             
                                                                                    
.size _ZNKSt11__timepunctIcE7_M_daysEPPKc, .-_ZNKSt11__timepunctIcE7_M_daysEPPKc

