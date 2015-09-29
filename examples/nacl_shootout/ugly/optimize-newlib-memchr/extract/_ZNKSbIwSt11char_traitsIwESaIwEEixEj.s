  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEEixEj
  .type _ZNKSbIwSt11char_traitsIwESaIwEEixEj, @function

#! file-offset 0x115ea0
#! rip-offset  0xd5ea0
#! capacity    32 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNKSbIwSt11char_traitsIwESaIwEEixEj:  #        0xd5ea0  0      OPC=<label>         
  popq %r11                             #  1     0xd5ea0  2      OPC=popq_r64_1      
  movl %edi, %edi                       #  2     0xd5ea2  2      OPC=movl_r32_r32    
  leal (,%rsi,4), %eax                  #  3     0xd5ea4  7      OPC=leal_r32_m16    
  movl %edi, %edi                       #  4     0xd5eab  2      OPC=movl_r32_r32    
  addl (%r15,%rdi,1), %eax              #  5     0xd5ead  4      OPC=addl_r32_m32    
  andl $0xffffffe0, %r11d               #  6     0xd5eb1  7      OPC=andl_r32_imm32  
  nop                                   #  7     0xd5eb8  1      OPC=nop             
  nop                                   #  8     0xd5eb9  1      OPC=nop             
  nop                                   #  9     0xd5eba  1      OPC=nop             
  nop                                   #  10    0xd5ebb  1      OPC=nop             
  addq %r15, %r11                       #  11    0xd5ebc  3      OPC=addq_r64_r64    
  jmpq %r11                             #  12    0xd5ebf  3      OPC=jmpq_r64        
  nop                                   #  13    0xd5ec2  1      OPC=nop             
  nop                                   #  14    0xd5ec3  1      OPC=nop             
  nop                                   #  15    0xd5ec4  1      OPC=nop             
  nop                                   #  16    0xd5ec5  1      OPC=nop             
  nop                                   #  17    0xd5ec6  1      OPC=nop             
                                                                                     
.size _ZNKSbIwSt11char_traitsIwESaIwEEixEj, .-_ZNKSbIwSt11char_traitsIwESaIwEEixEj

