  .text
  .globl _ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv
  .type _ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv, @function

#! file-offset 0xa5220
#! rip-offset  0x65220
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv:  #        0x65220  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x65220  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  2     0x65222  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %eax                  #  3     0x65224  5      OPC=movl_r32_m32    
  popq %r11                                     #  4     0x65229  2      OPC=popq_r64_1      
  testl %eax, %eax                              #  5     0x6522b  2      OPC=testl_r32_r32   
  sete %al                                      #  6     0x6522d  3      OPC=sete_r8         
  andl $0xffffffe0, %r11d                       #  7     0x65230  7      OPC=andl_r32_imm32  
  nop                                           #  8     0x65237  1      OPC=nop             
  nop                                           #  9     0x65238  1      OPC=nop             
  nop                                           #  10    0x65239  1      OPC=nop             
  nop                                           #  11    0x6523a  1      OPC=nop             
  addq %r15, %r11                               #  12    0x6523b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  13    0x6523e  3      OPC=jmpq_r64        
  nop                                           #  14    0x65241  1      OPC=nop             
  nop                                           #  15    0x65242  1      OPC=nop             
  nop                                           #  16    0x65243  1      OPC=nop             
  nop                                           #  17    0x65244  1      OPC=nop             
  nop                                           #  18    0x65245  1      OPC=nop             
  nop                                           #  19    0x65246  1      OPC=nop             
                                                                                             
.size _ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv, .-_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv

