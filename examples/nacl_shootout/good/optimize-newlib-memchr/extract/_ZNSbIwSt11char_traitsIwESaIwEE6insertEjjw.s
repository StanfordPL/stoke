  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw, @function

#! file-offset 0x11a240
#! rip-offset  0xda240
#! capacity    96 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw:                  #        0xda240  0      OPC=<label>         
  movl %edi, %edi                                             #  1     0xda240  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                             #  2     0xda242  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                             #  3     0xda245  3      OPC=addq_r64_r64    
  movl %ecx, %r8d                                             #  4     0xda248  3      OPC=movl_r32_r32    
  movl %edi, %edi                                             #  5     0xda24b  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %eax                                    #  6     0xda24d  4      OPC=movl_r32_m32    
  subl $0xc, %eax                                             #  7     0xda251  3      OPC=subl_r32_imm8   
  movl %eax, %eax                                             #  8     0xda254  2      OPC=movl_r32_r32    
  cmpl (%r15,%rax,1), %esi                                    #  9     0xda256  4      OPC=cmpl_r32_m32    
  ja .L_da280                                                 #  10    0xda25a  2      OPC=ja_label        
  movl %edx, %ecx                                             #  11    0xda25c  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                              #  12    0xda25e  2      OPC=xchgw_ax_r16    
  addl $0x8, %esp                                             #  13    0xda260  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                             #  14    0xda263  3      OPC=addq_r64_r64    
  xorl %edx, %edx                                             #  15    0xda266  2      OPC=xorl_r32_r32    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  16    0xda268  5      OPC=jmpq_label_1    
  nop                                                         #  17    0xda26d  1      OPC=nop             
  nop                                                         #  18    0xda26e  1      OPC=nop             
  nop                                                         #  19    0xda26f  1      OPC=nop             
  nop                                                         #  20    0xda270  1      OPC=nop             
  nop                                                         #  21    0xda271  1      OPC=nop             
  nop                                                         #  22    0xda272  1      OPC=nop             
  nop                                                         #  23    0xda273  1      OPC=nop             
  nop                                                         #  24    0xda274  1      OPC=nop             
  nop                                                         #  25    0xda275  1      OPC=nop             
  nop                                                         #  26    0xda276  1      OPC=nop             
  nop                                                         #  27    0xda277  1      OPC=nop             
  nop                                                         #  28    0xda278  1      OPC=nop             
  nop                                                         #  29    0xda279  1      OPC=nop             
  nop                                                         #  30    0xda27a  1      OPC=nop             
  nop                                                         #  31    0xda27b  1      OPC=nop             
  nop                                                         #  32    0xda27c  1      OPC=nop             
  nop                                                         #  33    0xda27d  1      OPC=nop             
  nop                                                         #  34    0xda27e  1      OPC=nop             
  nop                                                         #  35    0xda27f  1      OPC=nop             
.L_da280:                                                     #        0xda280  0      OPC=<label>         
  movl $0x1003bb73, %edi                                      #  36    0xda280  5      OPC=movl_r32_imm32  
  nop                                                         #  37    0xda285  1      OPC=nop             
  nop                                                         #  38    0xda286  1      OPC=nop             
  nop                                                         #  39    0xda287  1      OPC=nop             
  nop                                                         #  40    0xda288  1      OPC=nop             
  nop                                                         #  41    0xda289  1      OPC=nop             
  nop                                                         #  42    0xda28a  1      OPC=nop             
  nop                                                         #  43    0xda28b  1      OPC=nop             
  nop                                                         #  44    0xda28c  1      OPC=nop             
  nop                                                         #  45    0xda28d  1      OPC=nop             
  nop                                                         #  46    0xda28e  1      OPC=nop             
  nop                                                         #  47    0xda28f  1      OPC=nop             
  nop                                                         #  48    0xda290  1      OPC=nop             
  nop                                                         #  49    0xda291  1      OPC=nop             
  nop                                                         #  50    0xda292  1      OPC=nop             
  nop                                                         #  51    0xda293  1      OPC=nop             
  nop                                                         #  52    0xda294  1      OPC=nop             
  nop                                                         #  53    0xda295  1      OPC=nop             
  nop                                                         #  54    0xda296  1      OPC=nop             
  nop                                                         #  55    0xda297  1      OPC=nop             
  nop                                                         #  56    0xda298  1      OPC=nop             
  nop                                                         #  57    0xda299  1      OPC=nop             
  nop                                                         #  58    0xda29a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                        #  59    0xda29b  5      OPC=callq_label     
                                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEjjw

