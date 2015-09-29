  .text
  .globl _ZNKSs7_M_dataEv
  .type _ZNKSs7_M_dataEv, @function

#! file-offset 0xeac40
#! rip-offset  0xaac40
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs7_M_dataEv:          #        0xaac40  0      OPC=<label>         
  popq %r11                 #  1     0xaac40  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaac42  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaac44  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaac46  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaac4a  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaac51  1      OPC=nop             
  nop                       #  7     0xaac52  1      OPC=nop             
  nop                       #  8     0xaac53  1      OPC=nop             
  nop                       #  9     0xaac54  1      OPC=nop             
  addq %r15, %r11           #  10    0xaac55  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaac58  3      OPC=jmpq_r64        
  nop                       #  12    0xaac5b  1      OPC=nop             
  nop                       #  13    0xaac5c  1      OPC=nop             
  nop                       #  14    0xaac5d  1      OPC=nop             
  nop                       #  15    0xaac5e  1      OPC=nop             
  nop                       #  16    0xaac5f  1      OPC=nop             
  nop                       #  17    0xaac60  1      OPC=nop             
  nop                       #  18    0xaac61  1      OPC=nop             
  nop                       #  19    0xaac62  1      OPC=nop             
  nop                       #  20    0xaac63  1      OPC=nop             
  nop                       #  21    0xaac64  1      OPC=nop             
  nop                       #  22    0xaac65  1      OPC=nop             
  nop                       #  23    0xaac66  1      OPC=nop             
                                                                         
.size _ZNKSs7_M_dataEv, .-_ZNKSs7_M_dataEv

