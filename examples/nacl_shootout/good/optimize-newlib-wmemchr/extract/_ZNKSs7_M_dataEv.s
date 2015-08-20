  .text
  .globl _ZNKSs7_M_dataEv
  .type _ZNKSs7_M_dataEv, @function

#! file-offset 0xea520
#! rip-offset  0xaa520
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs7_M_dataEv:          #        0xaa520  0      OPC=<label>         
  popq %r11                 #  1     0xaa520  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaa522  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa524  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaa526  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaa52a  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaa531  1      OPC=nop             
  nop                       #  7     0xaa532  1      OPC=nop             
  nop                       #  8     0xaa533  1      OPC=nop             
  nop                       #  9     0xaa534  1      OPC=nop             
  addq %r15, %r11           #  10    0xaa535  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaa538  3      OPC=jmpq_r64        
  nop                       #  12    0xaa53b  1      OPC=nop             
  nop                       #  13    0xaa53c  1      OPC=nop             
  nop                       #  14    0xaa53d  1      OPC=nop             
  nop                       #  15    0xaa53e  1      OPC=nop             
  nop                       #  16    0xaa53f  1      OPC=nop             
  nop                       #  17    0xaa540  1      OPC=nop             
  nop                       #  18    0xaa541  1      OPC=nop             
  nop                       #  19    0xaa542  1      OPC=nop             
  nop                       #  20    0xaa543  1      OPC=nop             
  nop                       #  21    0xaa544  1      OPC=nop             
  nop                       #  22    0xaa545  1      OPC=nop             
  nop                       #  23    0xaa546  1      OPC=nop             
                                                                         
.size _ZNKSs7_M_dataEv, .-_ZNKSs7_M_dataEv

