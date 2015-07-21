  .text
  .globl __nacl_register_thread_creator
  .type __nacl_register_thread_creator, @function

#! file-offset 0x6ca20
#! rip-offset  0x2ca20
#! capacity    32 bytes

# Text                            #  Line  RIP      Bytes  Opcode    
.__nacl_register_thread_creator:  #        0x2ca20  0      OPC=0     
  movl %edi, %edi                 #  1     0x2ca20  2      OPC=1157  
  movl %edi, %edi                 #  2     0x2ca22  2      OPC=1157  
  movl 0x4(%r15,%rdi,1), %eax     #  3     0x2ca24  5      OPC=1156  
  movl $0x10039e18, %edi          #  4     0x2ca29  5      OPC=1154  
  andl $0xffffffe0, %eax          #  5     0x2ca2e  6      OPC=131   
  nop                             #  6     0x2ca34  1      OPC=1343  
  nop                             #  7     0x2ca35  1      OPC=1343  
  nop                             #  8     0x2ca36  1      OPC=1343  
  addq %r15, %rax                 #  9     0x2ca37  3      OPC=72    
  jmpq %rax                       #  10    0x2ca3a  2      OPC=928   
  nop                             #  11    0x2ca3c  1      OPC=1343  
  nop                             #  12    0x2ca3d  1      OPC=1343  
  nop                             #  13    0x2ca3e  1      OPC=1343  
  nop                             #  14    0x2ca3f  1      OPC=1343  
  nop                             #  15    0x2ca40  1      OPC=1343  
  nop                             #  16    0x2ca41  1      OPC=1343  
  nop                             #  17    0x2ca42  1      OPC=1343  
  nop                             #  18    0x2ca43  1      OPC=1343  
  nop                             #  19    0x2ca44  1      OPC=1343  
  nop                             #  20    0x2ca45  1      OPC=1343  
                                                                     
.size __nacl_register_thread_creator, .-__nacl_register_thread_creator

