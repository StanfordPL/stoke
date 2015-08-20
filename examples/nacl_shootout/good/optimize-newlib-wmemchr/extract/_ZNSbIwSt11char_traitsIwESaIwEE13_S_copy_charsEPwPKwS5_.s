  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_, @function

#! file-offset 0x116ee0
#! rip-offset  0xd6ee0
#! capacity    64 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_:  #        0xd6ee0  0      OPC=<label>         
  movl %esi, %esi                                          #  1     0xd6ee0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xd6ee2  2      OPC=movl_r32_r32    
  subl %esi, %edx                                          #  3     0xd6ee4  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                          #  4     0xd6ee6  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                          #  5     0xd6ee9  3      OPC=cmpl_r32_imm8   
  je .L_d6f00                                              #  6     0xd6eec  2      OPC=je_label        
  jmpq .wmemcpy                                            #  7     0xd6eee  5      OPC=jmpq_label_1    
  nop                                                      #  8     0xd6ef3  1      OPC=nop             
  nop                                                      #  9     0xd6ef4  1      OPC=nop             
  nop                                                      #  10    0xd6ef5  1      OPC=nop             
  nop                                                      #  11    0xd6ef6  1      OPC=nop             
  nop                                                      #  12    0xd6ef7  1      OPC=nop             
  nop                                                      #  13    0xd6ef8  1      OPC=nop             
  nop                                                      #  14    0xd6ef9  1      OPC=nop             
  nop                                                      #  15    0xd6efa  1      OPC=nop             
  nop                                                      #  16    0xd6efb  1      OPC=nop             
  nop                                                      #  17    0xd6efc  1      OPC=nop             
  nop                                                      #  18    0xd6efd  1      OPC=nop             
  nop                                                      #  19    0xd6efe  1      OPC=nop             
  nop                                                      #  20    0xd6eff  1      OPC=nop             
.L_d6f00:                                                  #        0xd6f00  0      OPC=<label>         
  popq %r11                                                #  21    0xd6f00  2      OPC=popq_r64_1      
  movl %esi, %esi                                          #  22    0xd6f02  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                 #  23    0xd6f04  4      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  24    0xd6f08  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                 #  25    0xd6f0a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                  #  26    0xd6f0e  7      OPC=andl_r32_imm32  
  nop                                                      #  27    0xd6f15  1      OPC=nop             
  nop                                                      #  28    0xd6f16  1      OPC=nop             
  nop                                                      #  29    0xd6f17  1      OPC=nop             
  nop                                                      #  30    0xd6f18  1      OPC=nop             
  addq %r15, %r11                                          #  31    0xd6f19  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  32    0xd6f1c  3      OPC=jmpq_r64        
  nop                                                      #  33    0xd6f1f  1      OPC=nop             
  nop                                                      #  34    0xd6f20  1      OPC=nop             
  nop                                                      #  35    0xd6f21  1      OPC=nop             
  nop                                                      #  36    0xd6f22  1      OPC=nop             
  nop                                                      #  37    0xd6f23  1      OPC=nop             
  nop                                                      #  38    0xd6f24  1      OPC=nop             
  nop                                                      #  39    0xd6f25  1      OPC=nop             
  nop                                                      #  40    0xd6f26  1      OPC=nop             
                                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_

