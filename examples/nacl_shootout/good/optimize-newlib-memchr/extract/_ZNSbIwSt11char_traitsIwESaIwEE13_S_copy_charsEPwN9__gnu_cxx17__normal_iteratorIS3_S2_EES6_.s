  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_, @function

#! file-offset 0x117680
#! rip-offset  0xd7680
#! capacity    64 bytes

# Text                                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_:  #        0xd7680  0      OPC=<label>         
  movl %esi, %esi                                                                              #  1     0xd7680  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                              #  2     0xd7682  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                                              #  3     0xd7684  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                                                              #  4     0xd7686  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                                                              #  5     0xd7689  3      OPC=cmpl_r32_imm8   
  je .L_d76a0                                                                                  #  6     0xd768c  2      OPC=je_label        
  jmpq .wmemcpy                                                                                #  7     0xd768e  5      OPC=jmpq_label_1    
  nop                                                                                          #  8     0xd7693  1      OPC=nop             
  nop                                                                                          #  9     0xd7694  1      OPC=nop             
  nop                                                                                          #  10    0xd7695  1      OPC=nop             
  nop                                                                                          #  11    0xd7696  1      OPC=nop             
  nop                                                                                          #  12    0xd7697  1      OPC=nop             
  nop                                                                                          #  13    0xd7698  1      OPC=nop             
  nop                                                                                          #  14    0xd7699  1      OPC=nop             
  nop                                                                                          #  15    0xd769a  1      OPC=nop             
  nop                                                                                          #  16    0xd769b  1      OPC=nop             
  nop                                                                                          #  17    0xd769c  1      OPC=nop             
  nop                                                                                          #  18    0xd769d  1      OPC=nop             
  nop                                                                                          #  19    0xd769e  1      OPC=nop             
  nop                                                                                          #  20    0xd769f  1      OPC=nop             
.L_d76a0:                                                                                      #        0xd76a0  0      OPC=<label>         
  popq %r11                                                                                    #  21    0xd76a0  2      OPC=popq_r64_1      
  movl %esi, %esi                                                                              #  22    0xd76a2  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                                     #  23    0xd76a4  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                                              #  24    0xd76a8  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                                     #  25    0xd76aa  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                                                      #  26    0xd76ae  7      OPC=andl_r32_imm32  
  nop                                                                                          #  27    0xd76b5  1      OPC=nop             
  nop                                                                                          #  28    0xd76b6  1      OPC=nop             
  nop                                                                                          #  29    0xd76b7  1      OPC=nop             
  nop                                                                                          #  30    0xd76b8  1      OPC=nop             
  addq %r15, %r11                                                                              #  31    0xd76b9  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                    #  32    0xd76bc  3      OPC=jmpq_r64        
  nop                                                                                          #  33    0xd76bf  1      OPC=nop             
  nop                                                                                          #  34    0xd76c0  1      OPC=nop             
  nop                                                                                          #  35    0xd76c1  1      OPC=nop             
  nop                                                                                          #  36    0xd76c2  1      OPC=nop             
  nop                                                                                          #  37    0xd76c3  1      OPC=nop             
  nop                                                                                          #  38    0xd76c4  1      OPC=nop             
  nop                                                                                          #  39    0xd76c5  1      OPC=nop             
  nop                                                                                          #  40    0xd76c6  1      OPC=nop             
                                                                                                                                            
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIS3_S2_EES6_

