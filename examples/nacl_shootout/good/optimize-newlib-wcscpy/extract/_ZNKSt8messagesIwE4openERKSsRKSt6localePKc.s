  .text
  .globl _ZNKSt8messagesIwE4openERKSsRKSt6localePKc
  .type _ZNKSt8messagesIwE4openERKSsRKSt6localePKc, @function

#! file-offset 0xf1d00
#! rip-offset  0xb1d00
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE4openERKSsRKSt6localePKc:  #        0xb1d00  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xb1d00  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  2     0xb1d02  2      OPC=movl_r32_r32    
  movl %edx, %edx                             #  3     0xb1d04  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  4     0xb1d06  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  5     0xb1d08  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  6     0xb1d0c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  7     0xb1d0e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  8     0xb1d13  6      OPC=andl_r32_imm32  
  nop                                         #  9     0xb1d19  1      OPC=nop             
  nop                                         #  10    0xb1d1a  1      OPC=nop             
  nop                                         #  11    0xb1d1b  1      OPC=nop             
  addq %r15, %rax                             #  12    0xb1d1c  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  13    0xb1d1f  2      OPC=jmpq_r64        
  nop                                         #  14    0xb1d21  1      OPC=nop             
  nop                                         #  15    0xb1d22  1      OPC=nop             
  nop                                         #  16    0xb1d23  1      OPC=nop             
  nop                                         #  17    0xb1d24  1      OPC=nop             
  nop                                         #  18    0xb1d25  1      OPC=nop             
                                                                                           
.size _ZNKSt8messagesIwE4openERKSsRKSt6localePKc, .-_ZNKSt8messagesIwE4openERKSsRKSt6localePKc

