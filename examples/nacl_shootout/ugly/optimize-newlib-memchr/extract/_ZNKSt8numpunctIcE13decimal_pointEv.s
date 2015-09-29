  .text
  .globl _ZNKSt8numpunctIcE13decimal_pointEv
  .type _ZNKSt8numpunctIcE13decimal_pointEv, @function

#! file-offset 0xb7f80
#! rip-offset  0x77f80
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE13decimal_pointEv:  #        0x77f80  0      OPC=<label>         
  movl %edi, %edi                      #  1     0x77f80  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  2     0x77f82  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax             #  3     0x77f84  4      OPC=movl_r32_m32    
  movl %eax, %eax                      #  4     0x77f88  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax          #  5     0x77f8a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax               #  6     0x77f8f  6      OPC=andl_r32_imm32  
  nop                                  #  7     0x77f95  1      OPC=nop             
  nop                                  #  8     0x77f96  1      OPC=nop             
  nop                                  #  9     0x77f97  1      OPC=nop             
  addq %r15, %rax                      #  10    0x77f98  3      OPC=addq_r64_r64    
  jmpq %rax                            #  11    0x77f9b  2      OPC=jmpq_r64        
  nop                                  #  12    0x77f9d  1      OPC=nop             
  nop                                  #  13    0x77f9e  1      OPC=nop             
  nop                                  #  14    0x77f9f  1      OPC=nop             
  nop                                  #  15    0x77fa0  1      OPC=nop             
  nop                                  #  16    0x77fa1  1      OPC=nop             
  nop                                  #  17    0x77fa2  1      OPC=nop             
  nop                                  #  18    0x77fa3  1      OPC=nop             
  nop                                  #  19    0x77fa4  1      OPC=nop             
  nop                                  #  20    0x77fa5  1      OPC=nop             
                                                                                    
.size _ZNKSt8numpunctIcE13decimal_pointEv, .-_ZNKSt8numpunctIcE13decimal_pointEv

