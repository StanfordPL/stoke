  .text
  .globl _ZNSs7replaceEjjRKSsjj
  .type _ZNSs7replaceEjjRKSsjj, @function

#! file-offset 0xef220
#! rip-offset  0xaf220
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs7replaceEjjRKSsjj:                #        0xaf220  0      OPC=<label>         
  movl %ecx, %ecx                       #  1     0xaf220  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaf222  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaf225  3      OPC=addq_r64_r64    
  movl %r8d, %eax                       #  4     0xaf228  3      OPC=movl_r32_r32    
  movl %ecx, %ecx                       #  5     0xaf22b  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %ecx              #  6     0xaf22d  4      OPC=movl_r32_m32    
  movl %edi, %edi                       #  7     0xaf231  2      OPC=movl_r32_r32    
  leal -0xc(%rcx), %r8d                 #  8     0xaf233  4      OPC=leal_r32_m16    
  movl %r8d, %r8d                       #  9     0xaf237  3      OPC=movl_r32_r32    
  movl (%r15,%r8,1), %r8d               #  10    0xaf23a  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                        #  11    0xaf23e  2      OPC=xchgw_ax_r16    
  cmpl %r8d, %eax                       #  12    0xaf240  3      OPC=cmpl_r32_r32    
  ja .L_af260                           #  13    0xaf243  2      OPC=ja_label        
  subl %eax, %r8d                       #  14    0xaf245  3      OPC=subl_r32_r32    
  leal (%rax,%rcx,1), %ecx              #  15    0xaf248  3      OPC=leal_r32_m16    
  cmpl %r9d, %r8d                       #  16    0xaf24b  3      OPC=cmpl_r32_r32    
  cmoval %r9d, %r8d                     #  17    0xaf24e  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  18    0xaf252  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  19    0xaf255  3      OPC=addq_r64_r64    
  jmpq ._ZNSs7replaceEjjPKcj            #  20    0xaf258  5      OPC=jmpq_label_1    
  nop                                   #  21    0xaf25d  1      OPC=nop             
  nop                                   #  22    0xaf25e  1      OPC=nop             
  nop                                   #  23    0xaf25f  1      OPC=nop             
.L_af260:                               #        0xaf260  0      OPC=<label>         
  movl $0x1003bb5d, %edi                #  24    0xaf260  5      OPC=movl_r32_imm32  
  nop                                   #  25    0xaf265  1      OPC=nop             
  nop                                   #  26    0xaf266  1      OPC=nop             
  nop                                   #  27    0xaf267  1      OPC=nop             
  nop                                   #  28    0xaf268  1      OPC=nop             
  nop                                   #  29    0xaf269  1      OPC=nop             
  nop                                   #  30    0xaf26a  1      OPC=nop             
  nop                                   #  31    0xaf26b  1      OPC=nop             
  nop                                   #  32    0xaf26c  1      OPC=nop             
  nop                                   #  33    0xaf26d  1      OPC=nop             
  nop                                   #  34    0xaf26e  1      OPC=nop             
  nop                                   #  35    0xaf26f  1      OPC=nop             
  nop                                   #  36    0xaf270  1      OPC=nop             
  nop                                   #  37    0xaf271  1      OPC=nop             
  nop                                   #  38    0xaf272  1      OPC=nop             
  nop                                   #  39    0xaf273  1      OPC=nop             
  nop                                   #  40    0xaf274  1      OPC=nop             
  nop                                   #  41    0xaf275  1      OPC=nop             
  nop                                   #  42    0xaf276  1      OPC=nop             
  nop                                   #  43    0xaf277  1      OPC=nop             
  nop                                   #  44    0xaf278  1      OPC=nop             
  nop                                   #  45    0xaf279  1      OPC=nop             
  nop                                   #  46    0xaf27a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  47    0xaf27b  5      OPC=callq_label     
                                                                                     
.size _ZNSs7replaceEjjRKSsjj, .-_ZNSs7replaceEjjRKSsjj

