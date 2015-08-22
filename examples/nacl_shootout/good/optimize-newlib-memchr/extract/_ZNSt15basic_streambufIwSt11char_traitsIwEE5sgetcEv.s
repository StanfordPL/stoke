  .text
  .globl _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv
  .type _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv, @function

#! file-offset 0xe9c80
#! rip-offset  0xa9c80
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv:  #        0xa9c80  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9c80  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9c82  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rdi,1), %eax                          #  3     0xa9c84  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9c89  2      OPC=movl_r32_r32    
  cmpl %eax, 0xc(%r15,%rdi,1)                          #  5     0xa9c8b  5      OPC=cmpl_m32_r32    
  jbe .L_a9cc0                                         #  6     0xa9c90  2      OPC=jbe_label       
  popq %r11                                            #  7     0xa9c92  2      OPC=popq_r64_1      
  movl %eax, %eax                                      #  8     0xa9c94  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                             #  9     0xa9c96  4      OPC=movl_r32_m32    
  nop                                                  #  10    0xa9c9a  1      OPC=nop             
  nop                                                  #  11    0xa9c9b  1      OPC=nop             
  nop                                                  #  12    0xa9c9c  1      OPC=nop             
  nop                                                  #  13    0xa9c9d  1      OPC=nop             
  nop                                                  #  14    0xa9c9e  1      OPC=nop             
  nop                                                  #  15    0xa9c9f  1      OPC=nop             
  andl $0xffffffe0, %r11d                              #  16    0xa9ca0  7      OPC=andl_r32_imm32  
  nop                                                  #  17    0xa9ca7  1      OPC=nop             
  nop                                                  #  18    0xa9ca8  1      OPC=nop             
  nop                                                  #  19    0xa9ca9  1      OPC=nop             
  nop                                                  #  20    0xa9caa  1      OPC=nop             
  addq %r15, %r11                                      #  21    0xa9cab  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  22    0xa9cae  3      OPC=jmpq_r64        
  nop                                                  #  23    0xa9cb1  1      OPC=nop             
  nop                                                  #  24    0xa9cb2  1      OPC=nop             
  nop                                                  #  25    0xa9cb3  1      OPC=nop             
  nop                                                  #  26    0xa9cb4  1      OPC=nop             
  nop                                                  #  27    0xa9cb5  1      OPC=nop             
  nop                                                  #  28    0xa9cb6  1      OPC=nop             
  nop                                                  #  29    0xa9cb7  1      OPC=nop             
  nop                                                  #  30    0xa9cb8  1      OPC=nop             
  nop                                                  #  31    0xa9cb9  1      OPC=nop             
  nop                                                  #  32    0xa9cba  1      OPC=nop             
  nop                                                  #  33    0xa9cbb  1      OPC=nop             
  nop                                                  #  34    0xa9cbc  1      OPC=nop             
  nop                                                  #  35    0xa9cbd  1      OPC=nop             
  nop                                                  #  36    0xa9cbe  1      OPC=nop             
  nop                                                  #  37    0xa9cbf  1      OPC=nop             
  nop                                                  #  38    0xa9cc0  1      OPC=nop             
  nop                                                  #  39    0xa9cc1  1      OPC=nop             
  nop                                                  #  40    0xa9cc2  1      OPC=nop             
  nop                                                  #  41    0xa9cc3  1      OPC=nop             
  nop                                                  #  42    0xa9cc4  1      OPC=nop             
  nop                                                  #  43    0xa9cc5  1      OPC=nop             
  nop                                                  #  44    0xa9cc6  1      OPC=nop             
.L_a9cc0:                                              #        0xa9cc7  0      OPC=<label>         
  movl %edi, %edi                                      #  45    0xa9cc7  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                             #  46    0xa9cc9  4      OPC=movl_r32_m32    
  movl %eax, %eax                                      #  47    0xa9ccd  2      OPC=movl_r32_r32    
  movl 0x24(%r15,%rax,1), %eax                         #  48    0xa9ccf  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                               #  49    0xa9cd4  6      OPC=andl_r32_imm32  
  nop                                                  #  50    0xa9cda  1      OPC=nop             
  nop                                                  #  51    0xa9cdb  1      OPC=nop             
  nop                                                  #  52    0xa9cdc  1      OPC=nop             
  addq %r15, %rax                                      #  53    0xa9cdd  3      OPC=addq_r64_r64    
  jmpq %rax                                            #  54    0xa9ce0  2      OPC=jmpq_r64        
  nop                                                  #  55    0xa9ce2  1      OPC=nop             
  nop                                                  #  56    0xa9ce3  1      OPC=nop             
  nop                                                  #  57    0xa9ce4  1      OPC=nop             
  nop                                                  #  58    0xa9ce5  1      OPC=nop             
  nop                                                  #  59    0xa9ce6  1      OPC=nop             
  nop                                                  #  60    0xa9ce7  1      OPC=nop             
  nop                                                  #  61    0xa9ce8  1      OPC=nop             
  nop                                                  #  62    0xa9ce9  1      OPC=nop             
  nop                                                  #  63    0xa9cea  1      OPC=nop             
  nop                                                  #  64    0xa9ceb  1      OPC=nop             
  nop                                                  #  65    0xa9cec  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv, .-_ZNSt15basic_streambufIwSt11char_traitsIwEE5sgetcEv

