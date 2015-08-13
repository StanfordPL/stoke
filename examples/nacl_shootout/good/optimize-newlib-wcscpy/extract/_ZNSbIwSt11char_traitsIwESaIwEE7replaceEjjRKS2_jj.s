  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj, @function

#! file-offset 0x11a720
#! rip-offset  0xda720
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj:     #        0xda720  0      OPC=<label>         
  movl %ecx, %ecx                                       #  1     0xda720  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                       #  2     0xda722  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  3     0xda725  3      OPC=addq_r64_r64    
  movl %r8d, %eax                                       #  4     0xda728  3      OPC=movl_r32_r32    
  movl %ecx, %ecx                                       #  5     0xda72b  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %ecx                              #  6     0xda72d  4      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  7     0xda731  2      OPC=movl_r32_r32    
  leal -0xc(%rcx), %r8d                                 #  8     0xda733  4      OPC=leal_r32_m16    
  movl %r8d, %r8d                                       #  9     0xda737  3      OPC=movl_r32_r32    
  movl (%r15,%r8,1), %r8d                               #  10    0xda73a  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                                        #  11    0xda73e  2      OPC=xchgw_ax_r16    
  cmpl %r8d, %eax                                       #  12    0xda740  3      OPC=cmpl_r32_r32    
  ja .L_da760                                           #  13    0xda743  2      OPC=ja_label        
  subl %eax, %r8d                                       #  14    0xda745  3      OPC=subl_r32_r32    
  leal (%rcx,%rax,4), %ecx                              #  15    0xda748  3      OPC=leal_r32_m16    
  cmpl %r9d, %r8d                                       #  16    0xda74b  3      OPC=cmpl_r32_r32    
  cmoval %r9d, %r8d                                     #  17    0xda74e  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                       #  18    0xda752  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  19    0xda755  3      OPC=addq_r64_r64    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj  #  20    0xda758  5      OPC=jmpq_label_1    
  nop                                                   #  21    0xda75d  1      OPC=nop             
  nop                                                   #  22    0xda75e  1      OPC=nop             
  nop                                                   #  23    0xda75f  1      OPC=nop             
.L_da760:                                               #        0xda760  0      OPC=<label>         
  movl $0x1003bb5d, %edi                                #  24    0xda760  5      OPC=movl_r32_imm32  
  nop                                                   #  25    0xda765  1      OPC=nop             
  nop                                                   #  26    0xda766  1      OPC=nop             
  nop                                                   #  27    0xda767  1      OPC=nop             
  nop                                                   #  28    0xda768  1      OPC=nop             
  nop                                                   #  29    0xda769  1      OPC=nop             
  nop                                                   #  30    0xda76a  1      OPC=nop             
  nop                                                   #  31    0xda76b  1      OPC=nop             
  nop                                                   #  32    0xda76c  1      OPC=nop             
  nop                                                   #  33    0xda76d  1      OPC=nop             
  nop                                                   #  34    0xda76e  1      OPC=nop             
  nop                                                   #  35    0xda76f  1      OPC=nop             
  nop                                                   #  36    0xda770  1      OPC=nop             
  nop                                                   #  37    0xda771  1      OPC=nop             
  nop                                                   #  38    0xda772  1      OPC=nop             
  nop                                                   #  39    0xda773  1      OPC=nop             
  nop                                                   #  40    0xda774  1      OPC=nop             
  nop                                                   #  41    0xda775  1      OPC=nop             
  nop                                                   #  42    0xda776  1      OPC=nop             
  nop                                                   #  43    0xda777  1      OPC=nop             
  nop                                                   #  44    0xda778  1      OPC=nop             
  nop                                                   #  45    0xda779  1      OPC=nop             
  nop                                                   #  46    0xda77a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                  #  47    0xda77b  5      OPC=callq_label     
                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj

