  .text
  .globl _ZNKSs5c_strEv
  .type _ZNKSs5c_strEv, @function

#! file-offset 0xea5e0
#! rip-offset  0xaa5e0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs5c_strEv:            #        0xaa5e0  0      OPC=<label>         
  popq %r11                 #  1     0xaa5e0  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaa5e2  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa5e4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaa5e6  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaa5ea  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaa5f1  1      OPC=nop             
  nop                       #  7     0xaa5f2  1      OPC=nop             
  nop                       #  8     0xaa5f3  1      OPC=nop             
  nop                       #  9     0xaa5f4  1      OPC=nop             
  addq %r15, %r11           #  10    0xaa5f5  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaa5f8  3      OPC=jmpq_r64        
  nop                       #  12    0xaa5fb  1      OPC=nop             
  nop                       #  13    0xaa5fc  1      OPC=nop             
  nop                       #  14    0xaa5fd  1      OPC=nop             
  nop                       #  15    0xaa5fe  1      OPC=nop             
  nop                       #  16    0xaa5ff  1      OPC=nop             
  nop                       #  17    0xaa600  1      OPC=nop             
  nop                       #  18    0xaa601  1      OPC=nop             
  nop                       #  19    0xaa602  1      OPC=nop             
  nop                       #  20    0xaa603  1      OPC=nop             
  nop                       #  21    0xaa604  1      OPC=nop             
  nop                       #  22    0xaa605  1      OPC=nop             
  nop                       #  23    0xaa606  1      OPC=nop             
                                                                         
.size _ZNKSs5c_strEv, .-_ZNKSs5c_strEv

