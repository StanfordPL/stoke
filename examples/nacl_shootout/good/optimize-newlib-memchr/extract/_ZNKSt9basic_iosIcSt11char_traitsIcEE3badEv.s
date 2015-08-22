  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv, @function

#! file-offset 0xa5280
#! rip-offset  0x65280
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv:  #        0x65280  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x65280  2      OPC=movl_r32_r32    
  popq %r11                                    #  2     0x65282  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  3     0x65284  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                 #  4     0x65286  5      OPC=movl_r32_m32    
  andl $0x1, %eax                              #  5     0x6528b  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d                      #  6     0x6528e  7      OPC=andl_r32_imm32  
  nop                                          #  7     0x65295  1      OPC=nop             
  nop                                          #  8     0x65296  1      OPC=nop             
  nop                                          #  9     0x65297  1      OPC=nop             
  nop                                          #  10    0x65298  1      OPC=nop             
  addq %r15, %r11                              #  11    0x65299  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  12    0x6529c  3      OPC=jmpq_r64        
  nop                                          #  13    0x6529f  1      OPC=nop             
  nop                                          #  14    0x652a0  1      OPC=nop             
  nop                                          #  15    0x652a1  1      OPC=nop             
  nop                                          #  16    0x652a2  1      OPC=nop             
  nop                                          #  17    0x652a3  1      OPC=nop             
  nop                                          #  18    0x652a4  1      OPC=nop             
  nop                                          #  19    0x652a5  1      OPC=nop             
  nop                                          #  20    0x652a6  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv

