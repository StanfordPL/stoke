  .text
  .globl _ZNKSt8numpunctIwE13thousands_sepEv
  .type _ZNKSt8numpunctIwE13thousands_sepEv, @function

#! file-offset 0xf0fe0
#! rip-offset  0xb0fe0
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIwE13thousands_sepEv:  #        0xb0fe0  0      OPC=<label>         
  movl %edi, %edi                      #  1     0xb0fe0  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  2     0xb0fe2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax             #  3     0xb0fe4  4      OPC=movl_r32_m32    
  movl %eax, %eax                      #  4     0xb0fe8  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax          #  5     0xb0fea  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax               #  6     0xb0fef  6      OPC=andl_r32_imm32  
  nop                                  #  7     0xb0ff5  1      OPC=nop             
  nop                                  #  8     0xb0ff6  1      OPC=nop             
  nop                                  #  9     0xb0ff7  1      OPC=nop             
  addq %r15, %rax                      #  10    0xb0ff8  3      OPC=addq_r64_r64    
  jmpq %rax                            #  11    0xb0ffb  2      OPC=jmpq_r64        
  nop                                  #  12    0xb0ffd  1      OPC=nop             
  nop                                  #  13    0xb0ffe  1      OPC=nop             
  nop                                  #  14    0xb0fff  1      OPC=nop             
  nop                                  #  15    0xb1000  1      OPC=nop             
  nop                                  #  16    0xb1001  1      OPC=nop             
  nop                                  #  17    0xb1002  1      OPC=nop             
  nop                                  #  18    0xb1003  1      OPC=nop             
  nop                                  #  19    0xb1004  1      OPC=nop             
  nop                                  #  20    0xb1005  1      OPC=nop             
                                                                                    
.size _ZNKSt8numpunctIwE13thousands_sepEv, .-_ZNKSt8numpunctIwE13thousands_sepEv

