  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_
  .type _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_, @function

#! file-offset 0x116be0
#! rip-offset  0xd6be0
#! capacity    64 bytes

# Text                                                     #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_:  #        0xd6be0  0      OPC=<label>         
  movl %esi, %esi                                          #  1     0xd6be0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                          #  2     0xd6be2  2      OPC=movl_r32_r32    
  subl %esi, %edx                                          #  3     0xd6be4  2      OPC=subl_r32_r32    
  sarl $0x2, %edx                                          #  4     0xd6be6  3      OPC=sarl_r32_imm8   
  cmpl $0x1, %edx                                          #  5     0xd6be9  3      OPC=cmpl_r32_imm8   
  je .L_d6c00                                              #  6     0xd6bec  2      OPC=je_label        
  jmpq .wmemcpy                                            #  7     0xd6bee  5      OPC=jmpq_label_1    
  nop                                                      #  8     0xd6bf3  1      OPC=nop             
  nop                                                      #  9     0xd6bf4  1      OPC=nop             
  nop                                                      #  10    0xd6bf5  1      OPC=nop             
  nop                                                      #  11    0xd6bf6  1      OPC=nop             
  nop                                                      #  12    0xd6bf7  1      OPC=nop             
  nop                                                      #  13    0xd6bf8  1      OPC=nop             
  nop                                                      #  14    0xd6bf9  1      OPC=nop             
  nop                                                      #  15    0xd6bfa  1      OPC=nop             
  nop                                                      #  16    0xd6bfb  1      OPC=nop             
  nop                                                      #  17    0xd6bfc  1      OPC=nop             
  nop                                                      #  18    0xd6bfd  1      OPC=nop             
  nop                                                      #  19    0xd6bfe  1      OPC=nop             
  nop                                                      #  20    0xd6bff  1      OPC=nop             
.L_d6c00:                                                  #        0xd6c00  0      OPC=<label>         
  popq %r11                                                #  21    0xd6c00  2      OPC=popq_r64_1      
  movl %esi, %esi                                          #  22    0xd6c02  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax                                 #  23    0xd6c04  4      OPC=movl_r32_m32    
  movl %edi, %edi                                          #  24    0xd6c08  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)                                 #  25    0xd6c0a  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                  #  26    0xd6c0e  7      OPC=andl_r32_imm32  
  nop                                                      #  27    0xd6c15  1      OPC=nop             
  nop                                                      #  28    0xd6c16  1      OPC=nop             
  nop                                                      #  29    0xd6c17  1      OPC=nop             
  nop                                                      #  30    0xd6c18  1      OPC=nop             
  addq %r15, %r11                                          #  31    0xd6c19  3      OPC=addq_r64_r64    
  jmpq %r11                                                #  32    0xd6c1c  3      OPC=jmpq_r64        
  nop                                                      #  33    0xd6c1f  1      OPC=nop             
  nop                                                      #  34    0xd6c20  1      OPC=nop             
  nop                                                      #  35    0xd6c21  1      OPC=nop             
  nop                                                      #  36    0xd6c22  1      OPC=nop             
  nop                                                      #  37    0xd6c23  1      OPC=nop             
  nop                                                      #  38    0xd6c24  1      OPC=nop             
  nop                                                      #  39    0xd6c25  1      OPC=nop             
  nop                                                      #  40    0xd6c26  1      OPC=nop             
                                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_, .-_ZNSbIwSt11char_traitsIwESaIwEE13_S_copy_charsEPwPKwS5_

