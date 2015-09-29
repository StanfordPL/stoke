  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_, @function

#! file-offset 0x117640
#! rip-offset  0xd7640
#! capacity    64 bytes

# Text                                                                                         #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_:  #        0xd7640  0      OPC=<label>         
  movl %esi, %esi                                                                              #  1     0xd7640  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                                              #  2     0xd7642  2      OPC=movl_r32_r32    
  subl %esi, %edx                                                                              #  3     0xd7644  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                                                              #  4     0xd7646  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                                                              #  5     0xd7649  3      OPC=cmpl_r32_imm8   
  je .L_d7660                                                                                  #  6     0xd764c  2      OPC=je_label        
  jmpq .wmemcpy                                                                                #  7     0xd764e  5      OPC=jmpq_label_1    
  nop                                                                                          #  8     0xd7653  1      OPC=nop             
  nop                                                                                          #  9     0xd7654  1      OPC=nop             
  nop                                                                                          #  10    0xd7655  1      OPC=nop             
  nop                                                                                          #  11    0xd7656  1      OPC=nop             
  nop                                                                                          #  12    0xd7657  1      OPC=nop             
  nop                                                                                          #  13    0xd7658  1      OPC=nop             
  nop                                                                                          #  14    0xd7659  1      OPC=nop             
  nop                                                                                          #  15    0xd765a  1      OPC=nop             
  nop                                                                                          #  16    0xd765b  1      OPC=nop             
  nop                                                                                          #  17    0xd765c  1      OPC=nop             
  nop                                                                                          #  18    0xd765d  1      OPC=nop             
  nop                                                                                          #  19    0xd765e  1      OPC=nop             
  nop                                                                                          #  20    0xd765f  1      OPC=nop             
.L_d7660:                                                                                      #        0xd7660  0      OPC=<label>         
  popq %r11                                                                                    #  21    0xd7660  2      OPC=popq_r64_1      
  movl %esi, %esi                                                                              #  22    0xd7662  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                                                     #  23    0xd7664  4      OPC=movl_r32_m32    
  movl %edi, %edi                                                                              #  24    0xd7668  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                                                     #  25    0xd766a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                                                      #  26    0xd766e  7      OPC=andl_r32_imm32  
  nop                                                                                          #  27    0xd7675  1      OPC=nop             
  nop                                                                                          #  28    0xd7676  1      OPC=nop             
  nop                                                                                          #  29    0xd7677  1      OPC=nop             
  nop                                                                                          #  30    0xd7678  1      OPC=nop             
  addq %r15, %r11                                                                              #  31    0xd7679  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                    #  32    0xd767c  3      OPC=jmpq_r64        
  nop                                                                                          #  33    0xd767f  1      OPC=nop             
  nop                                                                                          #  34    0xd7680  1      OPC=nop             
  nop                                                                                          #  35    0xd7681  1      OPC=nop             
  nop                                                                                          #  36    0xd7682  1      OPC=nop             
  nop                                                                                          #  37    0xd7683  1      OPC=nop             
  nop                                                                                          #  38    0xd7684  1      OPC=nop             
  nop                                                                                          #  39    0xd7685  1      OPC=nop             
  nop                                                                                          #  40    0xd7686  1      OPC=nop             
                                                                                                                                            
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwN9__gnu_cxx17__normal_iteratorIPKwS2_EES8_

