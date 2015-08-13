  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEEntEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEEntEv, @function

#! file-offset 0xa4920
#! rip-offset  0x64920
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEEntEv:  #        0x64920  0      OPC=<label>         
  movl %edi, %edi                            #  1     0x64920  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  2     0x64922  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)              #  3     0x64924  6      OPC=testb_m8_imm8   
  popq %r11                                  #  4     0x6492a  2      OPC=popq_r64_1      
  setne %al                                  #  5     0x6492c  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d                    #  6     0x6492f  7      OPC=andl_r32_imm32  
  nop                                        #  7     0x64936  1      OPC=nop             
  nop                                        #  8     0x64937  1      OPC=nop             
  nop                                        #  9     0x64938  1      OPC=nop             
  nop                                        #  10    0x64939  1      OPC=nop             
  addq %r15, %r11                            #  11    0x6493a  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  12    0x6493d  3      OPC=jmpq_r64        
  nop                                        #  13    0x64940  1      OPC=nop             
  nop                                        #  14    0x64941  1      OPC=nop             
  nop                                        #  15    0x64942  1      OPC=nop             
  nop                                        #  16    0x64943  1      OPC=nop             
  nop                                        #  17    0x64944  1      OPC=nop             
  nop                                        #  18    0x64945  1      OPC=nop             
  nop                                        #  19    0x64946  1      OPC=nop             
                                                                                          
.size _ZNKSt9basic_iosIwSt11char_traitsIwEEntEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEEntEv

