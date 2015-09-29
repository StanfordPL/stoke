  .text
  .globl _ZNKSt8messagesIcE4openERKSsRKSt6localePKc
  .type _ZNKSt8messagesIcE4openERKSsRKSt6localePKc, @function

#! file-offset 0xb9780
#! rip-offset  0x79780
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE4openERKSsRKSt6localePKc:  #        0x79780  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x79780  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  2     0x79782  2      OPC=movl_r32_r32    
  movl %edx, %edx                             #  3     0x79784  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  4     0x79786  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  5     0x79788  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  6     0x7978c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  7     0x7978e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  8     0x79793  6      OPC=andl_r32_imm32  
  nop                                         #  9     0x79799  1      OPC=nop             
  nop                                         #  10    0x7979a  1      OPC=nop             
  nop                                         #  11    0x7979b  1      OPC=nop             
  addq %r15, %rax                             #  12    0x7979c  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  13    0x7979f  2      OPC=jmpq_r64        
  nop                                         #  14    0x797a1  1      OPC=nop             
  nop                                         #  15    0x797a2  1      OPC=nop             
  nop                                         #  16    0x797a3  1      OPC=nop             
  nop                                         #  17    0x797a4  1      OPC=nop             
  nop                                         #  18    0x797a5  1      OPC=nop             
                                                                                           
.size _ZNKSt8messagesIcE4openERKSsRKSt6localePKc, .-_ZNKSt8messagesIcE4openERKSsRKSt6localePKc

