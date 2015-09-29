  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw, @function

#! file-offset 0xe9b60
#! rip-offset  0xa9b60
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw:  #        0xa9b60  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9b60  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9b62  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                         #  3     0xa9b64  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9b69  2      OPC=movl_r32_r32    
  cmpl %eax, 0x18(%r15,%rdi,1)                         #  5     0xa9b6b  5      OPC=cmpl_m32_r32    
  jbe .L_a9ba0                                         #  6     0xa9b70  2      OPC=jbe_label       
  movl %eax, %eax                                      #  7     0xa9b72  2      OPC=movl_r32_r32    
  movl %esi, (%r15,%rax,1)                             #  8     0xa9b74  4      OPC=movl_m32_r32    
  movl %edi, %edi                                      #  9     0xa9b78  2      OPC=movl_r32_r32    
  addl $0x4, 0x14(%r15,%rdi,1)                         #  10    0xa9b7a  6      OPC=addl_m32_imm8   
  movl %esi, %eax                                      #  11    0xa9b80  2      OPC=movl_r32_r32    
  popq %r11                                            #  12    0xa9b82  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  13    0xa9b84  7      OPC=andl_r32_imm32  
  nop                                                  #  14    0xa9b8b  1      OPC=nop             
  nop                                                  #  15    0xa9b8c  1      OPC=nop             
  nop                                                  #  16    0xa9b8d  1      OPC=nop             
  nop                                                  #  17    0xa9b8e  1      OPC=nop             
  addq %r15, %r11                                      #  18    0xa9b8f  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  19    0xa9b92  3      OPC=jmpq_r64        
  nop                                                  #  20    0xa9b95  1      OPC=nop             
  nop                                                  #  21    0xa9b96  1      OPC=nop             
  nop                                                  #  22    0xa9b97  1      OPC=nop             
  nop                                                  #  23    0xa9b98  1      OPC=nop             
  nop                                                  #  24    0xa9b99  1      OPC=nop             
  nop                                                  #  25    0xa9b9a  1      OPC=nop             
  nop                                                  #  26    0xa9b9b  1      OPC=nop             
  nop                                                  #  27    0xa9b9c  1      OPC=nop             
  nop                                                  #  28    0xa9b9d  1      OPC=nop             
  nop                                                  #  29    0xa9b9e  1      OPC=nop             
  nop                                                  #  30    0xa9b9f  1      OPC=nop             
  nop                                                  #  31    0xa9ba0  1      OPC=nop             
  nop                                                  #  32    0xa9ba1  1      OPC=nop             
  nop                                                  #  33    0xa9ba2  1      OPC=nop             
  nop                                                  #  34    0xa9ba3  1      OPC=nop             
  nop                                                  #  35    0xa9ba4  1      OPC=nop             
  nop                                                  #  36    0xa9ba5  1      OPC=nop             
  nop                                                  #  37    0xa9ba6  1      OPC=nop             
.L_a9ba0:                                              #        0xa9ba7  0      OPC=<label>         
  movl %edi, %edi                                      #  38    0xa9ba7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  39    0xa9ba9  4      OPC=movl_r32_m32    
  movl %eax, %eax                                      #  40    0xa9bad  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rax,1), %edx                         #  41    0xa9baf  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %edx                               #  42    0xa9bb4  6      OPC=andl_r32_imm32  
  nop                                                  #  43    0xa9bba  1      OPC=nop             
  nop                                                  #  44    0xa9bbb  1      OPC=nop             
  nop                                                  #  45    0xa9bbc  1      OPC=nop             
  addq %r15, %rdx                                      #  46    0xa9bbd  3      OPC=addq_r64_r64    
  jmpq %rdx                                            #  47    0xa9bc0  2      OPC=jmpq_r64        
  nop                                                  #  48    0xa9bc2  1      OPC=nop             
  nop                                                  #  49    0xa9bc3  1      OPC=nop             
  nop                                                  #  50    0xa9bc4  1      OPC=nop             
  nop                                                  #  51    0xa9bc5  1      OPC=nop             
  nop                                                  #  52    0xa9bc6  1      OPC=nop             
  nop                                                  #  53    0xa9bc7  1      OPC=nop             
  nop                                                  #  54    0xa9bc8  1      OPC=nop             
  nop                                                  #  55    0xa9bc9  1      OPC=nop             
  nop                                                  #  56    0xa9bca  1      OPC=nop             
  nop                                                  #  57    0xa9bcb  1      OPC=nop             
  nop                                                  #  58    0xa9bcc  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5sputcEw

