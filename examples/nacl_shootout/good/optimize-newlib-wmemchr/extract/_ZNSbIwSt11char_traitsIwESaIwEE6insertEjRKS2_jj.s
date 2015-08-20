  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj, @function

#! file-offset 0x11a120
#! rip-offset  0xda120
#! capacity    96 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj:     #        0xda120  0      OPC=<label>         
  movl %edx, %edx                                     #  1     0xda120  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                     #  2     0xda122  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  3     0xda125  3      OPC=addq_r64_r64    
  movl %edi, %edi                                     #  4     0xda128  2      OPC=movl_r32_r32    
  movl %edx, %edx                                     #  5     0xda12a  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                            #  6     0xda12c  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %eax                               #  7     0xda130  3      OPC=leal_r32_m16    
  movl %eax, %eax                                     #  8     0xda133  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                            #  9     0xda135  4      OPC=movl_r32_m32    
  cmpl %eax, %ecx                                     #  10    0xda139  2      OPC=cmpl_r32_r32    
  nop                                                 #  11    0xda13b  1      OPC=nop             
  nop                                                 #  12    0xda13c  1      OPC=nop             
  nop                                                 #  13    0xda13d  1      OPC=nop             
  nop                                                 #  14    0xda13e  1      OPC=nop             
  nop                                                 #  15    0xda13f  1      OPC=nop             
  ja .L_da160                                         #  16    0xda140  2      OPC=ja_label        
  subl %ecx, %eax                                     #  17    0xda142  2      OPC=subl_r32_r32    
  leal (%rdx,%rcx,4), %edx                            #  18    0xda144  3      OPC=leal_r32_m16    
  cmpl %r8d, %eax                                     #  19    0xda147  3      OPC=cmpl_r32_r32    
  cmoval %r8d, %eax                                   #  20    0xda14a  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                     #  21    0xda14e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  22    0xda151  3      OPC=addq_r64_r64    
  movl %eax, %ecx                                     #  23    0xda154  2      OPC=movl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6insertEjPKwj  #  24    0xda156  5      OPC=jmpq_label_1    
  nop                                                 #  25    0xda15b  1      OPC=nop             
  nop                                                 #  26    0xda15c  1      OPC=nop             
  nop                                                 #  27    0xda15d  1      OPC=nop             
  nop                                                 #  28    0xda15e  1      OPC=nop             
  nop                                                 #  29    0xda15f  1      OPC=nop             
.L_da160:                                             #        0xda160  0      OPC=<label>         
  movl $0x1003bb73, %edi                              #  30    0xda160  5      OPC=movl_r32_imm32  
  nop                                                 #  31    0xda165  1      OPC=nop             
  nop                                                 #  32    0xda166  1      OPC=nop             
  nop                                                 #  33    0xda167  1      OPC=nop             
  nop                                                 #  34    0xda168  1      OPC=nop             
  nop                                                 #  35    0xda169  1      OPC=nop             
  nop                                                 #  36    0xda16a  1      OPC=nop             
  nop                                                 #  37    0xda16b  1      OPC=nop             
  nop                                                 #  38    0xda16c  1      OPC=nop             
  nop                                                 #  39    0xda16d  1      OPC=nop             
  nop                                                 #  40    0xda16e  1      OPC=nop             
  nop                                                 #  41    0xda16f  1      OPC=nop             
  nop                                                 #  42    0xda170  1      OPC=nop             
  nop                                                 #  43    0xda171  1      OPC=nop             
  nop                                                 #  44    0xda172  1      OPC=nop             
  nop                                                 #  45    0xda173  1      OPC=nop             
  nop                                                 #  46    0xda174  1      OPC=nop             
  nop                                                 #  47    0xda175  1      OPC=nop             
  nop                                                 #  48    0xda176  1      OPC=nop             
  nop                                                 #  49    0xda177  1      OPC=nop             
  nop                                                 #  50    0xda178  1      OPC=nop             
  nop                                                 #  51    0xda179  1      OPC=nop             
  nop                                                 #  52    0xda17a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                #  53    0xda17b  5      OPC=callq_label     
                                                                                                   
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj

