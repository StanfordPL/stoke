  .text
  .globl _ZNKSs4dataEv
  .type _ZNKSs4dataEv, @function

#! file-offset 0xea600
#! rip-offset  0xaa600
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs4dataEv:             #        0xaa600  0      OPC=<label>         
  popq %r11                 #  1     0xaa600  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaa602  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa604  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaa606  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaa60a  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaa611  1      OPC=nop             
  nop                       #  7     0xaa612  1      OPC=nop             
  nop                       #  8     0xaa613  1      OPC=nop             
  nop                       #  9     0xaa614  1      OPC=nop             
  addq %r15, %r11           #  10    0xaa615  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaa618  3      OPC=jmpq_r64        
  nop                       #  12    0xaa61b  1      OPC=nop             
  nop                       #  13    0xaa61c  1      OPC=nop             
  nop                       #  14    0xaa61d  1      OPC=nop             
  nop                       #  15    0xaa61e  1      OPC=nop             
  nop                       #  16    0xaa61f  1      OPC=nop             
  nop                       #  17    0xaa620  1      OPC=nop             
  nop                       #  18    0xaa621  1      OPC=nop             
  nop                       #  19    0xaa622  1      OPC=nop             
  nop                       #  20    0xaa623  1      OPC=nop             
  nop                       #  21    0xaa624  1      OPC=nop             
  nop                       #  22    0xaa625  1      OPC=nop             
  nop                       #  23    0xaa626  1      OPC=nop             
                                                                         
.size _ZNKSs4dataEv, .-_ZNKSs4dataEv

