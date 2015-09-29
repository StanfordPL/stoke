  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj, @function

#! file-offset 0x11a840
#! rip-offset  0xda840
#! capacity    96 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj:     #        0xda840  0      OPC=<label>         
  movl %edx, %edx                                     #  1     0xda840  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                     #  2     0xda842  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  3     0xda845  3      OPC=addq_r64_r64    
  movl %edi, %edi                                     #  4     0xda848  2      OPC=movl_r32_r32    
  movl %edx, %edx                                     #  5     0xda84a  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                            #  6     0xda84c  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %eax                               #  7     0xda850  3      OPC=leal_r32_m16    
  movl %eax, %eax                                     #  8     0xda853  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                            #  9     0xda855  4      OPC=movl_r32_m32    
  cmpl %eax, %ecx                                     #  10    0xda859  2      OPC=cmpl_r32_r32    
  nop                                                 #  11    0xda85b  1      OPC=nop             
  nop                                                 #  12    0xda85c  1      OPC=nop             
  nop                                                 #  13    0xda85d  1      OPC=nop             
  nop                                                 #  14    0xda85e  1      OPC=nop             
  nop                                                 #  15    0xda85f  1      OPC=nop             
  ja .L_da880                                         #  16    0xda860  2      OPC=ja_label        
  subl %ecx, %eax                                     #  17    0xda862  2      OPC=subl_r32_r32    
  leal (%rdx,%rcx,4), %edx                            #  18    0xda864  3      OPC=leal_r32_m16    
  cmpl %r8d, %eax                                     #  19    0xda867  3      OPC=cmpl_r32_r32    
  cmoval %r8d, %eax                                   #  20    0xda86a  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                     #  21    0xda86e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  22    0xda871  3      OPC=addq_r64_r64    
  movl %eax, %ecx                                     #  23    0xda874  2      OPC=movl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6insertEjPKwj  #  24    0xda876  5      OPC=jmpq_label_1    
  nop                                                 #  25    0xda87b  1      OPC=nop             
  nop                                                 #  26    0xda87c  1      OPC=nop             
  nop                                                 #  27    0xda87d  1      OPC=nop             
  nop                                                 #  28    0xda87e  1      OPC=nop             
  nop                                                 #  29    0xda87f  1      OPC=nop             
.L_da880:                                             #        0xda880  0      OPC=<label>         
  movl $0x1003bb73, %edi                              #  30    0xda880  5      OPC=movl_r32_imm32  
  nop                                                 #  31    0xda885  1      OPC=nop             
  nop                                                 #  32    0xda886  1      OPC=nop             
  nop                                                 #  33    0xda887  1      OPC=nop             
  nop                                                 #  34    0xda888  1      OPC=nop             
  nop                                                 #  35    0xda889  1      OPC=nop             
  nop                                                 #  36    0xda88a  1      OPC=nop             
  nop                                                 #  37    0xda88b  1      OPC=nop             
  nop                                                 #  38    0xda88c  1      OPC=nop             
  nop                                                 #  39    0xda88d  1      OPC=nop             
  nop                                                 #  40    0xda88e  1      OPC=nop             
  nop                                                 #  41    0xda88f  1      OPC=nop             
  nop                                                 #  42    0xda890  1      OPC=nop             
  nop                                                 #  43    0xda891  1      OPC=nop             
  nop                                                 #  44    0xda892  1      OPC=nop             
  nop                                                 #  45    0xda893  1      OPC=nop             
  nop                                                 #  46    0xda894  1      OPC=nop             
  nop                                                 #  47    0xda895  1      OPC=nop             
  nop                                                 #  48    0xda896  1      OPC=nop             
  nop                                                 #  49    0xda897  1      OPC=nop             
  nop                                                 #  50    0xda898  1      OPC=nop             
  nop                                                 #  51    0xda899  1      OPC=nop             
  nop                                                 #  52    0xda89a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                #  53    0xda89b  5      OPC=callq_label     
                                                                                                   
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj

