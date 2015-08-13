  .text
  .globl _ZNKSt10moneypunctIwLb0EE13thousands_sepEv
  .type _ZNKSt10moneypunctIwLb0EE13thousands_sepEv, @function

#! file-offset 0xef940
#! rip-offset  0xaf940
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13thousands_sepEv:  #        0xaf940  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xaf940  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xaf942  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xaf944  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xaf948  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                 #  5     0xaf94a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xaf94f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xaf955  1      OPC=nop             
  nop                                         #  8     0xaf956  1      OPC=nop             
  nop                                         #  9     0xaf957  1      OPC=nop             
  addq %r15, %rax                             #  10    0xaf958  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xaf95b  2      OPC=jmpq_r64        
  nop                                         #  12    0xaf95d  1      OPC=nop             
  nop                                         #  13    0xaf95e  1      OPC=nop             
  nop                                         #  14    0xaf95f  1      OPC=nop             
  nop                                         #  15    0xaf960  1      OPC=nop             
  nop                                         #  16    0xaf961  1      OPC=nop             
  nop                                         #  17    0xaf962  1      OPC=nop             
  nop                                         #  18    0xaf963  1      OPC=nop             
  nop                                         #  19    0xaf964  1      OPC=nop             
  nop                                         #  20    0xaf965  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13thousands_sepEv, .-_ZNKSt10moneypunctIwLb0EE13thousands_sepEv

