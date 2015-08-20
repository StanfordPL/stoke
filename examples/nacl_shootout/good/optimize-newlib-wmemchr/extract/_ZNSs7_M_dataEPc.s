  .text
  .globl _ZNSs7_M_dataEPc
  .type _ZNSs7_M_dataEPc, @function

#! file-offset 0xea540
#! rip-offset  0xaa540
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNSs7_M_dataEPc:          #        0xaa540  0      OPC=<label>         
  popq %r11                 #  1     0xaa540  2      OPC=popq_r64_1      
  movl %esi, %eax           #  2     0xaa542  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa544  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  4     0xaa546  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rdi,1)  #  5     0xaa548  4      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d   #  6     0xaa54c  7      OPC=andl_r32_imm32  
  nop                       #  7     0xaa553  1      OPC=nop             
  nop                       #  8     0xaa554  1      OPC=nop             
  nop                       #  9     0xaa555  1      OPC=nop             
  nop                       #  10    0xaa556  1      OPC=nop             
  addq %r15, %r11           #  11    0xaa557  3      OPC=addq_r64_r64    
  jmpq %r11                 #  12    0xaa55a  3      OPC=jmpq_r64        
  nop                       #  13    0xaa55d  1      OPC=nop             
  nop                       #  14    0xaa55e  1      OPC=nop             
  nop                       #  15    0xaa55f  1      OPC=nop             
  nop                       #  16    0xaa560  1      OPC=nop             
  nop                       #  17    0xaa561  1      OPC=nop             
  nop                       #  18    0xaa562  1      OPC=nop             
  nop                       #  19    0xaa563  1      OPC=nop             
  nop                       #  20    0xaa564  1      OPC=nop             
  nop                       #  21    0xaa565  1      OPC=nop             
  nop                       #  22    0xaa566  1      OPC=nop             
                                                                         
.size _ZNSs7_M_dataEPc, .-_ZNSs7_M_dataEPc

