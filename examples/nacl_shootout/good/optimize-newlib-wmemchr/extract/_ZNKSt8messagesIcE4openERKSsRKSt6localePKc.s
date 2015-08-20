  .text
  .globl _ZNKSt8messagesIcE4openERKSsRKSt6localePKc
  .type _ZNKSt8messagesIcE4openERKSsRKSt6localePKc, @function

#! file-offset 0xb9060
#! rip-offset  0x79060
#! capacity    32 bytes

# Text                                        #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE4openERKSsRKSt6localePKc:  #        0x79060  0      OPC=<label>         
  movl %edi, %edi                             #  1     0x79060  2      OPC=movl_r32_r32    
  movl %esi, %esi                             #  2     0x79062  2      OPC=movl_r32_r32    
  movl %edx, %edx                             #  3     0x79064  2      OPC=movl_r32_r32    
  movl %edi, %edi                             #  4     0x79066  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                    #  5     0x79068  4      OPC=movl_r32_m32    
  movl %eax, %eax                             #  6     0x7906c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax                 #  7     0x7906e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                      #  8     0x79073  6      OPC=andl_r32_imm32  
  nop                                         #  9     0x79079  1      OPC=nop             
  nop                                         #  10    0x7907a  1      OPC=nop             
  nop                                         #  11    0x7907b  1      OPC=nop             
  addq %r15, %rax                             #  12    0x7907c  3      OPC=addq_r64_r64    
  jmpq %rax                                   #  13    0x7907f  2      OPC=jmpq_r64        
  nop                                         #  14    0x79081  1      OPC=nop             
  nop                                         #  15    0x79082  1      OPC=nop             
  nop                                         #  16    0x79083  1      OPC=nop             
  nop                                         #  17    0x79084  1      OPC=nop             
  nop                                         #  18    0x79085  1      OPC=nop             
                                                                                           
.size _ZNKSt8messagesIcE4openERKSsRKSt6localePKc, .-_ZNKSt8messagesIcE4openERKSsRKSt6localePKc

