  .text
  .globl _ZNKSt8messagesIwE4openERKSsRKSt6localePKc
  .type _ZNKSt8messagesIwE4openERKSsRKSt6localePKc, @function

#! file-offset 0xf2000
#! rip-offset  0xb2000
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE4openERKSsRKSt6localePKc:  #        0xb2000  0      OPC=<label>         
  movl %edi, %edi                             #  1     0xb2000  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  2     0xb2002  2      OPC=movl_r32_r32    
  movl %edx, %edx                             #  3     0xb2004  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  4     0xb2006  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  5     0xb2008  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  6     0xb200c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  7     0xb200e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  8     0xb2013  6      OPC=andl_r32_imm32  
  nop                                         #  9     0xb2019  1      OPC=nop             
  nop                                         #  10    0xb201a  1      OPC=nop             
  nop                                         #  11    0xb201b  1      OPC=nop             
  addq %r15, %rax                             #  12    0xb201c  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  13    0xb201f  2      OPC=jmpq_r64        
  nop                                         #  14    0xb2021  1      OPC=nop             
  nop                                         #  15    0xb2022  1      OPC=nop             
  nop                                         #  16    0xb2023  1      OPC=nop             
  nop                                         #  17    0xb2024  1      OPC=nop             
  nop                                         #  18    0xb2025  1      OPC=nop             
                                                                                           
.size _ZNKSt8messagesIwE4openERKSsRKSt6localePKc, .-_ZNKSt8messagesIwE4openERKSsRKSt6localePKc

