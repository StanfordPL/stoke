  .text
  .globl _ZNKSt8messagesIwE4openERKSsRKSt6locale
  .type _ZNKSt8messagesIwE4openERKSsRKSt6locale, @function

#! file-offset 0xf1fe0
#! rip-offset  0xb1fe0
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE4openERKSsRKSt6locale:  #        0xb1fe0  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xb1fe0  2      OPC=movl_r32_r32    
  movl %esi, %esi                          #  2     0xb1fe2  2      OPC=movl_r32_r32    
  movl %edx, %edx                          #  3     0xb1fe4  2      OPC=movl_r32_r32    
  movl %edi, %edi                          #  4     0xb1fe6  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xb1fe8  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xb1fec  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax              #  7     0xb1fee  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                   #  8     0xb1ff3  6      OPC=andl_r32_imm32  
  nop                                      #  9     0xb1ff9  1      OPC=nop             
  nop                                      #  10    0xb1ffa  1      OPC=nop             
  nop                                      #  11    0xb1ffb  1      OPC=nop             
  addq %r15, %rax                          #  12    0xb1ffc  3      OPC=addq_r64_r64    
  jmpq %rax                                #  13    0xb1fff  2      OPC=jmpq_r64        
  nop                                      #  14    0xb2001  1      OPC=nop             
  nop                                      #  15    0xb2002  1      OPC=nop             
  nop                                      #  16    0xb2003  1      OPC=nop             
  nop                                      #  17    0xb2004  1      OPC=nop             
  nop                                      #  18    0xb2005  1      OPC=nop             
                                                                                        
.size _ZNKSt8messagesIwE4openERKSsRKSt6locale, .-_ZNKSt8messagesIwE4openERKSsRKSt6locale

