  .text
  .globl _ZNKSo6sentrycvbEv
  .type _ZNKSo6sentrycvbEv, @function

#! file-offset 0xdcc20
#! rip-offset  0x9cc20
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNKSo6sentrycvbEv:          #        0x9cc20  0      OPC=<label>         
  popq %r11                   #  1     0x9cc20  2      OPC=popq_r64_1      
  movl %edi, %edi             #  2     0x9cc22  2      OPC=movl_r32_r32    
  movl %edi, %edi             #  3     0x9cc24  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %eax  #  4     0x9cc26  5      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d     #  5     0x9cc2b  7      OPC=andl_r32_imm32  
  nop                         #  6     0x9cc32  1      OPC=nop             
  nop                         #  7     0x9cc33  1      OPC=nop             
  nop                         #  8     0x9cc34  1      OPC=nop             
  nop                         #  9     0x9cc35  1      OPC=nop             
  addq %r15, %r11             #  10    0x9cc36  3      OPC=addq_r64_r64    
  jmpq %r11                   #  11    0x9cc39  3      OPC=jmpq_r64        
  nop                         #  12    0x9cc3c  1      OPC=nop             
  nop                         #  13    0x9cc3d  1      OPC=nop             
  nop                         #  14    0x9cc3e  1      OPC=nop             
  nop                         #  15    0x9cc3f  1      OPC=nop             
  nop                         #  16    0x9cc40  1      OPC=nop             
  nop                         #  17    0x9cc41  1      OPC=nop             
  nop                         #  18    0x9cc42  1      OPC=nop             
  nop                         #  19    0x9cc43  1      OPC=nop             
  nop                         #  20    0x9cc44  1      OPC=nop             
  nop                         #  21    0x9cc45  1      OPC=nop             
  nop                         #  22    0x9cc46  1      OPC=nop             
                                                                           
.size _ZNKSo6sentrycvbEv, .-_ZNKSo6sentrycvbEv

