  .text
  .globl _ZNSs4_Rep15_M_set_sharableEv
  .type _ZNSs4_Rep15_M_set_sharableEv, @function

#! file-offset 0xeac40
#! rip-offset  0xaac40
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNSs4_Rep15_M_set_sharableEv:  #        0xaac40  0      OPC=<label>         
  popq %r11                      #  1     0xaac40  2      OPC=popq_r64_1      
  movl %edi, %edi                #  2     0xaac42  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  3     0xaac44  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)    #  4     0xaac46  9      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d        #  5     0xaac4f  7      OPC=andl_r32_imm32  
  nop                            #  6     0xaac56  1      OPC=nop             
  nop                            #  7     0xaac57  1      OPC=nop             
  nop                            #  8     0xaac58  1      OPC=nop             
  nop                            #  9     0xaac59  1      OPC=nop             
  addq %r15, %r11                #  10    0xaac5a  3      OPC=addq_r64_r64    
  jmpq %r11                      #  11    0xaac5d  3      OPC=jmpq_r64        
  nop                            #  12    0xaac60  1      OPC=nop             
  nop                            #  13    0xaac61  1      OPC=nop             
  nop                            #  14    0xaac62  1      OPC=nop             
  nop                            #  15    0xaac63  1      OPC=nop             
  nop                            #  16    0xaac64  1      OPC=nop             
  nop                            #  17    0xaac65  1      OPC=nop             
  nop                            #  18    0xaac66  1      OPC=nop             
                                                                              
.size _ZNSs4_Rep15_M_set_sharableEv, .-_ZNSs4_Rep15_M_set_sharableEv

