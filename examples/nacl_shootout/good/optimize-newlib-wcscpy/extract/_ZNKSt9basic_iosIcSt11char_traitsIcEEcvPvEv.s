  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv, @function

#! file-offset 0xa47a0
#! rip-offset  0x647a0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv:  #        0x647a0  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x647a0  2      OPC=movl_r32_r32    
  xorl %eax, %eax                              #  2     0x647a2  2      OPC=xorl_r32_r32    
  popq %r11                                    #  3     0x647a4  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  4     0x647a6  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)                #  5     0x647a8  6      OPC=testb_m8_imm8   
  cmoveq %rdi, %rax                            #  6     0x647ae  4      OPC=cmoveq_r64_r64  
  andl $0xffffffe0, %r11d                      #  7     0x647b2  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x647b9  1      OPC=nop             
  nop                                          #  9     0x647ba  1      OPC=nop             
  nop                                          #  10    0x647bb  1      OPC=nop             
  nop                                          #  11    0x647bc  1      OPC=nop             
  addq %r15, %r11                              #  12    0x647bd  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x647c0  3      OPC=jmpq_r64        
  nop                                          #  14    0x647c3  1      OPC=nop             
  nop                                          #  15    0x647c4  1      OPC=nop             
  nop                                          #  16    0x647c5  1      OPC=nop             
  nop                                          #  17    0x647c6  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv

