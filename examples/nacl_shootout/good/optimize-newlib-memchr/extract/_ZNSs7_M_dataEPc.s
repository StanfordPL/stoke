  .text
  .globl _ZNSs7_M_dataEPc
  .type _ZNSs7_M_dataEPc, @function

#! file-offset 0xeac60
#! rip-offset  0xaac60
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_dataEPc:          #        0xaac60  0      OPC=<label>         
  popq %r11                 #  1     0xaac60  2      OPC=popq_r64_1      
  movl %esi, %eax           #  2     0xaac62  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaac64  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  4     0xaac66  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)  #  5     0xaac68  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d   #  6     0xaac6c  7      OPC=andl_r32_imm32  
  nop                       #  7     0xaac73  1      OPC=nop             
  nop                       #  8     0xaac74  1      OPC=nop             
  nop                       #  9     0xaac75  1      OPC=nop             
  nop                       #  10    0xaac76  1      OPC=nop             
  addq %r15, %r11           #  11    0xaac77  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0xaac7a  3      OPC=jmpq_r64        
  nop                       #  13    0xaac7d  1      OPC=nop             
  nop                       #  14    0xaac7e  1      OPC=nop             
  nop                       #  15    0xaac7f  1      OPC=nop             
  nop                       #  16    0xaac80  1      OPC=nop             
  nop                       #  17    0xaac81  1      OPC=nop             
  nop                       #  18    0xaac82  1      OPC=nop             
  nop                       #  19    0xaac83  1      OPC=nop             
  nop                       #  20    0xaac84  1      OPC=nop             
  nop                       #  21    0xaac85  1      OPC=nop             
  nop                       #  22    0xaac86  1      OPC=nop             
                                                                         
.size _ZNSs7_M_dataEPc, .-_ZNSs7_M_dataEPc

