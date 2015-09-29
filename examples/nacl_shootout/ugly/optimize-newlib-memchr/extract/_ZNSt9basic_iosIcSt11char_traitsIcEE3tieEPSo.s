  .text
  .globl _ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo
  .type _ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo, @function

#! file-offset 0xa52e0
#! rip-offset  0x652e0
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo:  #        0x652e0  0      OPC=<label>         
  popq %r11                                     #  1     0x652e0  2      OPC=popq_r64_1      
  movl %edi, %edi                               #  2     0x652e2  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  3     0x652e4  2      OPC=movl_r32_r32    
  movl 0x70(%r15,%rdi,1), %eax                  #  4     0x652e6  5      OPC=movl_r32_m32    
  movl %edi, %edi                               #  5     0x652eb  2      OPC=movl_r32_r32    
  movl %esi, 0x70(%r15,%rdi,1)                  #  6     0x652ed  5      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d                       #  7     0x652f2  7      OPC=andl_r32_imm32  
  nop                                           #  8     0x652f9  1      OPC=nop             
  nop                                           #  9     0x652fa  1      OPC=nop             
  nop                                           #  10    0x652fb  1      OPC=nop             
  nop                                           #  11    0x652fc  1      OPC=nop             
  addq %r15, %r11                               #  12    0x652fd  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  13    0x65300  3      OPC=jmpq_r64        
  nop                                           #  14    0x65303  1      OPC=nop             
  nop                                           #  15    0x65304  1      OPC=nop             
  nop                                           #  16    0x65305  1      OPC=nop             
  nop                                           #  17    0x65306  1      OPC=nop             
                                                                                             
.size _ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo, .-_ZNSt9basic_iosIcSt11char_traitsIcEE3tieEPSo

