  .text
  .globl _ZNKSt10moneypunctIwLb0EE13thousands_sepEv
  .type _ZNKSt10moneypunctIwLb0EE13thousands_sepEv, @function

#! file-offset 0xefc40
#! rip-offset  0xafc40
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13thousands_sepEv:  #        0xafc40  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xafc40  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xafc42  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xafc44  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xafc48  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                 #  5     0xafc4a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xafc4f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xafc55  1      OPC=nop             
  nop                                         #  8     0xafc56  1      OPC=nop             
  nop                                         #  9     0xafc57  1      OPC=nop             
  addq %r15, %rax                             #  10    0xafc58  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xafc5b  2      OPC=jmpq_r64        
  nop                                         #  12    0xafc5d  1      OPC=nop             
  nop                                         #  13    0xafc5e  1      OPC=nop             
  nop                                         #  14    0xafc5f  1      OPC=nop             
  nop                                         #  15    0xafc60  1      OPC=nop             
  nop                                         #  16    0xafc61  1      OPC=nop             
  nop                                         #  17    0xafc62  1      OPC=nop             
  nop                                         #  18    0xafc63  1      OPC=nop             
  nop                                         #  19    0xafc64  1      OPC=nop             
  nop                                         #  20    0xafc65  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13thousands_sepEv, .-_ZNKSt10moneypunctIwLb0EE13thousands_sepEv

