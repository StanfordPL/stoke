  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw, @function

#! file-offset 0x119a40
#! rip-offset  0xd9a40
#! capacity    96 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw:                #        0xd9a40  0      OPC=<label>         
  movl %edi, %edi                                             #  1     0xd9a40  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                             #  2     0xd9a42  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                             #  3     0xd9a45  3      OPC=addq_r64_r64    
  movl %edx, %eax                                             #  4     0xd9a48  2      OPC=movl_r32_r32    
  movl %edi, %edi                                             #  5     0xd9a4a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx                                    #  6     0xd9a4c  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                             #  7     0xd9a50  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                             #  8     0xd9a53  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                    #  9     0xd9a55  4      OPC=movl_r32_m32    
  cmpl %edx, %esi                                             #  10    0xd9a59  2      OPC=cmpl_r32_r32    
  nop                                                         #  11    0xd9a5b  1      OPC=nop             
  nop                                                         #  12    0xd9a5c  1      OPC=nop             
  nop                                                         #  13    0xd9a5d  1      OPC=nop             
  nop                                                         #  14    0xd9a5e  1      OPC=nop             
  nop                                                         #  15    0xd9a5f  1      OPC=nop             
  ja .L_d9a80                                                 #  16    0xd9a60  2      OPC=ja_label        
  subl %esi, %edx                                             #  17    0xd9a62  2      OPC=subl_r32_r32    
  cmpl %eax, %edx                                             #  18    0xd9a64  2      OPC=cmpl_r32_r32    
  cmoval %eax, %edx                                           #  19    0xd9a66  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                             #  20    0xd9a69  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                             #  21    0xd9a6c  3      OPC=addq_r64_r64    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  22    0xd9a6f  5      OPC=jmpq_label_1    
  nop                                                         #  23    0xd9a74  1      OPC=nop             
  nop                                                         #  24    0xd9a75  1      OPC=nop             
  nop                                                         #  25    0xd9a76  1      OPC=nop             
  nop                                                         #  26    0xd9a77  1      OPC=nop             
  nop                                                         #  27    0xd9a78  1      OPC=nop             
  nop                                                         #  28    0xd9a79  1      OPC=nop             
  nop                                                         #  29    0xd9a7a  1      OPC=nop             
  nop                                                         #  30    0xd9a7b  1      OPC=nop             
  nop                                                         #  31    0xd9a7c  1      OPC=nop             
  nop                                                         #  32    0xd9a7d  1      OPC=nop             
  nop                                                         #  33    0xd9a7e  1      OPC=nop             
  nop                                                         #  34    0xd9a7f  1      OPC=nop             
.L_d9a80:                                                     #        0xd9a80  0      OPC=<label>         
  movl $0x1003bb5d, %edi                                      #  35    0xd9a80  5      OPC=movl_r32_imm32  
  nop                                                         #  36    0xd9a85  1      OPC=nop             
  nop                                                         #  37    0xd9a86  1      OPC=nop             
  nop                                                         #  38    0xd9a87  1      OPC=nop             
  nop                                                         #  39    0xd9a88  1      OPC=nop             
  nop                                                         #  40    0xd9a89  1      OPC=nop             
  nop                                                         #  41    0xd9a8a  1      OPC=nop             
  nop                                                         #  42    0xd9a8b  1      OPC=nop             
  nop                                                         #  43    0xd9a8c  1      OPC=nop             
  nop                                                         #  44    0xd9a8d  1      OPC=nop             
  nop                                                         #  45    0xd9a8e  1      OPC=nop             
  nop                                                         #  46    0xd9a8f  1      OPC=nop             
  nop                                                         #  47    0xd9a90  1      OPC=nop             
  nop                                                         #  48    0xd9a91  1      OPC=nop             
  nop                                                         #  49    0xd9a92  1      OPC=nop             
  nop                                                         #  50    0xd9a93  1      OPC=nop             
  nop                                                         #  51    0xd9a94  1      OPC=nop             
  nop                                                         #  52    0xd9a95  1      OPC=nop             
  nop                                                         #  53    0xd9a96  1      OPC=nop             
  nop                                                         #  54    0xd9a97  1      OPC=nop             
  nop                                                         #  55    0xd9a98  1      OPC=nop             
  nop                                                         #  56    0xd9a99  1      OPC=nop             
  nop                                                         #  57    0xd9a9a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                        #  58    0xd9a9b  5      OPC=callq_label     
                                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw

