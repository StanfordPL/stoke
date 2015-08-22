  .text
  .globl _ZNKSt8numpunctIcE13thousands_sepEv
  .type _ZNKSt8numpunctIcE13thousands_sepEv, @function

#! file-offset 0xb7fa0
#! rip-offset  0x77fa0
#! capacity    32 bytes

# Text                                 #  Line  RIP      Bytes  Opcode              
._ZNKSt8numpunctIcE13thousands_sepEv:  #        0x77fa0  0      OPC=<label>         
  movl %edi, %edi                      #  1     0x77fa0  2      OPC=movl_r32_r32    
  movl %edi, %edi                      #  2     0x77fa2  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax             #  3     0x77fa4  4      OPC=movl_r32_m32    
  movl %eax, %eax                      #  4     0x77fa8  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax          #  5     0x77faa  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax               #  6     0x77faf  6      OPC=andl_r32_imm32  
  nop                                  #  7     0x77fb5  1      OPC=nop             
  nop                                  #  8     0x77fb6  1      OPC=nop             
  nop                                  #  9     0x77fb7  1      OPC=nop             
  addq %r15, %rax                      #  10    0x77fb8  3      OPC=addq_r64_r64    
  jmpq %rax                            #  11    0x77fbb  2      OPC=jmpq_r64        
  nop                                  #  12    0x77fbd  1      OPC=nop             
  nop                                  #  13    0x77fbe  1      OPC=nop             
  nop                                  #  14    0x77fbf  1      OPC=nop             
  nop                                  #  15    0x77fc0  1      OPC=nop             
  nop                                  #  16    0x77fc1  1      OPC=nop             
  nop                                  #  17    0x77fc2  1      OPC=nop             
  nop                                  #  18    0x77fc3  1      OPC=nop             
  nop                                  #  19    0x77fc4  1      OPC=nop             
  nop                                  #  20    0x77fc5  1      OPC=nop             
                                                                                    
.size _ZNKSt8numpunctIcE13thousands_sepEv, .-_ZNKSt8numpunctIcE13thousands_sepEv

