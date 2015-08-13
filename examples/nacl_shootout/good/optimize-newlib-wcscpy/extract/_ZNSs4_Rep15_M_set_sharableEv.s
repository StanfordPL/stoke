  .text
  .globl _ZNSs4_Rep15_M_set_sharableEv
  .type _ZNSs4_Rep15_M_set_sharableEv, @function

#! file-offset 0xea940
#! rip-offset  0xaa940
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  Opcode              
._ZNSs4_Rep15_M_set_sharableEv:  #        0xaa940  0      OPC=<label>         
  popq %r11                      #  1     0xaa940  2      OPC=popq_r64_1      
  movl %edi, %edi                #  2     0xaa942  2      OPC=movl_r32_r32    
  movl %edi, %edi                #  3     0xaa944  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)    #  4     0xaa946  9      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d        #  5     0xaa94f  7      OPC=andl_r32_imm32  
  nop                            #  6     0xaa956  1      OPC=nop             
  nop                            #  7     0xaa957  1      OPC=nop             
  nop                            #  8     0xaa958  1      OPC=nop             
  nop                            #  9     0xaa959  1      OPC=nop             
  addq %r15, %r11                #  10    0xaa95a  3      OPC=addq_r64_r64    
  jmpq %r11                      #  11    0xaa95d  3      OPC=jmpq_r64        
  nop                            #  12    0xaa960  1      OPC=nop             
  nop                            #  13    0xaa961  1      OPC=nop             
  nop                            #  14    0xaa962  1      OPC=nop             
  nop                            #  15    0xaa963  1      OPC=nop             
  nop                            #  16    0xaa964  1      OPC=nop             
  nop                            #  17    0xaa965  1      OPC=nop             
  nop                            #  18    0xaa966  1      OPC=nop             
                                                                              
.size _ZNSs4_Rep15_M_set_sharableEv, .-_ZNSs4_Rep15_M_set_sharableEv

