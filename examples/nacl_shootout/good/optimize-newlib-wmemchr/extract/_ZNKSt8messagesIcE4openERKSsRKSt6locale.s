  .text
  .globl _ZNKSt8messagesIcE4openERKSsRKSt6locale
  .type _ZNKSt8messagesIcE4openERKSsRKSt6locale, @function

#! file-offset 0xb9040
#! rip-offset  0x79040
#! capacity    32 bytes

# Text                                     #  Line  RIP      Bytes  Opcode              
._ZNKSt8messagesIcE4openERKSsRKSt6locale:  #        0x79040  0      OPC=<label>         
  movl %edi, %edi                          #  1     0x79040  2      OPC=movl_r32_r32    
  movl %esi, %esi                          #  2     0x79042  2      OPC=movl_r32_r32    
  movl %edx, %edx                          #  3     0x79044  2      OPC=movl_r32_r32    
  movl %edi, %edi                          #  4     0x79046  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                 #  5     0x79048  4      OPC=movl_r32_m32    
  movl %eax, %eax                          #  6     0x7904c  2      OPC=movl_r32_r32    
  movl 0x8(%r15,%rax,1), %eax              #  7     0x7904e  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %eax                   #  8     0x79053  6      OPC=andl_r32_imm32  
  nop                                      #  9     0x79059  1      OPC=nop             
  nop                                      #  10    0x7905a  1      OPC=nop             
  nop                                      #  11    0x7905b  1      OPC=nop             
  addq %r15, %rax                          #  12    0x7905c  3      OPC=addq_r64_r64    
  jmpq %rax                                #  13    0x7905f  2      OPC=jmpq_r64        
  nop                                      #  14    0x79061  1      OPC=nop             
  nop                                      #  15    0x79062  1      OPC=nop             
  nop                                      #  16    0x79063  1      OPC=nop             
  nop                                      #  17    0x79064  1      OPC=nop             
  nop                                      #  18    0x79065  1      OPC=nop             
                                                                                        
.size _ZNKSt8messagesIcE4openERKSsRKSt6locale, .-_ZNKSt8messagesIcE4openERKSsRKSt6locale

