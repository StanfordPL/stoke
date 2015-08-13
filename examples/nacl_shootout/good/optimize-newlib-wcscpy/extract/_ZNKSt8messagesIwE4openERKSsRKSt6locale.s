  .text
  .globl _ZNKSt8messagesIwE4openERKSsRKSt6locale
  .type _ZNKSt8messagesIwE4openERKSsRKSt6locale, @function

#! file-offset 0xf1ce0
#! rip-offset  0xb1ce0
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE4openERKSsRKSt6locale:  #        0xb1ce0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xb1ce0  2      OPC=movl_r32_r32    
  movl %esi, %esi                          #  2     0xb1ce2  2      OPC=movl_r32_r32    
  movl %edx, %edx                          #  3     0xb1ce4  2      OPC=movl_r32_r32    
  movl %edi, %edi                          #  4     0xb1ce6  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xb1ce8  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xb1cec  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax              #  7     0xb1cee  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                   #  8     0xb1cf3  6      OPC=andl_r32_imm32  
  nop                                      #  9     0xb1cf9  1      OPC=nop             
  nop                                      #  10    0xb1cfa  1      OPC=nop             
  nop                                      #  11    0xb1cfb  1      OPC=nop             
  addq %r15, %rax                          #  12    0xb1cfc  3      OPC=addq_r64_r64    
  jmpq %rax                                #  13    0xb1cff  2      OPC=jmpq_r64        
  nop                                      #  14    0xb1d01  1      OPC=nop             
  nop                                      #  15    0xb1d02  1      OPC=nop             
  nop                                      #  16    0xb1d03  1      OPC=nop             
  nop                                      #  17    0xb1d04  1      OPC=nop             
  nop                                      #  18    0xb1d05  1      OPC=nop             
                                                                                        
.size _ZNKSt8messagesIwE4openERKSsRKSt6locale, .-_ZNKSt8messagesIwE4openERKSsRKSt6locale

