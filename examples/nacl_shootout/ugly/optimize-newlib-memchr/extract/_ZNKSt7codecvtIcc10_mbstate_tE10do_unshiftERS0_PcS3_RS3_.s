  .text
  .globl _ZNKSt7codecvtIcc10_mbstate_tE10do_unshiftERS0_PcS3_RS3_
  .type _ZNKSt7codecvtIcc10_mbstate_tE10do_unshiftERS0_PcS3_RS3_, @function

#! file-offset 0x123fe0
#! rip-offset  0xe3fe0
#! capacity    32 bytes

# Text                                                      #  Line  RIP      Bytes  Opcode              
._ZNKSt7codecvtIcc10_mbstate_tE10do_unshiftERS0_PcS3_RS3_:  #        0xe3fe0  0      OPC=<label>         
  popq %r11                                                 #  1     0xe3fe0  2      OPC=popq_r64_1      
  movl %r8d, %r8d                                           #  2     0xe3fe2  3      OPC=movl_r32_r32    
  movl $0x3, %eax                                           #  3     0xe3fe5  5      OPC=movl_r32_imm32  
  movl %r8d, %r8d                                           #  4     0xe3fea  3      OPC=movl_r32_r32    
  movl %edx, (%r15,%r8,1)                                   #  5     0xe3fed  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                                   #  6     0xe3ff1  7      OPC=andl_r32_imm32  
  nop                                                       #  7     0xe3ff8  1      OPC=nop             
  nop                                                       #  8     0xe3ff9  1      OPC=nop             
  nop                                                       #  9     0xe3ffa  1      OPC=nop             
  nop                                                       #  10    0xe3ffb  1      OPC=nop             
  addq %r15, %r11                                           #  11    0xe3ffc  3      OPC=addq_r64_r64    
  jmpq %r11                                                 #  12    0xe3fff  3      OPC=jmpq_r64        
  nop                                                       #  13    0xe4002  1      OPC=nop             
  nop                                                       #  14    0xe4003  1      OPC=nop             
  nop                                                       #  15    0xe4004  1      OPC=nop             
  nop                                                       #  16    0xe4005  1      OPC=nop             
  nop                                                       #  17    0xe4006  1      OPC=nop             
                                                                                                         
.size _ZNKSt7codecvtIcc10_mbstate_tE10do_unshiftERS0_PcS3_RS3_, .-_ZNKSt7codecvtIcc10_mbstate_tE10do_unshiftERS0_PcS3_RS3_

