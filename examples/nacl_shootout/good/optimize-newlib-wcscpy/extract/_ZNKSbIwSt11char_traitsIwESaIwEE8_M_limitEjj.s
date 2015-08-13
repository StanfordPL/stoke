  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj, @function

#! file-offset 0x115200
#! rip-offset  0xd5200
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj:  #        0xd5200  0      OPC=<label>          
  movl %edi, %edi                               #  1     0xd5200  2      OPC=movl_r32_r32     
  movl %edi, %edi                               #  2     0xd5202  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %eax                      #  3     0xd5204  4      OPC=movl_r32_m32     
  popq %r11                                     #  4     0xd5208  2      OPC=popq_r64_1       
  subl $0xc, %eax                               #  5     0xd520a  3      OPC=subl_r32_imm8    
  movl %eax, %eax                               #  6     0xd520d  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %eax                      #  7     0xd520f  4      OPC=movl_r32_m32     
  subl %esi, %eax                               #  8     0xd5213  2      OPC=subl_r32_r32     
  cmpl %eax, %edx                               #  9     0xd5215  2      OPC=cmpl_r32_r32     
  cmovbel %edx, %eax                            #  10    0xd5217  3      OPC=cmovbel_r32_r32  
  nop                                           #  11    0xd521a  1      OPC=nop              
  nop                                           #  12    0xd521b  1      OPC=nop              
  nop                                           #  13    0xd521c  1      OPC=nop              
  nop                                           #  14    0xd521d  1      OPC=nop              
  nop                                           #  15    0xd521e  1      OPC=nop              
  nop                                           #  16    0xd521f  1      OPC=nop              
  andl $0xffffffe0, %r11d                       #  17    0xd5220  7      OPC=andl_r32_imm32   
  nop                                           #  18    0xd5227  1      OPC=nop              
  nop                                           #  19    0xd5228  1      OPC=nop              
  nop                                           #  20    0xd5229  1      OPC=nop              
  nop                                           #  21    0xd522a  1      OPC=nop              
  addq %r15, %r11                               #  22    0xd522b  3      OPC=addq_r64_r64     
  jmpq %r11                                     #  23    0xd522e  3      OPC=jmpq_r64         
  nop                                           #  24    0xd5231  1      OPC=nop              
  nop                                           #  25    0xd5232  1      OPC=nop              
  nop                                           #  26    0xd5233  1      OPC=nop              
  nop                                           #  27    0xd5234  1      OPC=nop              
  nop                                           #  28    0xd5235  1      OPC=nop              
  nop                                           #  29    0xd5236  1      OPC=nop              
  nop                                           #  30    0xd5237  1      OPC=nop              
  nop                                           #  31    0xd5238  1      OPC=nop              
  nop                                           #  32    0xd5239  1      OPC=nop              
  nop                                           #  33    0xd523a  1      OPC=nop              
  nop                                           #  34    0xd523b  1      OPC=nop              
  nop                                           #  35    0xd523c  1      OPC=nop              
  nop                                           #  36    0xd523d  1      OPC=nop              
  nop                                           #  37    0xd523e  1      OPC=nop              
  nop                                           #  38    0xd523f  1      OPC=nop              
  nop                                           #  39    0xd5240  1      OPC=nop              
  nop                                           #  40    0xd5241  1      OPC=nop              
  nop                                           #  41    0xd5242  1      OPC=nop              
  nop                                           #  42    0xd5243  1      OPC=nop              
  nop                                           #  43    0xd5244  1      OPC=nop              
  nop                                           #  44    0xd5245  1      OPC=nop              
  nop                                           #  45    0xd5246  1      OPC=nop              
                                                                                              
.size _ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj, .-_ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj

