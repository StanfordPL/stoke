  .text
  .globl _ZNKSt8numpunctIwE13thousands_sepEv
  .type _ZNKSt8numpunctIwE13thousands_sepEv, @function

#! file-offset 0xf08c0
#! rip-offset  0xb08c0
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE13thousands_sepEv:  #        0xb08c0  0      OPC=<label>         
  movl %edi, %edi                      #  1     0xb08c0  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  2     0xb08c2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax             #  3     0xb08c4  4      OPC=movl_r32_m32    
  movl %eax, %eax                      #  4     0xb08c8  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax          #  5     0xb08ca  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax               #  6     0xb08cf  6      OPC=andl_r32_imm32  
  nop                                  #  7     0xb08d5  1      OPC=nop             
  nop                                  #  8     0xb08d6  1      OPC=nop             
  nop                                  #  9     0xb08d7  1      OPC=nop             
  addq %r15, %rax                      #  10    0xb08d8  3      OPC=addq_r64_r64    
  jmpq %rax                            #  11    0xb08db  2      OPC=jmpq_r64        
  nop                                  #  12    0xb08dd  1      OPC=nop             
  nop                                  #  13    0xb08de  1      OPC=nop             
  nop                                  #  14    0xb08df  1      OPC=nop             
  nop                                  #  15    0xb08e0  1      OPC=nop             
  nop                                  #  16    0xb08e1  1      OPC=nop             
  nop                                  #  17    0xb08e2  1      OPC=nop             
  nop                                  #  18    0xb08e3  1      OPC=nop             
  nop                                  #  19    0xb08e4  1      OPC=nop             
  nop                                  #  20    0xb08e5  1      OPC=nop             
                                                                                    
.size _ZNKSt8numpunctIwE13thousands_sepEv, .-_ZNKSt8numpunctIwE13thousands_sepEv

