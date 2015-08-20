  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj, @function

#! file-offset 0x115500
#! rip-offset  0xd5500
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj:  #        0xd5500  0      OPC=<label>          
  movl %edi, %edi                               #  1     0xd5500  2      OPC=movl_r32_r32     
  movl %edi, %edi                               #  2     0xd5502  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %eax                      #  3     0xd5504  4      OPC=movl_r32_m32     
  popq %r11                                     #  4     0xd5508  2      OPC=popq_r64_1       
  subl $0xc, %eax                               #  5     0xd550a  3      OPC=subl_r32_imm8    
  movl %eax, %eax                               #  6     0xd550d  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %eax                      #  7     0xd550f  4      OPC=movl_r32_m32     
  subl %esi, %eax                               #  8     0xd5513  2      OPC=subl_r32_r32     
  cmpl %eax, %edx                               #  9     0xd5515  2      OPC=cmpl_r32_r32     
  cmovbel %edx, %eax                            #  10    0xd5517  3      OPC=cmovbel_r32_r32  
  nop                                           #  11    0xd551a  1      OPC=nop              
  nop                                           #  12    0xd551b  1      OPC=nop              
  nop                                           #  13    0xd551c  1      OPC=nop              
  nop                                           #  14    0xd551d  1      OPC=nop              
  nop                                           #  15    0xd551e  1      OPC=nop              
  nop                                           #  16    0xd551f  1      OPC=nop              
  andl $0xffffffe0, %r11d                       #  17    0xd5520  7      OPC=andl_r32_imm32   
  nop                                           #  18    0xd5527  1      OPC=nop              
  nop                                           #  19    0xd5528  1      OPC=nop              
  nop                                           #  20    0xd5529  1      OPC=nop              
  nop                                           #  21    0xd552a  1      OPC=nop              
  addq %r15, %r11                               #  22    0xd552b  3      OPC=addq_r64_r64     
  jmpq %r11                                     #  23    0xd552e  3      OPC=jmpq_r64         
  nop                                           #  24    0xd5531  1      OPC=nop              
  nop                                           #  25    0xd5532  1      OPC=nop              
  nop                                           #  26    0xd5533  1      OPC=nop              
  nop                                           #  27    0xd5534  1      OPC=nop              
  nop                                           #  28    0xd5535  1      OPC=nop              
  nop                                           #  29    0xd5536  1      OPC=nop              
  nop                                           #  30    0xd5537  1      OPC=nop              
  nop                                           #  31    0xd5538  1      OPC=nop              
  nop                                           #  32    0xd5539  1      OPC=nop              
  nop                                           #  33    0xd553a  1      OPC=nop              
  nop                                           #  34    0xd553b  1      OPC=nop              
  nop                                           #  35    0xd553c  1      OPC=nop              
  nop                                           #  36    0xd553d  1      OPC=nop              
  nop                                           #  37    0xd553e  1      OPC=nop              
  nop                                           #  38    0xd553f  1      OPC=nop              
  nop                                           #  39    0xd5540  1      OPC=nop              
  nop                                           #  40    0xd5541  1      OPC=nop              
  nop                                           #  41    0xd5542  1      OPC=nop              
  nop                                           #  42    0xd5543  1      OPC=nop              
  nop                                           #  43    0xd5544  1      OPC=nop              
  nop                                           #  44    0xd5545  1      OPC=nop              
  nop                                           #  45    0xd5546  1      OPC=nop              
                                                                                              
.size _ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj, .-_ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj

