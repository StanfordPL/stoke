  .text
  .globl _ZNSs7_M_dataEPc
  .type _ZNSs7_M_dataEPc, @function

#! file-offset 0xea240
#! rip-offset  0xaa240
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_dataEPc:          #        0xaa240  0      OPC=<label>         
  popq %r11                 #  1     0xaa240  2      OPC=popq_r64_1      
  movl %esi, %eax           #  2     0xaa242  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa244  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  4     0xaa246  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)  #  5     0xaa248  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d   #  6     0xaa24c  7      OPC=andl_r32_imm32  
  nop                       #  7     0xaa253  1      OPC=nop             
  nop                       #  8     0xaa254  1      OPC=nop             
  nop                       #  9     0xaa255  1      OPC=nop             
  nop                       #  10    0xaa256  1      OPC=nop             
  addq %r15, %r11           #  11    0xaa257  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0xaa25a  3      OPC=jmpq_r64        
  nop                       #  13    0xaa25d  1      OPC=nop             
  nop                       #  14    0xaa25e  1      OPC=nop             
  nop                       #  15    0xaa25f  1      OPC=nop             
  nop                       #  16    0xaa260  1      OPC=nop             
  nop                       #  17    0xaa261  1      OPC=nop             
  nop                       #  18    0xaa262  1      OPC=nop             
  nop                       #  19    0xaa263  1      OPC=nop             
  nop                       #  20    0xaa264  1      OPC=nop             
  nop                       #  21    0xaa265  1      OPC=nop             
  nop                       #  22    0xaa266  1      OPC=nop             
                                                                         
.size _ZNSs7_M_dataEPc, .-_ZNSs7_M_dataEPc

