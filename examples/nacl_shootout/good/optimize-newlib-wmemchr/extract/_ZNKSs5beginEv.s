  .text
  .globl _ZNKSs5beginEv
  .type _ZNKSs5beginEv, @function

#! file-offset 0xea6e0
#! rip-offset  0xaa6e0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs5beginEv:            #        0xaa6e0  0      OPC=<label>         
  popq %r11                 #  1     0xaa6e0  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaa6e2  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa6e4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaa6e6  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaa6ea  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaa6f1  1      OPC=nop             
  nop                       #  7     0xaa6f2  1      OPC=nop             
  nop                       #  8     0xaa6f3  1      OPC=nop             
  nop                       #  9     0xaa6f4  1      OPC=nop             
  addq %r15, %r11           #  10    0xaa6f5  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaa6f8  3      OPC=jmpq_r64        
  nop                       #  12    0xaa6fb  1      OPC=nop             
  nop                       #  13    0xaa6fc  1      OPC=nop             
  nop                       #  14    0xaa6fd  1      OPC=nop             
  nop                       #  15    0xaa6fe  1      OPC=nop             
  nop                       #  16    0xaa6ff  1      OPC=nop             
  nop                       #  17    0xaa700  1      OPC=nop             
  nop                       #  18    0xaa701  1      OPC=nop             
  nop                       #  19    0xaa702  1      OPC=nop             
  nop                       #  20    0xaa703  1      OPC=nop             
  nop                       #  21    0xaa704  1      OPC=nop             
  nop                       #  22    0xaa705  1      OPC=nop             
  nop                       #  23    0xaa706  1      OPC=nop             
                                                                         
.size _ZNKSs5beginEv, .-_ZNKSs5beginEv

