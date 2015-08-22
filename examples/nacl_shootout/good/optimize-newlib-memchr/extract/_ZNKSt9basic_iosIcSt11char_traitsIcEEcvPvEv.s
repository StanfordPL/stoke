  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv, @function

#! file-offset 0xa51c0
#! rip-offset  0x651c0
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv:  #        0x651c0  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x651c0  2      OPC=movl_r32_r32    
  xorl %eax, %eax                              #  2     0x651c2  2      OPC=xorl_r32_r32    
  popq %r11                                    #  3     0x651c4  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  4     0x651c6  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)                #  5     0x651c8  6      OPC=testb_m8_imm8   
  cmoveq %rdi, %rax                            #  6     0x651ce  4      OPC=cmoveq_r64_r64  
  andl $0xffffffe0, %r11d                      #  7     0x651d2  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x651d9  1      OPC=nop             
  nop                                          #  9     0x651da  1      OPC=nop             
  nop                                          #  10    0x651db  1      OPC=nop             
  nop                                          #  11    0x651dc  1      OPC=nop             
  addq %r15, %r11                              #  12    0x651dd  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x651e0  3      OPC=jmpq_r64        
  nop                                          #  14    0x651e3  1      OPC=nop             
  nop                                          #  15    0x651e4  1      OPC=nop             
  nop                                          #  16    0x651e5  1      OPC=nop             
  nop                                          #  17    0x651e6  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEEcvPvEv

