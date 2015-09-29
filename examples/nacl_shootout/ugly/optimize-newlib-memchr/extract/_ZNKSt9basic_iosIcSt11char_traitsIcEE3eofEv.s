  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv, @function

#! file-offset 0xa5240
#! rip-offset  0x65240
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv:  #        0x65240  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x65240  2      OPC=movl_r32_r32    
  movl %edi, %edi                              #  2     0x65242  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                 #  3     0x65244  5      OPC=movl_r32_m32    
  popq %r11                                    #  4     0x65249  2      OPC=popq_r64_1      
  shrl $0x1, %eax                              #  5     0x6524b  2      OPC=shrl_r32_one    
  andl $0x1, %eax                              #  6     0x6524d  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d                      #  7     0x65250  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x65257  1      OPC=nop             
  nop                                          #  9     0x65258  1      OPC=nop             
  nop                                          #  10    0x65259  1      OPC=nop             
  nop                                          #  11    0x6525a  1      OPC=nop             
  addq %r15, %r11                              #  12    0x6525b  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x6525e  3      OPC=jmpq_r64        
  nop                                          #  14    0x65261  1      OPC=nop             
  nop                                          #  15    0x65262  1      OPC=nop             
  nop                                          #  16    0x65263  1      OPC=nop             
  nop                                          #  17    0x65264  1      OPC=nop             
  nop                                          #  18    0x65265  1      OPC=nop             
  nop                                          #  19    0x65266  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE3eofEv

