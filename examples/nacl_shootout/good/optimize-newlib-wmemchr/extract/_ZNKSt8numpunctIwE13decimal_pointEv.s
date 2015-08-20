  .text
  .globl _ZNKSt8numpunctIwE13decimal_pointEv
  .type _ZNKSt8numpunctIwE13decimal_pointEv, @function

#! file-offset 0xf08a0
#! rip-offset  0xb08a0
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE13decimal_pointEv:  #        0xb08a0  0      OPC=<label>         
  movl %edi, %edi                      #  1     0xb08a0  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  2     0xb08a2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax             #  3     0xb08a4  4      OPC=movl_r32_m32    
  movl %eax, %eax                      #  4     0xb08a8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax          #  5     0xb08aa  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax               #  6     0xb08af  6      OPC=andl_r32_imm32  
  nop                                  #  7     0xb08b5  1      OPC=nop             
  nop                                  #  8     0xb08b6  1      OPC=nop             
  nop                                  #  9     0xb08b7  1      OPC=nop             
  addq %r15, %rax                      #  10    0xb08b8  3      OPC=addq_r64_r64    
  jmpq %rax                            #  11    0xb08bb  2      OPC=jmpq_r64        
  nop                                  #  12    0xb08bd  1      OPC=nop             
  nop                                  #  13    0xb08be  1      OPC=nop             
  nop                                  #  14    0xb08bf  1      OPC=nop             
  nop                                  #  15    0xb08c0  1      OPC=nop             
  nop                                  #  16    0xb08c1  1      OPC=nop             
  nop                                  #  17    0xb08c2  1      OPC=nop             
  nop                                  #  18    0xb08c3  1      OPC=nop             
  nop                                  #  19    0xb08c4  1      OPC=nop             
  nop                                  #  20    0xb08c5  1      OPC=nop             
                                                                                    
.size _ZNKSt8numpunctIwE13decimal_pointEv, .-_ZNKSt8numpunctIwE13decimal_pointEv

