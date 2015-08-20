  .text
  .globl _ZNSs7replaceEjjRKSsjj
  .type _ZNSs7replaceEjjRKSsjj, @function

#! file-offset 0xef520
#! rip-offset  0xaf520
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs7replaceEjjRKSsjj:                #        0xaf520  0      OPC=<label>         
  movl %ecx, %ecx                       #  1     0xaf520  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xaf522  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xaf525  3      OPC=addq_r64_r64    
  movl %r8d, %eax                       #  4     0xaf528  3      OPC=movl_r32_r32    
  movl %ecx, %ecx                       #  5     0xaf52b  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %ecx              #  6     0xaf52d  4      OPC=movl_r32_m32    
  movl %edi, %edi                       #  7     0xaf531  2      OPC=movl_r32_r32    
  leal -0xc(%rcx), %r8d                 #  8     0xaf533  4      OPC=leal_r32_m16    
  movl %r8d, %r8d                       #  9     0xaf537  3      OPC=movl_r32_r32    
  movl (%r15,%r8,1), %r8d               #  10    0xaf53a  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                        #  11    0xaf53e  2      OPC=xchgw_ax_r16    
  cmpl %r8d, %eax                       #  12    0xaf540  3      OPC=cmpl_r32_r32    
  ja .L_af560                           #  13    0xaf543  2      OPC=ja_label        
  subl %eax, %r8d                       #  14    0xaf545  3      OPC=subl_r32_r32    
  leal (%rax,%rcx,1), %ecx              #  15    0xaf548  3      OPC=leal_r32_m16    
  cmpl %r9d, %r8d                       #  16    0xaf54b  3      OPC=cmpl_r32_r32    
  cmoval %r9d, %r8d                     #  17    0xaf54e  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  18    0xaf552  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  19    0xaf555  3      OPC=addq_r64_r64    
  jmpq ._ZNSs7replaceEjjPKcj            #  20    0xaf558  5      OPC=jmpq_label_1    
  nop                                   #  21    0xaf55d  1      OPC=nop             
  nop                                   #  22    0xaf55e  1      OPC=nop             
  nop                                   #  23    0xaf55f  1      OPC=nop             
.L_af560:                               #        0xaf560  0      OPC=<label>         
  movl $0x1003bb5d, %edi                #  24    0xaf560  5      OPC=movl_r32_imm32  
  nop                                   #  25    0xaf565  1      OPC=nop             
  nop                                   #  26    0xaf566  1      OPC=nop             
  nop                                   #  27    0xaf567  1      OPC=nop             
  nop                                   #  28    0xaf568  1      OPC=nop             
  nop                                   #  29    0xaf569  1      OPC=nop             
  nop                                   #  30    0xaf56a  1      OPC=nop             
  nop                                   #  31    0xaf56b  1      OPC=nop             
  nop                                   #  32    0xaf56c  1      OPC=nop             
  nop                                   #  33    0xaf56d  1      OPC=nop             
  nop                                   #  34    0xaf56e  1      OPC=nop             
  nop                                   #  35    0xaf56f  1      OPC=nop             
  nop                                   #  36    0xaf570  1      OPC=nop             
  nop                                   #  37    0xaf571  1      OPC=nop             
  nop                                   #  38    0xaf572  1      OPC=nop             
  nop                                   #  39    0xaf573  1      OPC=nop             
  nop                                   #  40    0xaf574  1      OPC=nop             
  nop                                   #  41    0xaf575  1      OPC=nop             
  nop                                   #  42    0xaf576  1      OPC=nop             
  nop                                   #  43    0xaf577  1      OPC=nop             
  nop                                   #  44    0xaf578  1      OPC=nop             
  nop                                   #  45    0xaf579  1      OPC=nop             
  nop                                   #  46    0xaf57a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  47    0xaf57b  5      OPC=callq_label     
                                                                                     
.size _ZNSs7replaceEjjRKSsjj, .-_ZNSs7replaceEjjRKSsjj

