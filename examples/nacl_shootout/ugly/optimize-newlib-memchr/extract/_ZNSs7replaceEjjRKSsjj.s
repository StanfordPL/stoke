  .text
  .globl _ZNSs7replaceEjjRKSsjj
  .type _ZNSs7replaceEjjRKSsjj, @function

#! file-offset 0xefc40
#! rip-offset  0xafc40
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs7replaceEjjRKSsjj:                #        0xafc40  0      OPC=<label>         
  movl %ecx, %ecx                       #  1     0xafc40  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xafc42  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xafc45  3      OPC=addq_r64_r64    
  movl %r8d, %eax                       #  4     0xafc48  3      OPC=movl_r32_r32    
  movl %ecx, %ecx                       #  5     0xafc4b  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %ecx              #  6     0xafc4d  4      OPC=movl_r32_m32    
  movl %edi, %edi                       #  7     0xafc51  2      OPC=movl_r32_r32    
  leal -0xc(%rcx), %r8d                 #  8     0xafc53  4      OPC=leal_r32_m16    
  movl %r8d, %r8d                       #  9     0xafc57  3      OPC=movl_r32_r32    
  movl (%r15,%r8,1), %r8d               #  10    0xafc5a  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                        #  11    0xafc5e  2      OPC=xchgw_ax_r16    
  cmpl %r8d, %eax                       #  12    0xafc60  3      OPC=cmpl_r32_r32    
  ja .L_afc80                           #  13    0xafc63  2      OPC=ja_label        
  subl %eax, %r8d                       #  14    0xafc65  3      OPC=subl_r32_r32    
  leal (%rax,%rcx,1), %ecx              #  15    0xafc68  3      OPC=leal_r32_m16    
  cmpl %r9d, %r8d                       #  16    0xafc6b  3      OPC=cmpl_r32_r32    
  cmoval %r9d, %r8d                     #  17    0xafc6e  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  18    0xafc72  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  19    0xafc75  3      OPC=addq_r64_r64    
  jmpq ._ZNSs7replaceEjjPKcj            #  20    0xafc78  5      OPC=jmpq_label_1    
  nop                                   #  21    0xafc7d  1      OPC=nop             
  nop                                   #  22    0xafc7e  1      OPC=nop             
  nop                                   #  23    0xafc7f  1      OPC=nop             
.L_afc80:                               #        0xafc80  0      OPC=<label>         
  movl $0x1003bb5d, %edi                #  24    0xafc80  5      OPC=movl_r32_imm32  
  nop                                   #  25    0xafc85  1      OPC=nop             
  nop                                   #  26    0xafc86  1      OPC=nop             
  nop                                   #  27    0xafc87  1      OPC=nop             
  nop                                   #  28    0xafc88  1      OPC=nop             
  nop                                   #  29    0xafc89  1      OPC=nop             
  nop                                   #  30    0xafc8a  1      OPC=nop             
  nop                                   #  31    0xafc8b  1      OPC=nop             
  nop                                   #  32    0xafc8c  1      OPC=nop             
  nop                                   #  33    0xafc8d  1      OPC=nop             
  nop                                   #  34    0xafc8e  1      OPC=nop             
  nop                                   #  35    0xafc8f  1      OPC=nop             
  nop                                   #  36    0xafc90  1      OPC=nop             
  nop                                   #  37    0xafc91  1      OPC=nop             
  nop                                   #  38    0xafc92  1      OPC=nop             
  nop                                   #  39    0xafc93  1      OPC=nop             
  nop                                   #  40    0xafc94  1      OPC=nop             
  nop                                   #  41    0xafc95  1      OPC=nop             
  nop                                   #  42    0xafc96  1      OPC=nop             
  nop                                   #  43    0xafc97  1      OPC=nop             
  nop                                   #  44    0xafc98  1      OPC=nop             
  nop                                   #  45    0xafc99  1      OPC=nop             
  nop                                   #  46    0xafc9a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  47    0xafc9b  5      OPC=callq_label     
                                                                                     
.size _ZNSs7replaceEjjRKSsjj, .-_ZNSs7replaceEjjRKSsjj

