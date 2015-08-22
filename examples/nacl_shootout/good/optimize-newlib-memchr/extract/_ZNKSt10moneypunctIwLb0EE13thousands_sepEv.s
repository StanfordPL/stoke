  .text
  .globl _ZNKSt10moneypunctIwLb0EE13thousands_sepEv
  .type _ZNKSt10moneypunctIwLb0EE13thousands_sepEv, @function

#! file-offset 0xf0360
#! rip-offset  0xb0360
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt10moneypunctIwLb0EE13thousands_sepEv:  #        0xb0360  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xb0360  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  2     0xb0362  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  3     0xb0364  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  4     0xb0368  2      OPC=movl_r32_r32    
  movl 0xc(%r15,%rax,1), %eax                 #  5     0xb036a  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  6     0xb036f  6      OPC=andl_r32_imm32  
  nop                                         #  7     0xb0375  1      OPC=nop             
  nop                                         #  8     0xb0376  1      OPC=nop             
  nop                                         #  9     0xb0377  1      OPC=nop             
  addq %r15, %rax                             #  10    0xb0378  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  11    0xb037b  2      OPC=jmpq_r64        
  nop                                         #  12    0xb037d  1      OPC=nop             
  nop                                         #  13    0xb037e  1      OPC=nop             
  nop                                         #  14    0xb037f  1      OPC=nop             
  nop                                         #  15    0xb0380  1      OPC=nop             
  nop                                         #  16    0xb0381  1      OPC=nop             
  nop                                         #  17    0xb0382  1      OPC=nop             
  nop                                         #  18    0xb0383  1      OPC=nop             
  nop                                         #  19    0xb0384  1      OPC=nop             
  nop                                         #  20    0xb0385  1      OPC=nop             
                                                                                           
.size _ZNKSt10moneypunctIwLb0EE13thousands_sepEv, .-_ZNKSt10moneypunctIwLb0EE13thousands_sepEv

