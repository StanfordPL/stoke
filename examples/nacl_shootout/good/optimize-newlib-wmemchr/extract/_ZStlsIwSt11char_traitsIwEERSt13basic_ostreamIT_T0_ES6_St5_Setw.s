  .text
  .globl _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St5_Setw
  .type _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St5_Setw, @function

#! file-offset 0xdd2c0
#! rip-offset  0x9d2c0
#! capacity    64 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode              
._ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St5_Setw:  #        0x9d2c0  0      OPC=<label>         
  movl %edi, %eax                                                  #  1     0x9d2c0  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                  #  2     0x9d2c2  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                         #  3     0x9d2c4  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                  #  4     0x9d2c8  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                  #  5     0x9d2cb  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                         #  6     0x9d2cd  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                  #  7     0x9d2d1  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                  #  8     0x9d2d3  2      OPC=movl_r32_r32    
  movl %esi, 0x8(%r15,%rdx,1)                                      #  9     0x9d2d5  5      OPC=movl_m32_r32    
  popq %r11                                                        #  10    0x9d2da  2      OPC=popq_r64_1      
  nop                                                              #  11    0x9d2dc  1      OPC=nop             
  nop                                                              #  12    0x9d2dd  1      OPC=nop             
  nop                                                              #  13    0x9d2de  1      OPC=nop             
  nop                                                              #  14    0x9d2df  1      OPC=nop             
  andl $0xffffffe0, %r11d                                          #  15    0x9d2e0  7      OPC=andl_r32_imm32  
  nop                                                              #  16    0x9d2e7  1      OPC=nop             
  nop                                                              #  17    0x9d2e8  1      OPC=nop             
  nop                                                              #  18    0x9d2e9  1      OPC=nop             
  nop                                                              #  19    0x9d2ea  1      OPC=nop             
  addq %r15, %r11                                                  #  20    0x9d2eb  3      OPC=addq_r64_r64    
  jmpq %r11                                                        #  21    0x9d2ee  3      OPC=jmpq_r64        
  nop                                                              #  22    0x9d2f1  1      OPC=nop             
  nop                                                              #  23    0x9d2f2  1      OPC=nop             
  nop                                                              #  24    0x9d2f3  1      OPC=nop             
  nop                                                              #  25    0x9d2f4  1      OPC=nop             
  nop                                                              #  26    0x9d2f5  1      OPC=nop             
  nop                                                              #  27    0x9d2f6  1      OPC=nop             
  nop                                                              #  28    0x9d2f7  1      OPC=nop             
  nop                                                              #  29    0x9d2f8  1      OPC=nop             
  nop                                                              #  30    0x9d2f9  1      OPC=nop             
  nop                                                              #  31    0x9d2fa  1      OPC=nop             
  nop                                                              #  32    0x9d2fb  1      OPC=nop             
  nop                                                              #  33    0x9d2fc  1      OPC=nop             
  nop                                                              #  34    0x9d2fd  1      OPC=nop             
  nop                                                              #  35    0x9d2fe  1      OPC=nop             
  nop                                                              #  36    0x9d2ff  1      OPC=nop             
  nop                                                              #  37    0x9d300  1      OPC=nop             
  nop                                                              #  38    0x9d301  1      OPC=nop             
  nop                                                              #  39    0x9d302  1      OPC=nop             
  nop                                                              #  40    0x9d303  1      OPC=nop             
  nop                                                              #  41    0x9d304  1      OPC=nop             
  nop                                                              #  42    0x9d305  1      OPC=nop             
  nop                                                              #  43    0x9d306  1      OPC=nop             
                                                                                                                
.size _ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St5_Setw, .-_ZStlsIwSt11char_traitsIwEERSt13basic_ostreamIT_T0_ES6_St5_Setw

