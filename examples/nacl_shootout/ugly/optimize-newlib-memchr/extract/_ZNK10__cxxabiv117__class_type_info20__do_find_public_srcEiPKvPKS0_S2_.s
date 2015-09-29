  .text
  .globl _ZNK10__cxxabiv117__class_type_info20__do_find_public_srcEiPKvPKS0_S2_
  .type _ZNK10__cxxabiv117__class_type_info20__do_find_public_srcEiPKvPKS0_S2_, @function

#! file-offset 0x1231c0
#! rip-offset  0xe31c0
#! capacity    32 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNK10__cxxabiv117__class_type_info20__do_find_public_srcEiPKvPKS0_S2_:  #        0xe31c0  0      OPC=<label>         
  popq %r11                                                               #  1     0xe31c0  2      OPC=popq_r64_1      
  xorl %eax, %eax                                                         #  2     0xe31c2  2      OPC=xorl_r32_r32    
  cmpl %edx, %r8d                                                         #  3     0xe31c4  3      OPC=cmpl_r32_r32    
  sete %al                                                                #  4     0xe31c7  3      OPC=sete_r8         
  leal 0x1(%rax,%rax,4), %eax                                             #  5     0xe31ca  4      OPC=leal_r32_m16    
  andl $0xffffffe0, %r11d                                                 #  6     0xe31ce  7      OPC=andl_r32_imm32  
  nop                                                                     #  7     0xe31d5  1      OPC=nop             
  nop                                                                     #  8     0xe31d6  1      OPC=nop             
  nop                                                                     #  9     0xe31d7  1      OPC=nop             
  nop                                                                     #  10    0xe31d8  1      OPC=nop             
  addq %r15, %r11                                                         #  11    0xe31d9  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  12    0xe31dc  3      OPC=jmpq_r64        
  nop                                                                     #  13    0xe31df  1      OPC=nop             
  nop                                                                     #  14    0xe31e0  1      OPC=nop             
  nop                                                                     #  15    0xe31e1  1      OPC=nop             
  nop                                                                     #  16    0xe31e2  1      OPC=nop             
  nop                                                                     #  17    0xe31e3  1      OPC=nop             
  nop                                                                     #  18    0xe31e4  1      OPC=nop             
  nop                                                                     #  19    0xe31e5  1      OPC=nop             
  nop                                                                     #  20    0xe31e6  1      OPC=nop             
                                                                                                                       
.size _ZNK10__cxxabiv117__class_type_info20__do_find_public_srcEiPKvPKS0_S2_, .-_ZNK10__cxxabiv117__class_type_info20__do_find_public_srcEiPKvPKS0_S2_

