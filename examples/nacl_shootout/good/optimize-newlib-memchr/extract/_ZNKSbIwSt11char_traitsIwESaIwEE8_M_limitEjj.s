  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj, @function

#! file-offset 0x115c20
#! rip-offset  0xd5c20
#! capacity    64 bytes

# Text                                          #  Line  RIP      Bytes  Opcode               
._ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj:  #        0xd5c20  0      OPC=<label>          
  movl %edi, %edi                               #  1     0xd5c20  2      OPC=movl_r32_r32     
  movl %edi, %edi                               #  2     0xd5c22  2      OPC=movl_r32_r32     
  movl (%r15,%rdi,1), %eax                      #  3     0xd5c24  4      OPC=movl_r32_m32     
  popq %r11                                     #  4     0xd5c28  2      OPC=popq_r64_1       
  subl $0xc, %eax                               #  5     0xd5c2a  3      OPC=subl_r32_imm8    
  movl %eax, %eax                               #  6     0xd5c2d  2      OPC=movl_r32_r32     
  movl (%r15,%rax,1), %eax                      #  7     0xd5c2f  4      OPC=movl_r32_m32     
  subl %esi, %eax                               #  8     0xd5c33  2      OPC=subl_r32_r32     
  cmpl %eax, %edx                               #  9     0xd5c35  2      OPC=cmpl_r32_r32     
  cmovbel %edx, %eax                            #  10    0xd5c37  3      OPC=cmovbel_r32_r32  
  nop                                           #  11    0xd5c3a  1      OPC=nop              
  nop                                           #  12    0xd5c3b  1      OPC=nop              
  nop                                           #  13    0xd5c3c  1      OPC=nop              
  nop                                           #  14    0xd5c3d  1      OPC=nop              
  nop                                           #  15    0xd5c3e  1      OPC=nop              
  nop                                           #  16    0xd5c3f  1      OPC=nop              
  andl $0xffffffe0, %r11d                       #  17    0xd5c40  7      OPC=andl_r32_imm32   
  nop                                           #  18    0xd5c47  1      OPC=nop              
  nop                                           #  19    0xd5c48  1      OPC=nop              
  nop                                           #  20    0xd5c49  1      OPC=nop              
  nop                                           #  21    0xd5c4a  1      OPC=nop              
  addq %r15, %r11                               #  22    0xd5c4b  3      OPC=addq_r64_r64     
  jmpq %r11                                     #  23    0xd5c4e  3      OPC=jmpq_r64         
  nop                                           #  24    0xd5c51  1      OPC=nop              
  nop                                           #  25    0xd5c52  1      OPC=nop              
  nop                                           #  26    0xd5c53  1      OPC=nop              
  nop                                           #  27    0xd5c54  1      OPC=nop              
  nop                                           #  28    0xd5c55  1      OPC=nop              
  nop                                           #  29    0xd5c56  1      OPC=nop              
  nop                                           #  30    0xd5c57  1      OPC=nop              
  nop                                           #  31    0xd5c58  1      OPC=nop              
  nop                                           #  32    0xd5c59  1      OPC=nop              
  nop                                           #  33    0xd5c5a  1      OPC=nop              
  nop                                           #  34    0xd5c5b  1      OPC=nop              
  nop                                           #  35    0xd5c5c  1      OPC=nop              
  nop                                           #  36    0xd5c5d  1      OPC=nop              
  nop                                           #  37    0xd5c5e  1      OPC=nop              
  nop                                           #  38    0xd5c5f  1      OPC=nop              
  nop                                           #  39    0xd5c60  1      OPC=nop              
  nop                                           #  40    0xd5c61  1      OPC=nop              
  nop                                           #  41    0xd5c62  1      OPC=nop              
  nop                                           #  42    0xd5c63  1      OPC=nop              
  nop                                           #  43    0xd5c64  1      OPC=nop              
  nop                                           #  44    0xd5c65  1      OPC=nop              
  nop                                           #  45    0xd5c66  1      OPC=nop              
                                                                                              
.size _ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj, .-_ZNKSbIwSt11char_traitsIwESaIwEE8_M_limitEjj

