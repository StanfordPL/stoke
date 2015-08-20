  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw, @function

#! file-offset 0xe9440
#! rip-offset  0xa9440
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw:  #        0xa9440  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9440  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9442  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                         #  3     0xa9444  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9449  2      OPC=movl_r32_r32    
  cmpl %eax, 0x18(%r15,%rdi,1)                         #  5     0xa944b  5      OPC=cmpl_m32_r32    
  jbe .L_a9480                                         #  6     0xa9450  2      OPC=jbe_label       
  movl %eax, %eax                                      #  7     0xa9452  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rax,1)                             #  8     0xa9454  4      OPC=movl_m32_r32    
  movl %edi, %edi                                      #  9     0xa9458  2      OPC=movl_r32_r32    
  addl $0x4, 0x14(%r15,%rdi,1)                         #  10    0xa945a  6      OPC=addl_m32_imm8   
  movl %esi, %eax                                      #  11    0xa9460  2      OPC=movl_r32_r32    
  popq %r11                                            #  12    0xa9462  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  13    0xa9464  7      OPC=andl_r32_imm32  
  nop                                                  #  14    0xa946b  1      OPC=nop             
  nop                                                  #  15    0xa946c  1      OPC=nop             
  nop                                                  #  16    0xa946d  1      OPC=nop             
  nop                                                  #  17    0xa946e  1      OPC=nop             
  addq %r15, %r11                                      #  18    0xa946f  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  19    0xa9472  3      OPC=jmpq_r64        
  nop                                                  #  20    0xa9475  1      OPC=nop             
  nop                                                  #  21    0xa9476  1      OPC=nop             
  nop                                                  #  22    0xa9477  1      OPC=nop             
  nop                                                  #  23    0xa9478  1      OPC=nop             
  nop                                                  #  24    0xa9479  1      OPC=nop             
  nop                                                  #  25    0xa947a  1      OPC=nop             
  nop                                                  #  26    0xa947b  1      OPC=nop             
  nop                                                  #  27    0xa947c  1      OPC=nop             
  nop                                                  #  28    0xa947d  1      OPC=nop             
  nop                                                  #  29    0xa947e  1      OPC=nop             
  nop                                                  #  30    0xa947f  1      OPC=nop             
  nop                                                  #  31    0xa9480  1      OPC=nop             
  nop                                                  #  32    0xa9481  1      OPC=nop             
  nop                                                  #  33    0xa9482  1      OPC=nop             
  nop                                                  #  34    0xa9483  1      OPC=nop             
  nop                                                  #  35    0xa9484  1      OPC=nop             
  nop                                                  #  36    0xa9485  1      OPC=nop             
  nop                                                  #  37    0xa9486  1      OPC=nop             
.L_a9480:                                              #        0xa9487  0      OPC=<label>         
  movl %edi, %edi                                      #  38    0xa9487  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  39    0xa9489  4      OPC=movl_r32_m32    
  movl %eax, %eax                                      #  40    0xa948d  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %edx                         #  41    0xa948f  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %edx                               #  42    0xa9494  6      OPC=andl_r32_imm32  
  nop                                                  #  43    0xa949a  1      OPC=nop             
  nop                                                  #  44    0xa949b  1      OPC=nop             
  nop                                                  #  45    0xa949c  1      OPC=nop             
  addq %r15, %rdx                                      #  46    0xa949d  3      OPC=addq_r64_r64    
  jmpq %rdx                                            #  47    0xa94a0  2      OPC=jmpq_r64        
  nop                                                  #  48    0xa94a2  1      OPC=nop             
  nop                                                  #  49    0xa94a3  1      OPC=nop             
  nop                                                  #  50    0xa94a4  1      OPC=nop             
  nop                                                  #  51    0xa94a5  1      OPC=nop             
  nop                                                  #  52    0xa94a6  1      OPC=nop             
  nop                                                  #  53    0xa94a7  1      OPC=nop             
  nop                                                  #  54    0xa94a8  1      OPC=nop             
  nop                                                  #  55    0xa94a9  1      OPC=nop             
  nop                                                  #  56    0xa94aa  1      OPC=nop             
  nop                                                  #  57    0xa94ab  1      OPC=nop             
  nop                                                  #  58    0xa94ac  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw

