  .text
  .globl _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE10date_orderEv
  .type _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE10date_orderEv, @function

#! file-offset 0xf1ae0
#! rip-offset  0xb1ae0
#! capacity    32 bytes

# Text                                                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE10date_orderEv:  #        0xb1ae0  0      OPC=<label>         
  movl %edi, %edi                                                               #  1     0xb1ae0  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                               #  2     0xb1ae2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                      #  3     0xb1ae4  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                               #  4     0xb1ae8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                   #  5     0xb1aea  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                                        #  6     0xb1aef  6      OPC=andl_r32_imm32  
  nop                                                                           #  7     0xb1af5  1      OPC=nop             
  nop                                                                           #  8     0xb1af6  1      OPC=nop             
  nop                                                                           #  9     0xb1af7  1      OPC=nop             
  addq %r15, %rax                                                               #  10    0xb1af8  3      OPC=addq_r64_r64    
  jmpq %rax                                                                     #  11    0xb1afb  2      OPC=jmpq_r64        
  nop                                                                           #  12    0xb1afd  1      OPC=nop             
  nop                                                                           #  13    0xb1afe  1      OPC=nop             
  nop                                                                           #  14    0xb1aff  1      OPC=nop             
  nop                                                                           #  15    0xb1b00  1      OPC=nop             
  nop                                                                           #  16    0xb1b01  1      OPC=nop             
  nop                                                                           #  17    0xb1b02  1      OPC=nop             
  nop                                                                           #  18    0xb1b03  1      OPC=nop             
  nop                                                                           #  19    0xb1b04  1      OPC=nop             
  nop                                                                           #  20    0xb1b05  1      OPC=nop             
                                                                                                                             
.size _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE10date_orderEv, .-_ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE10date_orderEv

