  .text
  .globl _ZNKSi6sentrycvbEv
  .type _ZNKSi6sentrycvbEv, @function

#! file-offset 0xa78a0
#! rip-offset  0x678a0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNKSi6sentrycvbEv:          #        0x678a0  0      OPC=<label>         
  popq %r11                   #  1     0x678a0  2      OPC=popq_r64_1      
  movl %edi, %edi             #  2     0x678a2  2      OPC=movl_r32_r32    
  movl %edi, %edi             #  3     0x678a4  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %eax  #  4     0x678a6  5      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d     #  5     0x678ab  7      OPC=andl_r32_imm32  
  nop                         #  6     0x678b2  1      OPC=nop             
  nop                         #  7     0x678b3  1      OPC=nop             
  nop                         #  8     0x678b4  1      OPC=nop             
  nop                         #  9     0x678b5  1      OPC=nop             
  addq %r15, %r11             #  10    0x678b6  3      OPC=addq_r64_r64    
  jmpq %r11                   #  11    0x678b9  3      OPC=jmpq_r64        
  nop                         #  12    0x678bc  1      OPC=nop             
  nop                         #  13    0x678bd  1      OPC=nop             
  nop                         #  14    0x678be  1      OPC=nop             
  nop                         #  15    0x678bf  1      OPC=nop             
  nop                         #  16    0x678c0  1      OPC=nop             
  nop                         #  17    0x678c1  1      OPC=nop             
  nop                         #  18    0x678c2  1      OPC=nop             
  nop                         #  19    0x678c3  1      OPC=nop             
  nop                         #  20    0x678c4  1      OPC=nop             
  nop                         #  21    0x678c5  1      OPC=nop             
  nop                         #  22    0x678c6  1      OPC=nop             
                                                                           
.size _ZNKSi6sentrycvbEv, .-_ZNKSi6sentrycvbEv

