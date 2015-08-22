  .text
  .globl _ZNKSt9basic_iosIwSt11char_traitsIwEE4goodEv
  .type _ZNKSt9basic_iosIwSt11char_traitsIwEE4goodEv, @function

#! file-offset 0xa5380
#! rip-offset  0x65380
#! capacity    32 bytes

# Text                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt9basic_iosIwSt11char_traitsIwEE4goodEv:  #        0x65380  0      OPC=<label>         
  movl %edi, %edi                               #  1     0x65380  2      OPC=movl_r32_r32    
  movl %edi, %edi                               #  2     0x65382  2      OPC=movl_r32_r32    
  movl 0x14(%r15,%rdi,1), %edx                  #  3     0x65384  5      OPC=movl_r32_m32    
  popq %r11                                     #  4     0x65389  2      OPC=popq_r64_1      
  testl %edx, %edx                              #  5     0x6538b  2      OPC=testl_r32_r32   
  sete %al                                      #  6     0x6538d  3      OPC=sete_r8         
  andl $0xffffffe0, %r11d                       #  7     0x65390  7      OPC=andl_r32_imm32  
  nop                                           #  8     0x65397  1      OPC=nop             
  nop                                           #  9     0x65398  1      OPC=nop             
  nop                                           #  10    0x65399  1      OPC=nop             
  nop                                           #  11    0x6539a  1      OPC=nop             
  addq %r15, %r11                               #  12    0x6539b  3      OPC=addq_r64_r64    
  jmpq %r11                                     #  13    0x6539e  3      OPC=jmpq_r64        
  nop                                           #  14    0x653a1  1      OPC=nop             
  nop                                           #  15    0x653a2  1      OPC=nop             
  nop                                           #  16    0x653a3  1      OPC=nop             
  nop                                           #  17    0x653a4  1      OPC=nop             
  nop                                           #  18    0x653a5  1      OPC=nop             
  nop                                           #  19    0x653a6  1      OPC=nop             
                                                                                             
.size _ZNKSt9basic_iosIwSt11char_traitsIwEE4goodEv, .-_ZNKSt9basic_iosIwSt11char_traitsIwEE4goodEv

