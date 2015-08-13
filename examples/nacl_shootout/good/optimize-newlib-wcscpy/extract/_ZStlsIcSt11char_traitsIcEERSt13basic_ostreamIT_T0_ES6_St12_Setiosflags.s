  .text
  .globl _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St12_Setiosflags
  .type _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St12_Setiosflags, @function

#! file-offset 0xdcc40
#! rip-offset  0x9cc40
#! capacity    64 bytes

# Text                                                                     #  Line  RIP      Bytes  Opcode              
._ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St12_Setiosflags:  #        0x9cc40  0      OPC=<label>         
  movl %edi, %eax                                                          #  1     0x9cc40  2      OPC=movl_r32_r32    
  movl %eax, %eax                                                          #  2     0x9cc42  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %edx                                                 #  3     0x9cc44  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                                          #  4     0x9cc48  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                                          #  5     0x9cc4b  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                                 #  6     0x9cc4d  4      OPC=movl_r32_m32    
  addl %eax, %edx                                                          #  7     0x9cc51  2      OPC=addl_r32_r32    
  movl %edx, %edx                                                          #  8     0x9cc53  2      OPC=movl_r32_r32    
  orl %esi, 0xc(%r15,%rdx,1)                                               #  9     0x9cc55  5      OPC=orl_m32_r32     
  popq %r11                                                                #  10    0x9cc5a  2      OPC=popq_r64_1      
  nop                                                                      #  11    0x9cc5c  1      OPC=nop             
  nop                                                                      #  12    0x9cc5d  1      OPC=nop             
  nop                                                                      #  13    0x9cc5e  1      OPC=nop             
  nop                                                                      #  14    0x9cc5f  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                  #  15    0x9cc60  7      OPC=andl_r32_imm32  
  nop                                                                      #  16    0x9cc67  1      OPC=nop             
  nop                                                                      #  17    0x9cc68  1      OPC=nop             
  nop                                                                      #  18    0x9cc69  1      OPC=nop             
  nop                                                                      #  19    0x9cc6a  1      OPC=nop             
  addq %r15, %r11                                                          #  20    0x9cc6b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                #  21    0x9cc6e  3      OPC=jmpq_r64        
  nop                                                                      #  22    0x9cc71  1      OPC=nop             
  nop                                                                      #  23    0x9cc72  1      OPC=nop             
  nop                                                                      #  24    0x9cc73  1      OPC=nop             
  nop                                                                      #  25    0x9cc74  1      OPC=nop             
  nop                                                                      #  26    0x9cc75  1      OPC=nop             
  nop                                                                      #  27    0x9cc76  1      OPC=nop             
  nop                                                                      #  28    0x9cc77  1      OPC=nop             
  nop                                                                      #  29    0x9cc78  1      OPC=nop             
  nop                                                                      #  30    0x9cc79  1      OPC=nop             
  nop                                                                      #  31    0x9cc7a  1      OPC=nop             
  nop                                                                      #  32    0x9cc7b  1      OPC=nop             
  nop                                                                      #  33    0x9cc7c  1      OPC=nop             
  nop                                                                      #  34    0x9cc7d  1      OPC=nop             
  nop                                                                      #  35    0x9cc7e  1      OPC=nop             
  nop                                                                      #  36    0x9cc7f  1      OPC=nop             
  nop                                                                      #  37    0x9cc80  1      OPC=nop             
  nop                                                                      #  38    0x9cc81  1      OPC=nop             
  nop                                                                      #  39    0x9cc82  1      OPC=nop             
  nop                                                                      #  40    0x9cc83  1      OPC=nop             
  nop                                                                      #  41    0x9cc84  1      OPC=nop             
  nop                                                                      #  42    0x9cc85  1      OPC=nop             
  nop                                                                      #  43    0x9cc86  1      OPC=nop             
                                                                                                                        
.size _ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St12_Setiosflags, .-_ZStlsIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_St12_Setiosflags

