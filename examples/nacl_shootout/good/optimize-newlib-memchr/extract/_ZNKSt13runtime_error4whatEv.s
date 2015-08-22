  .text
  .globl _ZNKSt13runtime_error4whatEv
  .type _ZNKSt13runtime_error4whatEv, @function

#! file-offset 0x129840
#! rip-offset  0xe9840
#! capacity    32 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._ZNKSt13runtime_error4whatEv:  #        0xe9840  0      OPC=<label>         
  popq %r11                     #  1     0xe9840  2      OPC=popq_r64_1      
  movl %edi, %edi               #  2     0xe9842  2      OPC=movl_r32_r32    
  movl %edi, %edi               #  3     0xe9844  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax   #  4     0xe9846  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d       #  5     0xe984b  7      OPC=andl_r32_imm32  
  nop                           #  6     0xe9852  1      OPC=nop             
  nop                           #  7     0xe9853  1      OPC=nop             
  nop                           #  8     0xe9854  1      OPC=nop             
  nop                           #  9     0xe9855  1      OPC=nop             
  addq %r15, %r11               #  10    0xe9856  3      OPC=addq_r64_r64    
  jmpq %r11                     #  11    0xe9859  3      OPC=jmpq_r64        
  nop                           #  12    0xe985c  1      OPC=nop             
  nop                           #  13    0xe985d  1      OPC=nop             
  nop                           #  14    0xe985e  1      OPC=nop             
  nop                           #  15    0xe985f  1      OPC=nop             
  nop                           #  16    0xe9860  1      OPC=nop             
  nop                           #  17    0xe9861  1      OPC=nop             
  nop                           #  18    0xe9862  1      OPC=nop             
  nop                           #  19    0xe9863  1      OPC=nop             
  nop                           #  20    0xe9864  1      OPC=nop             
  nop                           #  21    0xe9865  1      OPC=nop             
  nop                           #  22    0xe9866  1      OPC=nop             
                                                                             
.size _ZNKSt13runtime_error4whatEv, .-_ZNKSt13runtime_error4whatEv

