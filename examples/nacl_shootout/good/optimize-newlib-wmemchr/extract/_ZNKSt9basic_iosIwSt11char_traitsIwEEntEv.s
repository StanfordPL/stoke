  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEEntEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEEntEv, @function

#! file-offset 0xa4c20
#! rip-offset  0x64c20
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEEntEv:  #        0x64c20  0      OPC=<label>         
  movl %edi, %edi                            #  1     0x64c20  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  2     0x64c22  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)              #  3     0x64c24  6      OPC=testb_m8_imm8   
  popq %r11                                  #  4     0x64c2a  2      OPC=popq_r64_1      
  setne %al                                  #  5     0x64c2c  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d                    #  6     0x64c2f  7      OPC=andl_r32_imm32  
  nop                                        #  7     0x64c36  1      OPC=nop             
  nop                                        #  8     0x64c37  1      OPC=nop             
  nop                                        #  9     0x64c38  1      OPC=nop             
  nop                                        #  10    0x64c39  1      OPC=nop             
  addq %r15, %r11                            #  11    0x64c3a  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  12    0x64c3d  3      OPC=jmpq_r64        
  nop                                        #  13    0x64c40  1      OPC=nop             
  nop                                        #  14    0x64c41  1      OPC=nop             
  nop                                        #  15    0x64c42  1      OPC=nop             
  nop                                        #  16    0x64c43  1      OPC=nop             
  nop                                        #  17    0x64c44  1      OPC=nop             
  nop                                        #  18    0x64c45  1      OPC=nop             
  nop                                        #  19    0x64c46  1      OPC=nop             
                                                                                          
.size _ZNKSt9basic_iosIwSt11char_traitsIwEEntEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEEntEv

