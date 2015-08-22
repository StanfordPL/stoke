  .text
  .globl _ZNKSo6sentrycvbEv
  .type _ZNKSo6sentrycvbEv, @function

#! file-offset 0xdd640
#! rip-offset  0x9d640
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNKSo6sentrycvbEv:          #        0x9d640  0      OPC=<label>         
  popq %r11                   #  1     0x9d640  2      OPC=popq_r64_1      
  movl %edi, %edi             #  2     0x9d642  2      OPC=movl_r32_r32    
  movl %edi, %edi             #  3     0x9d644  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdi,1), %eax  #  4     0x9d646  5      OPC=movzbl_r32_m8   
  andl $0xffffffe0, %r11d     #  5     0x9d64b  7      OPC=andl_r32_imm32  
  nop                         #  6     0x9d652  1      OPC=nop             
  nop                         #  7     0x9d653  1      OPC=nop             
  nop                         #  8     0x9d654  1      OPC=nop             
  nop                         #  9     0x9d655  1      OPC=nop             
  addq %r15, %r11             #  10    0x9d656  3      OPC=addq_r64_r64    
  jmpq %r11                   #  11    0x9d659  3      OPC=jmpq_r64        
  nop                         #  12    0x9d65c  1      OPC=nop             
  nop                         #  13    0x9d65d  1      OPC=nop             
  nop                         #  14    0x9d65e  1      OPC=nop             
  nop                         #  15    0x9d65f  1      OPC=nop             
  nop                         #  16    0x9d660  1      OPC=nop             
  nop                         #  17    0x9d661  1      OPC=nop             
  nop                         #  18    0x9d662  1      OPC=nop             
  nop                         #  19    0x9d663  1      OPC=nop             
  nop                         #  20    0x9d664  1      OPC=nop             
  nop                         #  21    0x9d665  1      OPC=nop             
  nop                         #  22    0x9d666  1      OPC=nop             
                                                                           
.size _ZNKSo6sentrycvbEv, .-_ZNKSo6sentrycvbEv

