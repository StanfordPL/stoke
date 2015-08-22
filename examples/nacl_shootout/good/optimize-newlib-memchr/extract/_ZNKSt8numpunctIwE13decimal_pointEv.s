  .text
  .globl _ZNKSt8numpunctIwE13decimal_pointEv
  .type _ZNKSt8numpunctIwE13decimal_pointEv, @function

#! file-offset 0xf0fc0
#! rip-offset  0xb0fc0
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE13decimal_pointEv:  #        0xb0fc0  0      OPC=<label>         
  movl %edi, %edi                      #  1     0xb0fc0  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  2     0xb0fc2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax             #  3     0xb0fc4  4      OPC=movl_r32_m32    
  movl %eax, %eax                      #  4     0xb0fc8  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax          #  5     0xb0fca  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax               #  6     0xb0fcf  6      OPC=andl_r32_imm32  
  nop                                  #  7     0xb0fd5  1      OPC=nop             
  nop                                  #  8     0xb0fd6  1      OPC=nop             
  nop                                  #  9     0xb0fd7  1      OPC=nop             
  addq %r15, %rax                      #  10    0xb0fd8  3      OPC=addq_r64_r64    
  jmpq %rax                            #  11    0xb0fdb  2      OPC=jmpq_r64        
  nop                                  #  12    0xb0fdd  1      OPC=nop             
  nop                                  #  13    0xb0fde  1      OPC=nop             
  nop                                  #  14    0xb0fdf  1      OPC=nop             
  nop                                  #  15    0xb0fe0  1      OPC=nop             
  nop                                  #  16    0xb0fe1  1      OPC=nop             
  nop                                  #  17    0xb0fe2  1      OPC=nop             
  nop                                  #  18    0xb0fe3  1      OPC=nop             
  nop                                  #  19    0xb0fe4  1      OPC=nop             
  nop                                  #  20    0xb0fe5  1      OPC=nop             
                                                                                    
.size _ZNKSt8numpunctIwE13decimal_pointEv, .-_ZNKSt8numpunctIwE13decimal_pointEv

