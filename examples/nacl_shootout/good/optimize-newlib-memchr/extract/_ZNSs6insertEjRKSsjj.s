  .text
  .globl _ZNSs6insertEjRKSsjj
  .type _ZNSs6insertEjRKSsjj, @function

#! file-offset 0xf02c0
#! rip-offset  0xb02c0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs6insertEjRKSsjj:                  #        0xb02c0  0      OPC=<label>         
  movl %edx, %edx                       #  1     0xb02c0  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xb02c2  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xb02c5  3      OPC=addq_r64_r64    
  movl %edi, %edi                       #  4     0xb02c8  2      OPC=movl_r32_r32    
  movl %edx, %edx                       #  5     0xb02ca  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx              #  6     0xb02cc  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %eax                 #  7     0xb02d0  3      OPC=leal_r32_m16    
  movl %eax, %eax                       #  8     0xb02d3  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax              #  9     0xb02d5  4      OPC=movl_r32_m32    
  cmpl %eax, %ecx                       #  10    0xb02d9  2      OPC=cmpl_r32_r32    
  nop                                   #  11    0xb02db  1      OPC=nop             
  nop                                   #  12    0xb02dc  1      OPC=nop             
  nop                                   #  13    0xb02dd  1      OPC=nop             
  nop                                   #  14    0xb02de  1      OPC=nop             
  nop                                   #  15    0xb02df  1      OPC=nop             
  ja .L_b0300                           #  16    0xb02e0  2      OPC=ja_label        
  subl %ecx, %eax                       #  17    0xb02e2  2      OPC=subl_r32_r32    
  leal (%rcx,%rdx,1), %edx              #  18    0xb02e4  3      OPC=leal_r32_m16    
  cmpl %r8d, %eax                       #  19    0xb02e7  3      OPC=cmpl_r32_r32    
  cmoval %r8d, %eax                     #  20    0xb02ea  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  21    0xb02ee  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  22    0xb02f1  3      OPC=addq_r64_r64    
  movl %eax, %ecx                       #  23    0xb02f4  2      OPC=movl_r32_r32    
  jmpq ._ZNSs6insertEjPKcj              #  24    0xb02f6  5      OPC=jmpq_label_1    
  nop                                   #  25    0xb02fb  1      OPC=nop             
  nop                                   #  26    0xb02fc  1      OPC=nop             
  nop                                   #  27    0xb02fd  1      OPC=nop             
  nop                                   #  28    0xb02fe  1      OPC=nop             
  nop                                   #  29    0xb02ff  1      OPC=nop             
.L_b0300:                               #        0xb0300  0      OPC=<label>         
  movl $0x1003bb73, %edi                #  30    0xb0300  5      OPC=movl_r32_imm32  
  nop                                   #  31    0xb0305  1      OPC=nop             
  nop                                   #  32    0xb0306  1      OPC=nop             
  nop                                   #  33    0xb0307  1      OPC=nop             
  nop                                   #  34    0xb0308  1      OPC=nop             
  nop                                   #  35    0xb0309  1      OPC=nop             
  nop                                   #  36    0xb030a  1      OPC=nop             
  nop                                   #  37    0xb030b  1      OPC=nop             
  nop                                   #  38    0xb030c  1      OPC=nop             
  nop                                   #  39    0xb030d  1      OPC=nop             
  nop                                   #  40    0xb030e  1      OPC=nop             
  nop                                   #  41    0xb030f  1      OPC=nop             
  nop                                   #  42    0xb0310  1      OPC=nop             
  nop                                   #  43    0xb0311  1      OPC=nop             
  nop                                   #  44    0xb0312  1      OPC=nop             
  nop                                   #  45    0xb0313  1      OPC=nop             
  nop                                   #  46    0xb0314  1      OPC=nop             
  nop                                   #  47    0xb0315  1      OPC=nop             
  nop                                   #  48    0xb0316  1      OPC=nop             
  nop                                   #  49    0xb0317  1      OPC=nop             
  nop                                   #  50    0xb0318  1      OPC=nop             
  nop                                   #  51    0xb0319  1      OPC=nop             
  nop                                   #  52    0xb031a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  53    0xb031b  5      OPC=callq_label     
                                                                                     
.size _ZNSs6insertEjRKSsjj, .-_ZNSs6insertEjRKSsjj

