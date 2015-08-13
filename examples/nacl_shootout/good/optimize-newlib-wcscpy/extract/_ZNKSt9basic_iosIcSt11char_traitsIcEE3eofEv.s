  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv, @function

#! file-offset 0xa4820
#! rip-offset  0x64820
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv:  #        0x64820  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x64820  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0x64822  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                 #  3     0x64824  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0x64829  2      OPC=popq_r64_1      
  shrl $0x1, %eax                              #  5     0x6482b  2      OPC=shrl_r32_one    
  andl $0x1, %eax                              #  6     0x6482d  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d                      #  7     0x64830  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x64837  1      OPC=nop             
  nop                                          #  9     0x64838  1      OPC=nop             
  nop                                          #  10    0x64839  1      OPC=nop             
  nop                                          #  11    0x6483a  1      OPC=nop             
  addq %r15, %r11                              #  12    0x6483b  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x6483e  3      OPC=jmpq_r64        
  nop                                          #  14    0x64841  1      OPC=nop             
  nop                                          #  15    0x64842  1      OPC=nop             
  nop                                          #  16    0x64843  1      OPC=nop             
  nop                                          #  17    0x64844  1      OPC=nop             
  nop                                          #  18    0x64845  1      OPC=nop             
  nop                                          #  19    0x64846  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv

