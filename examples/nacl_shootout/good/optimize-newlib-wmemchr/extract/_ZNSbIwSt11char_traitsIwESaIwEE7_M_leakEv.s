  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv
  .type _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv, @function

#! file-offset 0x11a260
#! rip-offset  0xda260
#! capacity    64 bytes

# Text                                                   #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv:              #        0xda260  0      OPC=<label>         
  movl %edi, %edi                                        #  1     0xda260  2      OPC=movl_r32_r32    
  movl %edi, %edi                                        #  2     0xda262  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                               #  3     0xda264  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                        #  4     0xda268  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                        #  5     0xda26b  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                            #  6     0xda26d  5      OPC=movl_r32_m32    
  testl %eax, %eax                                       #  7     0xda272  2      OPC=testl_r32_r32   
  js .L_da280                                            #  8     0xda274  2      OPC=js_label        
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE12_M_leak_hardEv  #  9     0xda276  5      OPC=jmpq_label_1    
  nop                                                    #  10    0xda27b  1      OPC=nop             
  nop                                                    #  11    0xda27c  1      OPC=nop             
  nop                                                    #  12    0xda27d  1      OPC=nop             
  nop                                                    #  13    0xda27e  1      OPC=nop             
  nop                                                    #  14    0xda27f  1      OPC=nop             
.L_da280:                                                #        0xda280  0      OPC=<label>         
  popq %r11                                              #  15    0xda280  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                #  16    0xda282  7      OPC=andl_r32_imm32  
  nop                                                    #  17    0xda289  1      OPC=nop             
  nop                                                    #  18    0xda28a  1      OPC=nop             
  nop                                                    #  19    0xda28b  1      OPC=nop             
  nop                                                    #  20    0xda28c  1      OPC=nop             
  addq %r15, %r11                                        #  21    0xda28d  3      OPC=addq_r64_r64    
  jmpq %r11                                              #  22    0xda290  3      OPC=jmpq_r64        
  nop                                                    #  23    0xda293  1      OPC=nop             
  nop                                                    #  24    0xda294  1      OPC=nop             
  nop                                                    #  25    0xda295  1      OPC=nop             
  nop                                                    #  26    0xda296  1      OPC=nop             
  nop                                                    #  27    0xda297  1      OPC=nop             
  nop                                                    #  28    0xda298  1      OPC=nop             
  nop                                                    #  29    0xda299  1      OPC=nop             
  nop                                                    #  30    0xda29a  1      OPC=nop             
  nop                                                    #  31    0xda29b  1      OPC=nop             
  nop                                                    #  32    0xda29c  1      OPC=nop             
  nop                                                    #  33    0xda29d  1      OPC=nop             
  nop                                                    #  34    0xda29e  1      OPC=nop             
  nop                                                    #  35    0xda29f  1      OPC=nop             
  nop                                                    #  36    0xda2a0  1      OPC=nop             
  nop                                                    #  37    0xda2a1  1      OPC=nop             
  nop                                                    #  38    0xda2a2  1      OPC=nop             
  nop                                                    #  39    0xda2a3  1      OPC=nop             
  nop                                                    #  40    0xda2a4  1      OPC=nop             
  nop                                                    #  41    0xda2a5  1      OPC=nop             
  nop                                                    #  42    0xda2a6  1      OPC=nop             
                                                                                                      
.size _ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv, .-_ZNSbIwSt11char_traitsIwESaIwEE7_M_leakEv

