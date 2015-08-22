  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEEntEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEEntEv, @function

#! file-offset 0xa51e0
#! rip-offset  0x651e0
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEEntEv:  #        0x651e0  0      OPC=<label>         
  movl %edi, %edi                            #  1     0x651e0  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  2     0x651e2  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)              #  3     0x651e4  6      OPC=testb_m8_imm8   
  popq %r11                                  #  4     0x651ea  2      OPC=popq_r64_1      
  setne %al                                  #  5     0x651ec  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d                    #  6     0x651ef  7      OPC=andl_r32_imm32  
  nop                                        #  7     0x651f6  1      OPC=nop             
  nop                                        #  8     0x651f7  1      OPC=nop             
  nop                                        #  9     0x651f8  1      OPC=nop             
  nop                                        #  10    0x651f9  1      OPC=nop             
  addq %r15, %r11                            #  11    0x651fa  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  12    0x651fd  3      OPC=jmpq_r64        
  nop                                        #  13    0x65200  1      OPC=nop             
  nop                                        #  14    0x65201  1      OPC=nop             
  nop                                        #  15    0x65202  1      OPC=nop             
  nop                                        #  16    0x65203  1      OPC=nop             
  nop                                        #  17    0x65204  1      OPC=nop             
  nop                                        #  18    0x65205  1      OPC=nop             
  nop                                        #  19    0x65206  1      OPC=nop             
                                                                                          
.size _ZNKSt9basic_iosIcSt11char_traitsIcEEntEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv

