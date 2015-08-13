  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj, @function

#! file-offset 0x119e20
#! rip-offset  0xd9e20
#! capacity    96 bytes

# Text                                                #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj:     #        0xd9e20  0      OPC=<label>         
  movl %edx, %edx                                     #  1     0xd9e20  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                     #  2     0xd9e22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                     #  3     0xd9e25  3      OPC=addq_r64_r64    
  movl %edi, %edi                                     #  4     0xd9e28  2      OPC=movl_r32_r32    
  movl %edx, %edx                                     #  5     0xd9e2a  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                            #  6     0xd9e2c  4      OPC=movl_r32_m32    
  leal -0xc(%rdx), %eax                               #  7     0xd9e30  3      OPC=leal_r32_m16    
  movl %eax, %eax                                     #  8     0xd9e33  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %eax                            #  9     0xd9e35  4      OPC=movl_r32_m32    
  cmpl %eax, %ecx                                     #  10    0xd9e39  2      OPC=cmpl_r32_r32    
  nop                                                 #  11    0xd9e3b  1      OPC=nop             
  nop                                                 #  12    0xd9e3c  1      OPC=nop             
  nop                                                 #  13    0xd9e3d  1      OPC=nop             
  nop                                                 #  14    0xd9e3e  1      OPC=nop             
  nop                                                 #  15    0xd9e3f  1      OPC=nop             
  ja .L_d9e60                                         #  16    0xd9e40  2      OPC=ja_label        
  subl %ecx, %eax                                     #  17    0xd9e42  2      OPC=subl_r32_r32    
  leal (%rdx,%rcx,4), %edx                            #  18    0xd9e44  3      OPC=leal_r32_m16    
  cmpl %r8d, %eax                                     #  19    0xd9e47  3      OPC=cmpl_r32_r32    
  cmoval %r8d, %eax                                   #  20    0xd9e4a  4      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                     #  21    0xd9e4e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                     #  22    0xd9e51  3      OPC=addq_r64_r64    
  movl %eax, %ecx                                     #  23    0xd9e54  2      OPC=movl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6insertEjPKwj  #  24    0xd9e56  5      OPC=jmpq_label_1    
  nop                                                 #  25    0xd9e5b  1      OPC=nop             
  nop                                                 #  26    0xd9e5c  1      OPC=nop             
  nop                                                 #  27    0xd9e5d  1      OPC=nop             
  nop                                                 #  28    0xd9e5e  1      OPC=nop             
  nop                                                 #  29    0xd9e5f  1      OPC=nop             
.L_d9e60:                                             #        0xd9e60  0      OPC=<label>         
  movl $0x1003bb73, %edi                              #  30    0xd9e60  5      OPC=movl_r32_imm32  
  nop                                                 #  31    0xd9e65  1      OPC=nop             
  nop                                                 #  32    0xd9e66  1      OPC=nop             
  nop                                                 #  33    0xd9e67  1      OPC=nop             
  nop                                                 #  34    0xd9e68  1      OPC=nop             
  nop                                                 #  35    0xd9e69  1      OPC=nop             
  nop                                                 #  36    0xd9e6a  1      OPC=nop             
  nop                                                 #  37    0xd9e6b  1      OPC=nop             
  nop                                                 #  38    0xd9e6c  1      OPC=nop             
  nop                                                 #  39    0xd9e6d  1      OPC=nop             
  nop                                                 #  40    0xd9e6e  1      OPC=nop             
  nop                                                 #  41    0xd9e6f  1      OPC=nop             
  nop                                                 #  42    0xd9e70  1      OPC=nop             
  nop                                                 #  43    0xd9e71  1      OPC=nop             
  nop                                                 #  44    0xd9e72  1      OPC=nop             
  nop                                                 #  45    0xd9e73  1      OPC=nop             
  nop                                                 #  46    0xd9e74  1      OPC=nop             
  nop                                                 #  47    0xd9e75  1      OPC=nop             
  nop                                                 #  48    0xd9e76  1      OPC=nop             
  nop                                                 #  49    0xd9e77  1      OPC=nop             
  nop                                                 #  50    0xd9e78  1      OPC=nop             
  nop                                                 #  51    0xd9e79  1      OPC=nop             
  nop                                                 #  52    0xd9e7a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                #  53    0xd9e7b  5      OPC=callq_label     
                                                                                                   
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEjRKS2_jj

