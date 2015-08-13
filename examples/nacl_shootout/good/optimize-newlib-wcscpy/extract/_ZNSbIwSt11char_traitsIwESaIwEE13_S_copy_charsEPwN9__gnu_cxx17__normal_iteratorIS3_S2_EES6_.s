  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_, @function

#! file-offset 0x116c60
#! rip-offset  0xd6c60
#! capacity    64 bytes

# Text                                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_:  #        0xd6c60  0      OPC=<label>         
  movl %esi, %esi                                                                              #  1     0xd6c60  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                              #  2     0xd6c62  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                                              #  3     0xd6c64  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                                                              #  4     0xd6c66  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                                                              #  5     0xd6c69  3      OPC=cmpl_r32_imm8   
  je .L_d6c80                                                                                  #  6     0xd6c6c  2      OPC=je_label        
  jmpq .wmemcpy                                                                                #  7     0xd6c6e  5      OPC=jmpq_label_1    
  nop                                                                                          #  8     0xd6c73  1      OPC=nop             
  nop                                                                                          #  9     0xd6c74  1      OPC=nop             
  nop                                                                                          #  10    0xd6c75  1      OPC=nop             
  nop                                                                                          #  11    0xd6c76  1      OPC=nop             
  nop                                                                                          #  12    0xd6c77  1      OPC=nop             
  nop                                                                                          #  13    0xd6c78  1      OPC=nop             
  nop                                                                                          #  14    0xd6c79  1      OPC=nop             
  nop                                                                                          #  15    0xd6c7a  1      OPC=nop             
  nop                                                                                          #  16    0xd6c7b  1      OPC=nop             
  nop                                                                                          #  17    0xd6c7c  1      OPC=nop             
  nop                                                                                          #  18    0xd6c7d  1      OPC=nop             
  nop                                                                                          #  19    0xd6c7e  1      OPC=nop             
  nop                                                                                          #  20    0xd6c7f  1      OPC=nop             
.L_d6c80:                                                                                      #        0xd6c80  0      OPC=<label>         
  popq %r11                                                                                    #  21    0xd6c80  2      OPC=popq_r64_1      
  movl %esi, %esi                                                                              #  22    0xd6c82  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                                     #  23    0xd6c84  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                                              #  24    0xd6c88  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                                     #  25    0xd6c8a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                                                      #  26    0xd6c8e  7      OPC=andl_r32_imm32  
  nop                                                                                          #  27    0xd6c95  1      OPC=nop             
  nop                                                                                          #  28    0xd6c96  1      OPC=nop             
  nop                                                                                          #  29    0xd6c97  1      OPC=nop             
  nop                                                                                          #  30    0xd6c98  1      OPC=nop             
  addq %r15, %r11                                                                              #  31    0xd6c99  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                    #  32    0xd6c9c  3      OPC=jmpq_r64        
  nop                                                                                          #  33    0xd6c9f  1      OPC=nop             
  nop                                                                                          #  34    0xd6ca0  1      OPC=nop             
  nop                                                                                          #  35    0xd6ca1  1      OPC=nop             
  nop                                                                                          #  36    0xd6ca2  1      OPC=nop             
  nop                                                                                          #  37    0xd6ca3  1      OPC=nop             
  nop                                                                                          #  38    0xd6ca4  1      OPC=nop             
  nop                                                                                          #  39    0xd6ca5  1      OPC=nop             
  nop                                                                                          #  40    0xd6ca6  1      OPC=nop             
                                                                                                                                            
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_

