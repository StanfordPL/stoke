  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEEntEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEEntEv, @function

#! file-offset 0xa4ac0
#! rip-offset  0x64ac0
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEEntEv:  #        0x64ac0  0      OPC=<label>         
  movl %edi, %edi                            #  1     0x64ac0  2      OPC=movl_r32_r32    
  movl %edi, %edi                            #  2     0x64ac2  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)              #  3     0x64ac4  6      OPC=testb_m8_imm8   
  popq %r11                                  #  4     0x64aca  2      OPC=popq_r64_1      
  setne %al                                  #  5     0x64acc  3      OPC=setne_r8        
  andl $0xffffffe0, %r11d                    #  6     0x64acf  7      OPC=andl_r32_imm32  
  nop                                        #  7     0x64ad6  1      OPC=nop             
  nop                                        #  8     0x64ad7  1      OPC=nop             
  nop                                        #  9     0x64ad8  1      OPC=nop             
  nop                                        #  10    0x64ad9  1      OPC=nop             
  addq %r15, %r11                            #  11    0x64ada  3      OPC=addq_r64_r64    
  jmpq %r11                                  #  12    0x64add  3      OPC=jmpq_r64        
  nop                                        #  13    0x64ae0  1      OPC=nop             
  nop                                        #  14    0x64ae1  1      OPC=nop             
  nop                                        #  15    0x64ae2  1      OPC=nop             
  nop                                        #  16    0x64ae3  1      OPC=nop             
  nop                                        #  17    0x64ae4  1      OPC=nop             
  nop                                        #  18    0x64ae5  1      OPC=nop             
  nop                                        #  19    0x64ae6  1      OPC=nop             
                                                                                          
.size _ZNKSt9basic_iosIcSt11char_traitsIcEEntEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEEntEv

