  .text
  .globl _ZNKSt8messagesIcE4openERKSsRKSt6localePKc
  .type _ZNKSt8messagesIcE4openERKSsRKSt6localePKc, @function

#! file-offset 0xb8d60
#! rip-offset  0x78d60
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE4openERKSsRKSt6localePKc:  #        0x78d60  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x78d60  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  2     0x78d62  2      OPC=movl_r32_r32    
  movl %edx, %edx                             #  3     0x78d64  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  4     0x78d66  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  5     0x78d68  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  6     0x78d6c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  7     0x78d6e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  8     0x78d73  6      OPC=andl_r32_imm32  
  nop                                         #  9     0x78d79  1      OPC=nop             
  nop                                         #  10    0x78d7a  1      OPC=nop             
  nop                                         #  11    0x78d7b  1      OPC=nop             
  addq %r15, %rax                             #  12    0x78d7c  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  13    0x78d7f  2      OPC=jmpq_r64        
  nop                                         #  14    0x78d81  1      OPC=nop             
  nop                                         #  15    0x78d82  1      OPC=nop             
  nop                                         #  16    0x78d83  1      OPC=nop             
  nop                                         #  17    0x78d84  1      OPC=nop             
  nop                                         #  18    0x78d85  1      OPC=nop             
                                                                                           
.size _ZNKSt8messagesIcE4openERKSsRKSt6localePKc, .-_ZNKSt8messagesIcE4openERKSsRKSt6localePKc

