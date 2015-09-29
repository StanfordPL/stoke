  .text
  .globl _ZNKSt11__timepunctIwE7_M_daysEPPKw
  .type _ZNKSt11__timepunctIwE7_M_daysEPPKw, @function

#! file-offset 0xf1980
#! rip-offset  0xb1980
#! capacity    160 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt11__timepunctIwE7_M_daysEPPKw:  #        0xb1980  0      OPC=<label>         
  movl %edi, %edi                      #  1     0xb1980  2      OPC=movl_r32_r32    
  movl %esi, %esi                      #  2     0xb1982  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  3     0xb1984  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax          #  4     0xb1986  5      OPC=movl_r32_m32    
  popq %r11                            #  5     0xb198b  2      OPC=popq_r64_1      
  movl %eax, %eax                      #  6     0xb198d  2      OPC=movl_r32_r32    
  movl 0x2c(%r15,%rax,1), %edx         #  7     0xb198f  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  8     0xb1994  2      OPC=movl_r32_r32    
  movl %edx, (%r15,%rsi,1)             #  9     0xb1996  4      OPC=movl_m32_r32    
  nop                                  #  10    0xb199a  1      OPC=nop             
  nop                                  #  11    0xb199b  1      OPC=nop             
  nop                                  #  12    0xb199c  1      OPC=nop             
  nop                                  #  13    0xb199d  1      OPC=nop             
  nop                                  #  14    0xb199e  1      OPC=nop             
  nop                                  #  15    0xb199f  1      OPC=nop             
  movl %eax, %eax                      #  16    0xb19a0  2      OPC=movl_r32_r32    
  movl 0x30(%r15,%rax,1), %edx         #  17    0xb19a2  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  18    0xb19a7  2      OPC=movl_r32_r32    
  movl %edx, 0x4(%r15,%rsi,1)          #  19    0xb19a9  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  20    0xb19ae  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %edx         #  21    0xb19b0  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  22    0xb19b5  2      OPC=movl_r32_r32    
  movl %edx, 0x8(%r15,%rsi,1)          #  23    0xb19b7  5      OPC=movl_m32_r32    
  nop                                  #  24    0xb19bc  1      OPC=nop             
  nop                                  #  25    0xb19bd  1      OPC=nop             
  nop                                  #  26    0xb19be  1      OPC=nop             
  nop                                  #  27    0xb19bf  1      OPC=nop             
  movl %eax, %eax                      #  28    0xb19c0  2      OPC=movl_r32_r32    
  movl 0x38(%r15,%rax,1), %edx         #  29    0xb19c2  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  30    0xb19c7  2      OPC=movl_r32_r32    
  movl %edx, 0xc(%r15,%rsi,1)          #  31    0xb19c9  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  32    0xb19ce  2      OPC=movl_r32_r32    
  movl 0x3c(%r15,%rax,1), %edx         #  33    0xb19d0  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  34    0xb19d5  2      OPC=movl_r32_r32    
  movl %edx, 0x10(%r15,%rsi,1)         #  35    0xb19d7  5      OPC=movl_m32_r32    
  nop                                  #  36    0xb19dc  1      OPC=nop             
  nop                                  #  37    0xb19dd  1      OPC=nop             
  nop                                  #  38    0xb19de  1      OPC=nop             
  nop                                  #  39    0xb19df  1      OPC=nop             
  movl %eax, %eax                      #  40    0xb19e0  2      OPC=movl_r32_r32    
  movl 0x40(%r15,%rax,1), %edx         #  41    0xb19e2  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  42    0xb19e7  2      OPC=movl_r32_r32    
  movl %edx, 0x14(%r15,%rsi,1)         #  43    0xb19e9  5      OPC=movl_m32_r32    
  movl %eax, %eax                      #  44    0xb19ee  2      OPC=movl_r32_r32    
  movl 0x44(%r15,%rax,1), %eax         #  45    0xb19f0  5      OPC=movl_r32_m32    
  movl %esi, %esi                      #  46    0xb19f5  2      OPC=movl_r32_r32    
  movl %eax, 0x18(%r15,%rsi,1)         #  47    0xb19f7  5      OPC=movl_m32_r32    
  nop                                  #  48    0xb19fc  1      OPC=nop             
  nop                                  #  49    0xb19fd  1      OPC=nop             
  nop                                  #  50    0xb19fe  1      OPC=nop             
  nop                                  #  51    0xb19ff  1      OPC=nop             
  andl $0xffffffe0, %r11d              #  52    0xb1a00  7      OPC=andl_r32_imm32  
  nop                                  #  53    0xb1a07  1      OPC=nop             
  nop                                  #  54    0xb1a08  1      OPC=nop             
  nop                                  #  55    0xb1a09  1      OPC=nop             
  nop                                  #  56    0xb1a0a  1      OPC=nop             
  addq %r15, %r11                      #  57    0xb1a0b  3      OPC=addq_r64_r64    
  jmpq %r11                            #  58    0xb1a0e  3      OPC=jmpq_r64        
  nop                                  #  59    0xb1a11  1      OPC=nop             
  nop                                  #  60    0xb1a12  1      OPC=nop             
  nop                                  #  61    0xb1a13  1      OPC=nop             
  nop                                  #  62    0xb1a14  1      OPC=nop             
  nop                                  #  63    0xb1a15  1      OPC=nop             
  nop                                  #  64    0xb1a16  1      OPC=nop             
  nop                                  #  65    0xb1a17  1      OPC=nop             
  nop                                  #  66    0xb1a18  1      OPC=nop             
  nop                                  #  67    0xb1a19  1      OPC=nop             
  nop                                  #  68    0xb1a1a  1      OPC=nop             
  nop                                  #  69    0xb1a1b  1      OPC=nop             
  nop                                  #  70    0xb1a1c  1      OPC=nop             
  nop                                  #  71    0xb1a1d  1      OPC=nop             
  nop                                  #  72    0xb1a1e  1      OPC=nop             
  nop                                  #  73    0xb1a1f  1      OPC=nop             
  nop                                  #  74    0xb1a20  1      OPC=nop             
  nop                                  #  75    0xb1a21  1      OPC=nop             
  nop                                  #  76    0xb1a22  1      OPC=nop             
  nop                                  #  77    0xb1a23  1      OPC=nop             
  nop                                  #  78    0xb1a24  1      OPC=nop             
  nop                                  #  79    0xb1a25  1      OPC=nop             
  nop                                  #  80    0xb1a26  1      OPC=nop             
                                                                                    
.size _ZNKSt11__timepunctIwE7_M_daysEPPKw, .-_ZNKSt11__timepunctIwE7_M_daysEPPKw

