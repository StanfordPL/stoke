  .text
  .globl _ZNKSs9_M_ibeginEv
  .type _ZNKSs9_M_ibeginEv, @function

#! file-offset 0xea280
#! rip-offset  0xaa280
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs9_M_ibeginEv:        #        0xaa280  0      OPC=<label>         
  popq %r11                 #  1     0xaa280  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaa282  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa284  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaa286  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaa28a  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaa291  1      OPC=nop             
  nop                       #  7     0xaa292  1      OPC=nop             
  nop                       #  8     0xaa293  1      OPC=nop             
  nop                       #  9     0xaa294  1      OPC=nop             
  addq %r15, %r11           #  10    0xaa295  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaa298  3      OPC=jmpq_r64        
  nop                       #  12    0xaa29b  1      OPC=nop             
  nop                       #  13    0xaa29c  1      OPC=nop             
  nop                       #  14    0xaa29d  1      OPC=nop             
  nop                       #  15    0xaa29e  1      OPC=nop             
  nop                       #  16    0xaa29f  1      OPC=nop             
  nop                       #  17    0xaa2a0  1      OPC=nop             
  nop                       #  18    0xaa2a1  1      OPC=nop             
  nop                       #  19    0xaa2a2  1      OPC=nop             
  nop                       #  20    0xaa2a3  1      OPC=nop             
  nop                       #  21    0xaa2a4  1      OPC=nop             
  nop                       #  22    0xaa2a5  1      OPC=nop             
  nop                       #  23    0xaa2a6  1      OPC=nop             
                                                                         
.size _ZNKSs9_M_ibeginEv, .-_ZNKSs9_M_ibeginEv

