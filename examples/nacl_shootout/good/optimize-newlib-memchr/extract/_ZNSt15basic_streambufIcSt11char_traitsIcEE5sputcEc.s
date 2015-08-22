  .text
  .globl _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc
  .type _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc, @function

#! file-offset 0xe9d40
#! rip-offset  0xa9d40
#! capacity    96 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc:  #        0xa9d40  0      OPC=<label>         
  movl %edi, %edi                                      #  1     0xa9d40  2      OPC=movl_r32_r32    
  movl %edi, %edi                                      #  2     0xa9d42  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %edx                         #  3     0xa9d44  5      OPC=movl_r32_m32    
  movl %edi, %edi                                      #  4     0xa9d49  2      OPC=movl_r32_r32    
  cmpl %edx, 0x18(%r15,%rdi,1)                         #  5     0xa9d4b  5      OPC=cmpl_m32_r32    
  jbe .L_a9d80                                         #  6     0xa9d50  2      OPC=jbe_label       
  movl %edx, %edx                                      #  7     0xa9d52  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rdx,1)                             #  8     0xa9d54  4      OPC=movb_m8_r8      
  movzbl %sil, %eax                                    #  9     0xa9d58  4      OPC=movzbl_r32_r8   
  nop                                                  #  10    0xa9d5c  1      OPC=nop             
  nop                                                  #  11    0xa9d5d  1      OPC=nop             
  nop                                                  #  12    0xa9d5e  1      OPC=nop             
  nop                                                  #  13    0xa9d5f  1      OPC=nop             
  movl %edi, %edi                                      #  14    0xa9d60  2      OPC=movl_r32_r32    
  addl $0x1, 0x14(%r15,%rdi,1)                         #  15    0xa9d62  6      OPC=addl_m32_imm8   
  popq %r11                                            #  16    0xa9d68  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  17    0xa9d6a  7      OPC=andl_r32_imm32  
  nop                                                  #  18    0xa9d71  1      OPC=nop             
  nop                                                  #  19    0xa9d72  1      OPC=nop             
  nop                                                  #  20    0xa9d73  1      OPC=nop             
  nop                                                  #  21    0xa9d74  1      OPC=nop             
  addq %r15, %r11                                      #  22    0xa9d75  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  23    0xa9d78  3      OPC=jmpq_r64        
  nop                                                  #  24    0xa9d7b  1      OPC=nop             
  nop                                                  #  25    0xa9d7c  1      OPC=nop             
  nop                                                  #  26    0xa9d7d  1      OPC=nop             
  nop                                                  #  27    0xa9d7e  1      OPC=nop             
  nop                                                  #  28    0xa9d7f  1      OPC=nop             
  nop                                                  #  29    0xa9d80  1      OPC=nop             
  nop                                                  #  30    0xa9d81  1      OPC=nop             
  nop                                                  #  31    0xa9d82  1      OPC=nop             
  nop                                                  #  32    0xa9d83  1      OPC=nop             
  nop                                                  #  33    0xa9d84  1      OPC=nop             
  nop                                                  #  34    0xa9d85  1      OPC=nop             
  nop                                                  #  35    0xa9d86  1      OPC=nop             
.L_a9d80:                                              #        0xa9d87  0      OPC=<label>         
  movl %edi, %edi                                      #  36    0xa9d87  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx                             #  37    0xa9d89  4      OPC=movl_r32_m32    
  movzbl %sil, %esi                                    #  38    0xa9d8d  4      OPC=movzbl_r32_r8   
  movl %edx, %edx                                      #  39    0xa9d91  2      OPC=movl_r32_r32    
  movl 0x34(%r15,%rdx,1), %edx                         #  40    0xa9d93  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %edx                               #  41    0xa9d98  6      OPC=andl_r32_imm32  
  nop                                                  #  42    0xa9d9e  1      OPC=nop             
  nop                                                  #  43    0xa9d9f  1      OPC=nop             
  nop                                                  #  44    0xa9da0  1      OPC=nop             
  addq %r15, %rdx                                      #  45    0xa9da1  3      OPC=addq_r64_r64    
  jmpq %rdx                                            #  46    0xa9da4  2      OPC=jmpq_r64        
  nop                                                  #  47    0xa9da6  1      OPC=nop             
  nop                                                  #  48    0xa9da7  1      OPC=nop             
  nop                                                  #  49    0xa9da8  1      OPC=nop             
  nop                                                  #  50    0xa9da9  1      OPC=nop             
  nop                                                  #  51    0xa9daa  1      OPC=nop             
  nop                                                  #  52    0xa9dab  1      OPC=nop             
  nop                                                  #  53    0xa9dac  1      OPC=nop             
                                                                                                    
.size _ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc, .-_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc

