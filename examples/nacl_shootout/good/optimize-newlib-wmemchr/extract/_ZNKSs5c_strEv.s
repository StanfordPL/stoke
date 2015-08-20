  .text
  .globl _ZNKSs5c_strEv
  .type _ZNKSs5c_strEv, @function

#! file-offset 0xea8e0
#! rip-offset  0xaa8e0
#! capacity    32 bytes

# Text                      #  Line  RIP      Bytes  Opcode              
._ZNKSs5c_strEv:            #        0xaa8e0  0      OPC=<label>         
  popq %r11                 #  1     0xaa8e0  2      OPC=popq_r64_1      
  movl %edi, %edi           #  2     0xaa8e2  2      OPC=movl_r32_r32    
  movl %edi, %edi           #  3     0xaa8e4  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax  #  4     0xaa8e6  4      OPC=movl_r32_m32    
  andl $0xffffffe0, %r11d   #  5     0xaa8ea  7      OPC=andl_r32_imm32  
  nop                       #  6     0xaa8f1  1      OPC=nop             
  nop                       #  7     0xaa8f2  1      OPC=nop             
  nop                       #  8     0xaa8f3  1      OPC=nop             
  nop                       #  9     0xaa8f4  1      OPC=nop             
  addq %r15, %r11           #  10    0xaa8f5  3      OPC=addq_r64_r64    
  jmpq %r11                 #  11    0xaa8f8  3      OPC=jmpq_r64        
  nop                       #  12    0xaa8fb  1      OPC=nop             
  nop                       #  13    0xaa8fc  1      OPC=nop             
  nop                       #  14    0xaa8fd  1      OPC=nop             
  nop                       #  15    0xaa8fe  1      OPC=nop             
  nop                       #  16    0xaa8ff  1      OPC=nop             
  nop                       #  17    0xaa900  1      OPC=nop             
  nop                       #  18    0xaa901  1      OPC=nop             
  nop                       #  19    0xaa902  1      OPC=nop             
  nop                       #  20    0xaa903  1      OPC=nop             
  nop                       #  21    0xaa904  1      OPC=nop             
  nop                       #  22    0xaa905  1      OPC=nop             
  nop                       #  23    0xaa906  1      OPC=nop             
                                                                         
.size _ZNKSs5c_strEv, .-_ZNKSs5c_strEv

