  .text
  .globl _ZNSs6insertEjRKSsjj
  .type _ZNSs6insertEjRKSsjj, @function

#! file-offset 0xef8a0
#! rip-offset  0xaf8a0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6insertEjRKSsjj:                  #        0xaf8a0  0      OPC=<label>         
  movl %edx, %edx                       #  1     0xaf8a0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaf8a2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaf8a5  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xaf8a8  2      OPC=movl_r32_r32    
  movl %edx, %edx                       #  5     0xaf8aa  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx              #  6     0xaf8ac  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %eax                 #  7     0xaf8b0  3      OPC=leal_r32_m16    
  movl %eax, %eax                       #  8     0xaf8b3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  9     0xaf8b5  4      OPC=movl_r32_m32    
  cmpl %eax, %ecx                       #  10    0xaf8b9  2      OPC=cmpl_r32_r32    
  nop                                   #  11    0xaf8bb  1      OPC=nop             
  nop                                   #  12    0xaf8bc  1      OPC=nop             
  nop                                   #  13    0xaf8bd  1      OPC=nop             
  nop                                   #  14    0xaf8be  1      OPC=nop             
  nop                                   #  15    0xaf8bf  1      OPC=nop             
  ja .L_af8e0                           #  16    0xaf8c0  2      OPC=ja_label        
  subl %ecx, %eax                       #  17    0xaf8c2  2      OPC=subl_r32_r32    
  leal (%rcx,%rdx,1), %edx              #  18    0xaf8c4  3      OPC=leal_r32_m16    
  cmpl %r8d, %eax                       #  19    0xaf8c7  3      OPC=cmpl_r32_r32    
  cmoval %r8d, %eax                     #  20    0xaf8ca  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  21    0xaf8ce  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  22    0xaf8d1  3      OPC=addq_r64_r64    
  movl %eax, %ecx                       #  23    0xaf8d4  2      OPC=movl_r32_r32    
  jmpq ._ZNSs6insertEjPKcj              #  24    0xaf8d6  5      OPC=jmpq_label_1    
  nop                                   #  25    0xaf8db  1      OPC=nop             
  nop                                   #  26    0xaf8dc  1      OPC=nop             
  nop                                   #  27    0xaf8dd  1      OPC=nop             
  nop                                   #  28    0xaf8de  1      OPC=nop             
  nop                                   #  29    0xaf8df  1      OPC=nop             
.L_af8e0:                               #        0xaf8e0  0      OPC=<label>         
  movl $0x1003bb73, %edi                #  30    0xaf8e0  5      OPC=movl_r32_imm32  
  nop                                   #  31    0xaf8e5  1      OPC=nop             
  nop                                   #  32    0xaf8e6  1      OPC=nop             
  nop                                   #  33    0xaf8e7  1      OPC=nop             
  nop                                   #  34    0xaf8e8  1      OPC=nop             
  nop                                   #  35    0xaf8e9  1      OPC=nop             
  nop                                   #  36    0xaf8ea  1      OPC=nop             
  nop                                   #  37    0xaf8eb  1      OPC=nop             
  nop                                   #  38    0xaf8ec  1      OPC=nop             
  nop                                   #  39    0xaf8ed  1      OPC=nop             
  nop                                   #  40    0xaf8ee  1      OPC=nop             
  nop                                   #  41    0xaf8ef  1      OPC=nop             
  nop                                   #  42    0xaf8f0  1      OPC=nop             
  nop                                   #  43    0xaf8f1  1      OPC=nop             
  nop                                   #  44    0xaf8f2  1      OPC=nop             
  nop                                   #  45    0xaf8f3  1      OPC=nop             
  nop                                   #  46    0xaf8f4  1      OPC=nop             
  nop                                   #  47    0xaf8f5  1      OPC=nop             
  nop                                   #  48    0xaf8f6  1      OPC=nop             
  nop                                   #  49    0xaf8f7  1      OPC=nop             
  nop                                   #  50    0xaf8f8  1      OPC=nop             
  nop                                   #  51    0xaf8f9  1      OPC=nop             
  nop                                   #  52    0xaf8fa  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  53    0xaf8fb  5      OPC=callq_label     
                                                                                     
.size _ZNSs6insertEjRKSsjj, .-_ZNSs6insertEjRKSsjj

