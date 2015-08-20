  .text
  .globl _ZNKSt8numpunctIcE13decimal_pointEv
  .type _ZNKSt8numpunctIcE13decimal_pointEv, @function

#! file-offset 0xb7860
#! rip-offset  0x77860
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE13decimal_pointEv:  #        0x77860  0      OPC=<label>         
  movl %edi, %edi                      #  1     0x77860  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  2     0x77862  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax             #  3     0x77864  4      OPC=movl_r32_m32    
  movl %eax, %eax                      #  4     0x77868  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax          #  5     0x7786a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax               #  6     0x7786f  6      OPC=andl_r32_imm32  
  nop                                  #  7     0x77875  1      OPC=nop             
  nop                                  #  8     0x77876  1      OPC=nop             
  nop                                  #  9     0x77877  1      OPC=nop             
  addq %r15, %rax                      #  10    0x77878  3      OPC=addq_r64_r64    
  jmpq %rax                            #  11    0x7787b  2      OPC=jmpq_r64        
  nop                                  #  12    0x7787d  1      OPC=nop             
  nop                                  #  13    0x7787e  1      OPC=nop             
  nop                                  #  14    0x7787f  1      OPC=nop             
  nop                                  #  15    0x77880  1      OPC=nop             
  nop                                  #  16    0x77881  1      OPC=nop             
  nop                                  #  17    0x77882  1      OPC=nop             
  nop                                  #  18    0x77883  1      OPC=nop             
  nop                                  #  19    0x77884  1      OPC=nop             
  nop                                  #  20    0x77885  1      OPC=nop             
                                                                                    
.size _ZNKSt8numpunctIcE13decimal_pointEv, .-_ZNKSt8numpunctIcE13decimal_pointEv

