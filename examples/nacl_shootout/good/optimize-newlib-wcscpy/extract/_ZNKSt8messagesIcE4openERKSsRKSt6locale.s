  .text
  .globl _ZNKSt8messagesIcE4openERKSsRKSt6locale
  .type _ZNKSt8messagesIcE4openERKSsRKSt6locale, @function

#! file-offset 0xb8d40
#! rip-offset  0x78d40
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE4openERKSsRKSt6locale:  #        0x78d40  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x78d40  2      OPC=movl_r32_r32    
  movl %esi, %esi                          #  2     0x78d42  2      OPC=movl_r32_r32    
  movl %edx, %edx                          #  3     0x78d44  2      OPC=movl_r32_r32    
  movl %edi, %edi                          #  4     0x78d46  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x78d48  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x78d4c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax              #  7     0x78d4e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                   #  8     0x78d53  6      OPC=andl_r32_imm32  
  nop                                      #  9     0x78d59  1      OPC=nop             
  nop                                      #  10    0x78d5a  1      OPC=nop             
  nop                                      #  11    0x78d5b  1      OPC=nop             
  addq %r15, %rax                          #  12    0x78d5c  3      OPC=addq_r64_r64    
  jmpq %rax                                #  13    0x78d5f  2      OPC=jmpq_r64        
  nop                                      #  14    0x78d61  1      OPC=nop             
  nop                                      #  15    0x78d62  1      OPC=nop             
  nop                                      #  16    0x78d63  1      OPC=nop             
  nop                                      #  17    0x78d64  1      OPC=nop             
  nop                                      #  18    0x78d65  1      OPC=nop             
                                                                                        
.size _ZNKSt8messagesIcE4openERKSsRKSt6locale, .-_ZNKSt8messagesIcE4openERKSsRKSt6locale

