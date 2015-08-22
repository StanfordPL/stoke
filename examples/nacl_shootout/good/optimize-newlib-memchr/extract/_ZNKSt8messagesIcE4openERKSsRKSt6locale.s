  .text
  .globl _ZNKSt8messagesIcE4openERKSsRKSt6locale
  .type _ZNKSt8messagesIcE4openERKSsRKSt6locale, @function

#! file-offset 0xb9760
#! rip-offset  0x79760
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE4openERKSsRKSt6locale:  #        0x79760  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x79760  2      OPC=movl_r32_r32    
  movl %esi, %esi                          #  2     0x79762  2      OPC=movl_r32_r32    
  movl %edx, %edx                          #  3     0x79764  2      OPC=movl_r32_r32    
  movl %edi, %edi                          #  4     0x79766  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x79768  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x7976c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax              #  7     0x7976e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                   #  8     0x79773  6      OPC=andl_r32_imm32  
  nop                                      #  9     0x79779  1      OPC=nop             
  nop                                      #  10    0x7977a  1      OPC=nop             
  nop                                      #  11    0x7977b  1      OPC=nop             
  addq %r15, %rax                          #  12    0x7977c  3      OPC=addq_r64_r64    
  jmpq %rax                                #  13    0x7977f  2      OPC=jmpq_r64        
  nop                                      #  14    0x79781  1      OPC=nop             
  nop                                      #  15    0x79782  1      OPC=nop             
  nop                                      #  16    0x79783  1      OPC=nop             
  nop                                      #  17    0x79784  1      OPC=nop             
  nop                                      #  18    0x79785  1      OPC=nop             
                                                                                        
.size _ZNKSt8messagesIcE4openERKSsRKSt6locale, .-_ZNKSt8messagesIcE4openERKSsRKSt6locale

