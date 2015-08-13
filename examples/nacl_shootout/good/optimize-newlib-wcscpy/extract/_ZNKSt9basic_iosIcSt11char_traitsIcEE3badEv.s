  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv, @function

#! file-offset 0xa4860
#! rip-offset  0x64860
#! capacity    32 bytes

# Text                                         #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv:  #        0x64860  0      OPC=<label>         
  movl %edi, %edi                              #  1     0x64860  2      OPC=movl_r32_r32    
  popq %r11                                    #  2     0x64862  2      OPC=popq_r64_1      
  movl %edi, %edi                              #  3     0x64864  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                 #  4     0x64866  5      OPC=movl_r32_m32    
  andl $0x1, %eax                              #  5     0x6486b  3      OPC=andl_r32_imm8   
  andl $0xffffffe0, %r11d                      #  6     0x6486e  7      OPC=andl_r32_imm32  
  nop                                          #  7     0x64875  1      OPC=nop             
  nop                                          #  8     0x64876  1      OPC=nop             
  nop                                          #  9     0x64877  1      OPC=nop             
  nop                                          #  10    0x64878  1      OPC=nop             
  addq %r15, %r11                              #  11    0x64879  3      OPC=addq_r64_r64    
  jmpq %r11                                    #  12    0x6487c  3      OPC=jmpq_r64        
  nop                                          #  13    0x6487f  1      OPC=nop             
  nop                                          #  14    0x64880  1      OPC=nop             
  nop                                          #  15    0x64881  1      OPC=nop             
  nop                                          #  16    0x64882  1      OPC=nop             
  nop                                          #  17    0x64883  1      OPC=nop             
  nop                                          #  18    0x64884  1      OPC=nop             
  nop                                          #  19    0x64885  1      OPC=nop             
  nop                                          #  20    0x64886  1      OPC=nop             
                                                                                            
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE3badEv

