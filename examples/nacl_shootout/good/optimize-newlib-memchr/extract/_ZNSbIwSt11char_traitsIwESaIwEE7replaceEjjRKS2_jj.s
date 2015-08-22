  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj, @function

#! file-offset 0x11b140
#! rip-offset  0xdb140
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj:     #        0xdb140  0      OPC=<label>         
  movl %ecx, %ecx                                       #  1     0xdb140  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                       #  2     0xdb142  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  3     0xdb145  3      OPC=addq_r64_r64    
  movl %r8d, %eax                                       #  4     0xdb148  3      OPC=movl_r32_r32    
  movl %ecx, %ecx                                       #  5     0xdb14b  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %ecx                              #  6     0xdb14d  4      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  7     0xdb151  2      OPC=movl_r32_r32    
  leal -0xc(%rcx), %r8d                                 #  8     0xdb153  4      OPC=leal_r32_m16    
  movl %r8d, %r8d                                       #  9     0xdb157  3      OPC=movl_r32_r32    
  movl (%r15,%r8,1), %r8d                               #  10    0xdb15a  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                                        #  11    0xdb15e  2      OPC=xchgw_ax_r16    
  cmpl %r8d, %eax                                       #  12    0xdb160  3      OPC=cmpl_r32_r32    
  ja .L_db180                                           #  13    0xdb163  2      OPC=ja_label        
  subl %eax, %r8d                                       #  14    0xdb165  3      OPC=subl_r32_r32    
  leal (%rcx,%rax,4), %ecx                              #  15    0xdb168  3      OPC=leal_r32_m16    
  cmpl %r9d, %r8d                                       #  16    0xdb16b  3      OPC=cmpl_r32_r32    
  cmoval %r9d, %r8d                                     #  17    0xdb16e  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                       #  18    0xdb172  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  19    0xdb175  3      OPC=addq_r64_r64    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj  #  20    0xdb178  5      OPC=jmpq_label_1    
  nop                                                   #  21    0xdb17d  1      OPC=nop             
  nop                                                   #  22    0xdb17e  1      OPC=nop             
  nop                                                   #  23    0xdb17f  1      OPC=nop             
.L_db180:                                               #        0xdb180  0      OPC=<label>         
  movl $0x1003bb5d, %edi                                #  24    0xdb180  5      OPC=movl_r32_imm32  
  nop                                                   #  25    0xdb185  1      OPC=nop             
  nop                                                   #  26    0xdb186  1      OPC=nop             
  nop                                                   #  27    0xdb187  1      OPC=nop             
  nop                                                   #  28    0xdb188  1      OPC=nop             
  nop                                                   #  29    0xdb189  1      OPC=nop             
  nop                                                   #  30    0xdb18a  1      OPC=nop             
  nop                                                   #  31    0xdb18b  1      OPC=nop             
  nop                                                   #  32    0xdb18c  1      OPC=nop             
  nop                                                   #  33    0xdb18d  1      OPC=nop             
  nop                                                   #  34    0xdb18e  1      OPC=nop             
  nop                                                   #  35    0xdb18f  1      OPC=nop             
  nop                                                   #  36    0xdb190  1      OPC=nop             
  nop                                                   #  37    0xdb191  1      OPC=nop             
  nop                                                   #  38    0xdb192  1      OPC=nop             
  nop                                                   #  39    0xdb193  1      OPC=nop             
  nop                                                   #  40    0xdb194  1      OPC=nop             
  nop                                                   #  41    0xdb195  1      OPC=nop             
  nop                                                   #  42    0xdb196  1      OPC=nop             
  nop                                                   #  43    0xdb197  1      OPC=nop             
  nop                                                   #  44    0xdb198  1      OPC=nop             
  nop                                                   #  45    0xdb199  1      OPC=nop             
  nop                                                   #  46    0xdb19a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                  #  47    0xdb19b  5      OPC=callq_label     
                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj

