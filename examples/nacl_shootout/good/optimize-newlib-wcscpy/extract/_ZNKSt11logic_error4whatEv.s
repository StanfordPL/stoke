  .text
  .globl _ZNKSt11logic_error4whatEv
  .type _ZNKSt11logic_error4whatEv, @function

#! file-offset 0x128e00
#! rip-offset  0xe8e00
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZNKSt11logic_error4whatEv:   #        0xe8e00  0      OPC=<label>         
  popq %r11                    #  1     0xe8e00  2      OPC=popq_r64_1      
  movl %edi, %edi              #  2     0xe8e02  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  3     0xe8e04  2      OPC=movl_r32_r32    
  movl 0x4(%r15,%rdi,1), %eax  #  4     0xe8e06  5      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d      #  5     0xe8e0b  7      OPC=andl_r32_imm32  
  nop                          #  6     0xe8e12  1      OPC=nop             
  nop                          #  7     0xe8e13  1      OPC=nop             
  nop                          #  8     0xe8e14  1      OPC=nop             
  nop                          #  9     0xe8e15  1      OPC=nop             
  addq %r15, %r11              #  10    0xe8e16  3      OPC=addq_r64_r64    
  jmpq %r11                    #  11    0xe8e19  3      OPC=jmpq_r64        
  nop                          #  12    0xe8e1c  1      OPC=nop             
  nop                          #  13    0xe8e1d  1      OPC=nop             
  nop                          #  14    0xe8e1e  1      OPC=nop             
  nop                          #  15    0xe8e1f  1      OPC=nop             
  nop                          #  16    0xe8e20  1      OPC=nop             
  nop                          #  17    0xe8e21  1      OPC=nop             
  nop                          #  18    0xe8e22  1      OPC=nop             
  nop                          #  19    0xe8e23  1      OPC=nop             
  nop                          #  20    0xe8e24  1      OPC=nop             
  nop                          #  21    0xe8e25  1      OPC=nop             
  nop                          #  22    0xe8e26  1      OPC=nop             
                                                                            
.size _ZNKSt11logic_error4whatEv, .-_ZNKSt11logic_error4whatEv

