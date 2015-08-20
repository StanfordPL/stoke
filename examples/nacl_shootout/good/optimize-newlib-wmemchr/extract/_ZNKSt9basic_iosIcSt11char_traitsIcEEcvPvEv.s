  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv, @function

#! file-offset 0xa4aa0
#! rip-offset  0x64aa0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv:  #        0x64aa0  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x64aa0  2      OPC=movl_r32_r32    
  xorl %eax, %eax                              #  2     0x64aa2  2      OPC=xorl_r32_r32    
  popq %r11                                    #  3     0x64aa4  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  4     0x64aa6  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)                #  5     0x64aa8  6      OPC=testb_m8_imm8   
  cmoveq %rdi, %rax                            #  6     0x64aae  4      OPC=cmoveq_r64_r64  
  andl $0xffffffe0, %r11d                      #  7     0x64ab2  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x64ab9  1      OPC=nop             
  nop                                          #  9     0x64aba  1      OPC=nop             
  nop                                          #  10    0x64abb  1      OPC=nop             
  nop                                          #  11    0x64abc  1      OPC=nop             
  addq %r15, %r11                              #  12    0x64abd  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x64ac0  3      OPC=jmpq_r64        
  nop                                          #  14    0x64ac3  1      OPC=nop             
  nop                                          #  15    0x64ac4  1      OPC=nop             
  nop                                          #  16    0x64ac5  1      OPC=nop             
  nop                                          #  17    0x64ac6  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv

