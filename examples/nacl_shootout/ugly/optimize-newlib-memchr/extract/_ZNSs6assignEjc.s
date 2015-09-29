  .text
  .globl _ZNSs6assignEjc
  .type _ZNSs6assignEjc, @function

#! file-offset 0xef1c0
#! rip-offset  0xaf1c0
#! capacity    32 bytes

# Text                              #  Line  RIP      Bytes  Opcode             
._ZNSs6assignEjc:                   #        0xaf1c0  0      OPC=<label>        
  movl %edi, %edi                   #  1     0xaf1c0  2      OPC=movl_r32_r32   
  movsbl %dl, %r8d                  #  2     0xaf1c2  4      OPC=movsbl_r32_r8  
  movl %esi, %ecx                   #  3     0xaf1c6  2      OPC=movl_r32_r32   
  movl %edi, %edi                   #  4     0xaf1c8  2      OPC=movl_r32_r32   
  movl (%r15,%rdi,1), %eax          #  5     0xaf1ca  4      OPC=movl_r32_m32   
  xorl %esi, %esi                   #  6     0xaf1ce  2      OPC=xorl_r32_r32   
  subl $0xc, %eax                   #  7     0xaf1d0  3      OPC=subl_r32_imm8  
  movl %eax, %eax                   #  8     0xaf1d3  2      OPC=movl_r32_r32   
  movl (%r15,%rax,1), %edx          #  9     0xaf1d5  4      OPC=movl_r32_m32   
  jmpq ._ZNSs14_M_replace_auxEjjjc  #  10    0xaf1d9  5      OPC=jmpq_label_1   
  nop                               #  11    0xaf1de  1      OPC=nop            
  nop                               #  12    0xaf1df  1      OPC=nop            
                                                                                
.size _ZNSs6assignEjc, .-_ZNSs6assignEjc

