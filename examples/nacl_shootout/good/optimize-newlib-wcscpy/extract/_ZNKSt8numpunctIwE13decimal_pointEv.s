  .text
  .globl _ZNKSt8numpunctIwE13decimal_pointEv
  .type _ZNKSt8numpunctIwE13decimal_pointEv, @function

#! file-offset 0xf05a0
#! rip-offset  0xb05a0
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE13decimal_pointEv:  #        0xb05a0  0      OPC=<label>         
  movl %edi, %edi                      #  1     0xb05a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  2     0xb05a2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax             #  3     0xb05a4  4      OPC=movl_r32_m32    
  movl %eax, %eax                      #  4     0xb05a8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax          #  5     0xb05aa  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax               #  6     0xb05af  6      OPC=andl_r32_imm32  
  nop                                  #  7     0xb05b5  1      OPC=nop             
  nop                                  #  8     0xb05b6  1      OPC=nop             
  nop                                  #  9     0xb05b7  1      OPC=nop             
  addq %r15, %rax                      #  10    0xb05b8  3      OPC=addq_r64_r64    
  jmpq %rax                            #  11    0xb05bb  2      OPC=jmpq_r64        
  nop                                  #  12    0xb05bd  1      OPC=nop             
  nop                                  #  13    0xb05be  1      OPC=nop             
  nop                                  #  14    0xb05bf  1      OPC=nop             
  nop                                  #  15    0xb05c0  1      OPC=nop             
  nop                                  #  16    0xb05c1  1      OPC=nop             
  nop                                  #  17    0xb05c2  1      OPC=nop             
  nop                                  #  18    0xb05c3  1      OPC=nop             
  nop                                  #  19    0xb05c4  1      OPC=nop             
  nop                                  #  20    0xb05c5  1      OPC=nop             
                                                                                    
.size _ZNKSt8numpunctIwE13decimal_pointEv, .-_ZNKSt8numpunctIwE13decimal_pointEv

