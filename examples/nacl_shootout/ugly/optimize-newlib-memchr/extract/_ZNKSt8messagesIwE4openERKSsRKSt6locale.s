  .text
  .globl _ZNKSt8messagesIwE4openERKSsRKSt6locale
  .type _ZNKSt8messagesIwE4openERKSsRKSt6locale, @function

#! file-offset 0xf2700
#! rip-offset  0xb2700
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIwE4openERKSsRKSt6locale:  #        0xb2700  0      OPC=<label>         
  movl %edi, %edi                          #  1     0xb2700  2      OPC=movl_r32_r32    
  movl %esi, %esi                          #  2     0xb2702  2      OPC=movl_r32_r32    
  movl %edx, %edx                          #  3     0xb2704  2      OPC=movl_r32_r32    
  movl %edi, %edi                          #  4     0xb2706  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0xb2708  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0xb270c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax              #  7     0xb270e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                   #  8     0xb2713  6      OPC=andl_r32_imm32  
  nop                                      #  9     0xb2719  1      OPC=nop             
  nop                                      #  10    0xb271a  1      OPC=nop             
  nop                                      #  11    0xb271b  1      OPC=nop             
  addq %r15, %rax                          #  12    0xb271c  3      OPC=addq_r64_r64    
  jmpq %rax                                #  13    0xb271f  2      OPC=jmpq_r64        
  nop                                      #  14    0xb2721  1      OPC=nop             
  nop                                      #  15    0xb2722  1      OPC=nop             
  nop                                      #  16    0xb2723  1      OPC=nop             
  nop                                      #  17    0xb2724  1      OPC=nop             
  nop                                      #  18    0xb2725  1      OPC=nop             
                                                                                        
.size _ZNKSt8messagesIwE4openERKSsRKSt6locale, .-_ZNKSt8messagesIwE4openERKSsRKSt6locale

