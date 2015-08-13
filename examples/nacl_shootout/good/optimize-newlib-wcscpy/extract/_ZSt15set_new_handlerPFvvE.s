  .text
  .globl _ZSt15set_new_handlerPFvvE
  .type _ZSt15set_new_handlerPFvvE, @function

#! file-offset 0x1205e0
#! rip-offset  0xe05e0
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZSt15set_new_handlerPFvvE:  #        0xe05e0  0      OPC=<label>         
  popq %r11                   #  1     0xe05e0  2      OPC=popq_r64_1      
  movl 0xff93048(%rip), %eax  #  2     0xe05e2  6      OPC=movl_r32_m32    
  movl %edi, 0xff93042(%rip)  #  3     0xe05e8  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d     #  4     0xe05ee  7      OPC=andl_r32_imm32  
  nop                         #  5     0xe05f5  1      OPC=nop             
  nop                         #  6     0xe05f6  1      OPC=nop             
  nop                         #  7     0xe05f7  1      OPC=nop             
  nop                         #  8     0xe05f8  1      OPC=nop             
  addq %r15, %r11             #  9     0xe05f9  3      OPC=addq_r64_r64    
  jmpq %r11                   #  10    0xe05fc  3      OPC=jmpq_r64        
  nop                         #  11    0xe05ff  1      OPC=nop             
  nop                         #  12    0xe0600  1      OPC=nop             
  nop                         #  13    0xe0601  1      OPC=nop             
  nop                         #  14    0xe0602  1      OPC=nop             
  nop                         #  15    0xe0603  1      OPC=nop             
  nop                         #  16    0xe0604  1      OPC=nop             
  nop                         #  17    0xe0605  1      OPC=nop             
  nop                         #  18    0xe0606  1      OPC=nop             
                                                                           
.size _ZSt15set_new_handlerPFvvE, .-_ZSt15set_new_handlerPFvvE

