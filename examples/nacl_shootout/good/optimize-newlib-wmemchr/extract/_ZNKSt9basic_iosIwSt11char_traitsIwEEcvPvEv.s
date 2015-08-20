  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEEcvPvEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEEcvPvEv, @function

#! file-offset 0xa4c00
#! rip-offset  0x64c00
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEEcvPvEv:  #        0x64c00  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x64c00  2      OPC=movl_r32_r32    
  xorl %eax, %eax                              #  2     0x64c02  2      OPC=xorl_r32_r32    
  popq %r11                                    #  3     0x64c04  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  4     0x64c06  2      OPC=movl_r32_r32    
  testb $0x5, 0x14(%r15,%rdi,1)                #  5     0x64c08  6      OPC=testb_m8_imm8   
  cmoveq %rdi, %rax                            #  6     0x64c0e  4      OPC=cmoveq_r64_r64  
  andl $0xffffffe0, %r11d                      #  7     0x64c12  7      OPC=andl_r32_imm32  
  nop                                          #  8     0x64c19  1      OPC=nop             
  nop                                          #  9     0x64c1a  1      OPC=nop             
  nop                                          #  10    0x64c1b  1      OPC=nop             
  nop                                          #  11    0x64c1c  1      OPC=nop             
  addq %r15, %r11                              #  12    0x64c1d  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  13    0x64c20  3      OPC=jmpq_r64        
  nop                                          #  14    0x64c23  1      OPC=nop             
  nop                                          #  15    0x64c24  1      OPC=nop             
  nop                                          #  16    0x64c25  1      OPC=nop             
  nop                                          #  17    0x64c26  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIwSt11char_traitsIwEEcvPvEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEEcvPvEv

