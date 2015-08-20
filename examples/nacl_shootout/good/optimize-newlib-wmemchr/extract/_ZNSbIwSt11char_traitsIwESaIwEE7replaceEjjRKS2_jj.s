  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj, @function

#! file-offset 0x11aa20
#! rip-offset  0xdaa20
#! capacity    96 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj:     #        0xdaa20  0      OPC=<label>         
  movl %ecx, %ecx                                       #  1     0xdaa20  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                       #  2     0xdaa22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  3     0xdaa25  3      OPC=addq_r64_r64    
  movl %r8d, %eax                                       #  4     0xdaa28  3      OPC=movl_r32_r32    
  movl %ecx, %ecx                                       #  5     0xdaa2b  2      OPC=movl_r32_r32    
  movl (%r15,%rcx,1), %ecx                              #  6     0xdaa2d  4      OPC=movl_r32_m32    
  movl %edi, %edi                                       #  7     0xdaa31  2      OPC=movl_r32_r32    
  leal -0xc(%rcx), %r8d                                 #  8     0xdaa33  4      OPC=leal_r32_m16    
  movl %r8d, %r8d                                       #  9     0xdaa37  3      OPC=movl_r32_r32    
  movl (%r15,%r8,1), %r8d                               #  10    0xdaa3a  4      OPC=movl_r32_m32    
  xchgw %ax, %ax                                        #  11    0xdaa3e  2      OPC=xchgw_ax_r16    
  cmpl %r8d, %eax                                       #  12    0xdaa40  3      OPC=cmpl_r32_r32    
  ja .L_daa60                                           #  13    0xdaa43  2      OPC=ja_label        
  subl %eax, %r8d                                       #  14    0xdaa45  3      OPC=subl_r32_r32    
  leal (%rcx,%rax,4), %ecx                              #  15    0xdaa48  3      OPC=leal_r32_m16    
  cmpl %r9d, %r8d                                       #  16    0xdaa4b  3      OPC=cmpl_r32_r32    
  cmoval %r9d, %r8d                                     #  17    0xdaa4e  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                       #  18    0xdaa52  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  19    0xdaa55  3      OPC=addq_r64_r64    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj  #  20    0xdaa58  5      OPC=jmpq_label_1    
  nop                                                   #  21    0xdaa5d  1      OPC=nop             
  nop                                                   #  22    0xdaa5e  1      OPC=nop             
  nop                                                   #  23    0xdaa5f  1      OPC=nop             
.L_daa60:                                               #        0xdaa60  0      OPC=<label>         
  movl $0x1003bb5d, %edi                                #  24    0xdaa60  5      OPC=movl_r32_imm32  
  nop                                                   #  25    0xdaa65  1      OPC=nop             
  nop                                                   #  26    0xdaa66  1      OPC=nop             
  nop                                                   #  27    0xdaa67  1      OPC=nop             
  nop                                                   #  28    0xdaa68  1      OPC=nop             
  nop                                                   #  29    0xdaa69  1      OPC=nop             
  nop                                                   #  30    0xdaa6a  1      OPC=nop             
  nop                                                   #  31    0xdaa6b  1      OPC=nop             
  nop                                                   #  32    0xdaa6c  1      OPC=nop             
  nop                                                   #  33    0xdaa6d  1      OPC=nop             
  nop                                                   #  34    0xdaa6e  1      OPC=nop             
  nop                                                   #  35    0xdaa6f  1      OPC=nop             
  nop                                                   #  36    0xdaa70  1      OPC=nop             
  nop                                                   #  37    0xdaa71  1      OPC=nop             
  nop                                                   #  38    0xdaa72  1      OPC=nop             
  nop                                                   #  39    0xdaa73  1      OPC=nop             
  nop                                                   #  40    0xdaa74  1      OPC=nop             
  nop                                                   #  41    0xdaa75  1      OPC=nop             
  nop                                                   #  42    0xdaa76  1      OPC=nop             
  nop                                                   #  43    0xdaa77  1      OPC=nop             
  nop                                                   #  44    0xdaa78  1      OPC=nop             
  nop                                                   #  45    0xdaa79  1      OPC=nop             
  nop                                                   #  46    0xdaa7a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                  #  47    0xdaa7b  5      OPC=callq_label     
                                                                                                     
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjRKS2_jj

