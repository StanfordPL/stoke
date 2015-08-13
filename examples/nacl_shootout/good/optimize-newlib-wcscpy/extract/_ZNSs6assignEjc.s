  .text
  .globl _ZNSs6assignEjc
  .type _ZNSs6assignEjc, @function

#! file-offset 0xee7a0
#! rip-offset  0xae7a0
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode             
._ZNSs6assignEjc:                   #        0xae7a0  0      OPC=<label>        
  movl %edi, %edi                   #  1     0xae7a0  2      OPC=movl_r32_r32   
  movsbl %dl, %r8d                  #  2     0xae7a2  4      OPC=movsbl_r32_r8  
  movl %esi, %ecx                   #  3     0xae7a6  2      OPC=movl_r32_r32   
  movl %edi, %edi                   #  4     0xae7a8  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax          #  5     0xae7aa  4      OPC=movl_r32_m32   
  xorl %esi, %esi                   #  6     0xae7ae  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                   #  7     0xae7b0  3      OPC=subl_r32_imm8  
  movl %eax, %eax                   #  8     0xae7b3  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx          #  9     0xae7b5  4      OPC=movl_r32_m32   
  jmpq ._ZNSs14_M_replace_auxEjjjc  #  10    0xae7b9  5      OPC=jmpq_label_1   
  nop                               #  11    0xae7be  1      OPC=nop            
  nop                               #  12    0xae7bf  1      OPC=nop            
                                                                                
.size _ZNSs6assignEjc, .-_ZNSs6assignEjc

