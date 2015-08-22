  .text
  .globl _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE10date_orderEv
  .type _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE10date_orderEv, @function

#! file-offset 0xf2500
#! rip-offset  0xb2500
#! capacity    32 bytes

# Text                                                                          #  Line  RIP      Bytes  Opcode              
._ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE10date_orderEv:  #        0xb2500  0      OPC=<label>         
  movl %edi, %edi                                                               #  1     0xb2500  2      OPC=movl_r32_r32    
  movl %edi, %edi                                                               #  2     0xb2502  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                                      #  3     0xb2504  4      OPC=movl_r32_m32    
  movl %eax, %eax                                                               #  4     0xb2508  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                                                   #  5     0xb250a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                                                        #  6     0xb250f  6      OPC=andl_r32_imm32  
  nop                                                                           #  7     0xb2515  1      OPC=nop             
  nop                                                                           #  8     0xb2516  1      OPC=nop             
  nop                                                                           #  9     0xb2517  1      OPC=nop             
  addq %r15, %rax                                                               #  10    0xb2518  3      OPC=addq_r64_r64    
  jmpq %rax                                                                     #  11    0xb251b  2      OPC=jmpq_r64        
  nop                                                                           #  12    0xb251d  1      OPC=nop             
  nop                                                                           #  13    0xb251e  1      OPC=nop             
  nop                                                                           #  14    0xb251f  1      OPC=nop             
  nop                                                                           #  15    0xb2520  1      OPC=nop             
  nop                                                                           #  16    0xb2521  1      OPC=nop             
  nop                                                                           #  17    0xb2522  1      OPC=nop             
  nop                                                                           #  18    0xb2523  1      OPC=nop             
  nop                                                                           #  19    0xb2524  1      OPC=nop             
  nop                                                                           #  20    0xb2525  1      OPC=nop             
                                                                                                                             
.size _ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE10date_orderEv, .-_ZNKSt8time_getIwSt19istreambuf_iteratorIwSt11char_traitsIwEEE10date_orderEv

