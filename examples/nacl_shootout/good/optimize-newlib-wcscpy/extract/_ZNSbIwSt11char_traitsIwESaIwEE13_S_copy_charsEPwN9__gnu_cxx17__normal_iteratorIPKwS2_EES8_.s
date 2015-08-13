  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_, @function

#! file-offset 0x116c20
#! rip-offset  0xd6c20
#! capacity    64 bytes

# Text                                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_:  #        0xd6c20  0      OPC=<label>         
  movl %esi, %esi                                                                              #  1     0xd6c20  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                              #  2     0xd6c22  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                                              #  3     0xd6c24  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                                                              #  4     0xd6c26  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                                                              #  5     0xd6c29  3      OPC=cmpl_r32_imm8   
  je .L_d6c40                                                                                  #  6     0xd6c2c  2      OPC=je_label        
  jmpq .wmemcpy                                                                                #  7     0xd6c2e  5      OPC=jmpq_label_1    
  nop                                                                                          #  8     0xd6c33  1      OPC=nop             
  nop                                                                                          #  9     0xd6c34  1      OPC=nop             
  nop                                                                                          #  10    0xd6c35  1      OPC=nop             
  nop                                                                                          #  11    0xd6c36  1      OPC=nop             
  nop                                                                                          #  12    0xd6c37  1      OPC=nop             
  nop                                                                                          #  13    0xd6c38  1      OPC=nop             
  nop                                                                                          #  14    0xd6c39  1      OPC=nop             
  nop                                                                                          #  15    0xd6c3a  1      OPC=nop             
  nop                                                                                          #  16    0xd6c3b  1      OPC=nop             
  nop                                                                                          #  17    0xd6c3c  1      OPC=nop             
  nop                                                                                          #  18    0xd6c3d  1      OPC=nop             
  nop                                                                                          #  19    0xd6c3e  1      OPC=nop             
  nop                                                                                          #  20    0xd6c3f  1      OPC=nop             
.L_d6c40:                                                                                      #        0xd6c40  0      OPC=<label>         
  popq %r11                                                                                    #  21    0xd6c40  2      OPC=popq_r64_1      
  movl %esi, %esi                                                                              #  22    0xd6c42  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                                     #  23    0xd6c44  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                                              #  24    0xd6c48  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                                     #  25    0xd6c4a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                                                      #  26    0xd6c4e  7      OPC=andl_r32_imm32  
  nop                                                                                          #  27    0xd6c55  1      OPC=nop             
  nop                                                                                          #  28    0xd6c56  1      OPC=nop             
  nop                                                                                          #  29    0xd6c57  1      OPC=nop             
  nop                                                                                          #  30    0xd6c58  1      OPC=nop             
  addq %r15, %r11                                                                              #  31    0xd6c59  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                    #  32    0xd6c5c  3      OPC=jmpq_r64        
  nop                                                                                          #  33    0xd6c5f  1      OPC=nop             
  nop                                                                                          #  34    0xd6c60  1      OPC=nop             
  nop                                                                                          #  35    0xd6c61  1      OPC=nop             
  nop                                                                                          #  36    0xd6c62  1      OPC=nop             
  nop                                                                                          #  37    0xd6c63  1      OPC=nop             
  nop                                                                                          #  38    0xd6c64  1      OPC=nop             
  nop                                                                                          #  39    0xd6c65  1      OPC=nop             
  nop                                                                                          #  40    0xd6c66  1      OPC=nop             
                                                                                                                                            
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_

