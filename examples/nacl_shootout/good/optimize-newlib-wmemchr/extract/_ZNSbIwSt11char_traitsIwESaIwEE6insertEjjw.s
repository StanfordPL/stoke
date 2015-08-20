  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw, @function

#! file-offset 0x119b20
#! rip-offset  0xd9b20
#! capacity    96 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw:                  #        0xd9b20  0      OPC=<label>         
  movl %edi, %edi                                             #  1     0xd9b20  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                             #  2     0xd9b22  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                             #  3     0xd9b25  3      OPC=addq_r64_r64    
  movl %ecx, %r8d                                             #  4     0xd9b28  3      OPC=movl_r32_r32    
  movl %edi, %edi                                             #  5     0xd9b2b  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                    #  6     0xd9b2d  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                             #  7     0xd9b31  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                             #  8     0xd9b34  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi                                    #  9     0xd9b36  4      OPC=cmpl_r32_m32    
  ja .L_d9b60                                                 #  10    0xd9b3a  2      OPC=ja_label        
  movl %edx, %ecx                                             #  11    0xd9b3c  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                              #  12    0xd9b3e  2      OPC=xchgw_ax_r16    
  addl $0x8, %esp                                             #  13    0xd9b40  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                             #  14    0xd9b43  3      OPC=addq_r64_r64    
  xorl %edx, %edx                                             #  15    0xd9b46  2      OPC=xorl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  16    0xd9b48  5      OPC=jmpq_label_1    
  nop                                                         #  17    0xd9b4d  1      OPC=nop             
  nop                                                         #  18    0xd9b4e  1      OPC=nop             
  nop                                                         #  19    0xd9b4f  1      OPC=nop             
  nop                                                         #  20    0xd9b50  1      OPC=nop             
  nop                                                         #  21    0xd9b51  1      OPC=nop             
  nop                                                         #  22    0xd9b52  1      OPC=nop             
  nop                                                         #  23    0xd9b53  1      OPC=nop             
  nop                                                         #  24    0xd9b54  1      OPC=nop             
  nop                                                         #  25    0xd9b55  1      OPC=nop             
  nop                                                         #  26    0xd9b56  1      OPC=nop             
  nop                                                         #  27    0xd9b57  1      OPC=nop             
  nop                                                         #  28    0xd9b58  1      OPC=nop             
  nop                                                         #  29    0xd9b59  1      OPC=nop             
  nop                                                         #  30    0xd9b5a  1      OPC=nop             
  nop                                                         #  31    0xd9b5b  1      OPC=nop             
  nop                                                         #  32    0xd9b5c  1      OPC=nop             
  nop                                                         #  33    0xd9b5d  1      OPC=nop             
  nop                                                         #  34    0xd9b5e  1      OPC=nop             
  nop                                                         #  35    0xd9b5f  1      OPC=nop             
.L_d9b60:                                                     #        0xd9b60  0      OPC=<label>         
  movl $0x1003bb73, %edi                                      #  36    0xd9b60  5      OPC=movl_r32_imm32  
  nop                                                         #  37    0xd9b65  1      OPC=nop             
  nop                                                         #  38    0xd9b66  1      OPC=nop             
  nop                                                         #  39    0xd9b67  1      OPC=nop             
  nop                                                         #  40    0xd9b68  1      OPC=nop             
  nop                                                         #  41    0xd9b69  1      OPC=nop             
  nop                                                         #  42    0xd9b6a  1      OPC=nop             
  nop                                                         #  43    0xd9b6b  1      OPC=nop             
  nop                                                         #  44    0xd9b6c  1      OPC=nop             
  nop                                                         #  45    0xd9b6d  1      OPC=nop             
  nop                                                         #  46    0xd9b6e  1      OPC=nop             
  nop                                                         #  47    0xd9b6f  1      OPC=nop             
  nop                                                         #  48    0xd9b70  1      OPC=nop             
  nop                                                         #  49    0xd9b71  1      OPC=nop             
  nop                                                         #  50    0xd9b72  1      OPC=nop             
  nop                                                         #  51    0xd9b73  1      OPC=nop             
  nop                                                         #  52    0xd9b74  1      OPC=nop             
  nop                                                         #  53    0xd9b75  1      OPC=nop             
  nop                                                         #  54    0xd9b76  1      OPC=nop             
  nop                                                         #  55    0xd9b77  1      OPC=nop             
  nop                                                         #  56    0xd9b78  1      OPC=nop             
  nop                                                         #  57    0xd9b79  1      OPC=nop             
  nop                                                         #  58    0xd9b7a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                        #  59    0xd9b7b  5      OPC=callq_label     
                                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw

