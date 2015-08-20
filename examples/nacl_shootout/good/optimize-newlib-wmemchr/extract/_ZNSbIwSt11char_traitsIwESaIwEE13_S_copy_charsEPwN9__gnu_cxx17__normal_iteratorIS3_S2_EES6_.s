  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_, @function

#! file-offset 0x116f60
#! rip-offset  0xd6f60
#! capacity    64 bytes

# Text                                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_:  #        0xd6f60  0      OPC=<label>         
  movl %esi, %esi                                                                              #  1     0xd6f60  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                              #  2     0xd6f62  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                                              #  3     0xd6f64  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                                                              #  4     0xd6f66  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                                                              #  5     0xd6f69  3      OPC=cmpl_r32_imm8   
  je .L_d6f80                                                                                  #  6     0xd6f6c  2      OPC=je_label        
  jmpq .wmemcpy                                                                                #  7     0xd6f6e  5      OPC=jmpq_label_1    
  nop                                                                                          #  8     0xd6f73  1      OPC=nop             
  nop                                                                                          #  9     0xd6f74  1      OPC=nop             
  nop                                                                                          #  10    0xd6f75  1      OPC=nop             
  nop                                                                                          #  11    0xd6f76  1      OPC=nop             
  nop                                                                                          #  12    0xd6f77  1      OPC=nop             
  nop                                                                                          #  13    0xd6f78  1      OPC=nop             
  nop                                                                                          #  14    0xd6f79  1      OPC=nop             
  nop                                                                                          #  15    0xd6f7a  1      OPC=nop             
  nop                                                                                          #  16    0xd6f7b  1      OPC=nop             
  nop                                                                                          #  17    0xd6f7c  1      OPC=nop             
  nop                                                                                          #  18    0xd6f7d  1      OPC=nop             
  nop                                                                                          #  19    0xd6f7e  1      OPC=nop             
  nop                                                                                          #  20    0xd6f7f  1      OPC=nop             
.L_d6f80:                                                                                      #        0xd6f80  0      OPC=<label>         
  popq %r11                                                                                    #  21    0xd6f80  2      OPC=popq_r64_1      
  movl %esi, %esi                                                                              #  22    0xd6f82  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                                     #  23    0xd6f84  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                                              #  24    0xd6f88  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                                     #  25    0xd6f8a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                                                      #  26    0xd6f8e  7      OPC=andl_r32_imm32  
  nop                                                                                          #  27    0xd6f95  1      OPC=nop             
  nop                                                                                          #  28    0xd6f96  1      OPC=nop             
  nop                                                                                          #  29    0xd6f97  1      OPC=nop             
  nop                                                                                          #  30    0xd6f98  1      OPC=nop             
  addq %r15, %r11                                                                              #  31    0xd6f99  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                    #  32    0xd6f9c  3      OPC=jmpq_r64        
  nop                                                                                          #  33    0xd6f9f  1      OPC=nop             
  nop                                                                                          #  34    0xd6fa0  1      OPC=nop             
  nop                                                                                          #  35    0xd6fa1  1      OPC=nop             
  nop                                                                                          #  36    0xd6fa2  1      OPC=nop             
  nop                                                                                          #  37    0xd6fa3  1      OPC=nop             
  nop                                                                                          #  38    0xd6fa4  1      OPC=nop             
  nop                                                                                          #  39    0xd6fa5  1      OPC=nop             
  nop                                                                                          #  40    0xd6fa6  1      OPC=nop             
                                                                                                                                            
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_

