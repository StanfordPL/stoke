  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw, @function

#! file-offset 0x119740
#! rip-offset  0xd9740
#! capacity    96 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw:                #        0xd9740  0      OPC=<label>         
  movl %edi, %edi                                             #  1     0xd9740  2      OPC=movl_r32_r32    
  subl $0x8, %esp                                             #  2     0xd9742  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                             #  3     0xd9745  3      OPC=addq_r64_r64    
  movl %edx, %eax                                             #  4     0xd9748  2      OPC=movl_r32_r32    
  movl %edi, %edi                                             #  5     0xd974a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx                                    #  6     0xd974c  4      OPC=movl_r32_m32    
  subl $0xc, %edx                                             #  7     0xd9750  3      OPC=subl_r32_imm8   
  movl %edx, %edx                                             #  8     0xd9753  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx                                    #  9     0xd9755  4      OPC=movl_r32_m32    
  cmpl %edx, %esi                                             #  10    0xd9759  2      OPC=cmpl_r32_r32    
  nop                                                         #  11    0xd975b  1      OPC=nop             
  nop                                                         #  12    0xd975c  1      OPC=nop             
  nop                                                         #  13    0xd975d  1      OPC=nop             
  nop                                                         #  14    0xd975e  1      OPC=nop             
  nop                                                         #  15    0xd975f  1      OPC=nop             
  ja .L_d9780                                                 #  16    0xd9760  2      OPC=ja_label        
  subl %esi, %edx                                             #  17    0xd9762  2      OPC=subl_r32_r32    
  cmpl %eax, %edx                                             #  18    0xd9764  2      OPC=cmpl_r32_r32    
  cmoval %eax, %edx                                           #  19    0xd9766  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                                             #  20    0xd9769  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                             #  21    0xd976c  3      OPC=addq_r64_r64    
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw  #  22    0xd976f  5      OPC=jmpq_label_1    
  nop                                                         #  23    0xd9774  1      OPC=nop             
  nop                                                         #  24    0xd9775  1      OPC=nop             
  nop                                                         #  25    0xd9776  1      OPC=nop             
  nop                                                         #  26    0xd9777  1      OPC=nop             
  nop                                                         #  27    0xd9778  1      OPC=nop             
  nop                                                         #  28    0xd9779  1      OPC=nop             
  nop                                                         #  29    0xd977a  1      OPC=nop             
  nop                                                         #  30    0xd977b  1      OPC=nop             
  nop                                                         #  31    0xd977c  1      OPC=nop             
  nop                                                         #  32    0xd977d  1      OPC=nop             
  nop                                                         #  33    0xd977e  1      OPC=nop             
  nop                                                         #  34    0xd977f  1      OPC=nop             
.L_d9780:                                                     #        0xd9780  0      OPC=<label>         
  movl $0x1003bb5d, %edi                                      #  35    0xd9780  5      OPC=movl_r32_imm32  
  nop                                                         #  36    0xd9785  1      OPC=nop             
  nop                                                         #  37    0xd9786  1      OPC=nop             
  nop                                                         #  38    0xd9787  1      OPC=nop             
  nop                                                         #  39    0xd9788  1      OPC=nop             
  nop                                                         #  40    0xd9789  1      OPC=nop             
  nop                                                         #  41    0xd978a  1      OPC=nop             
  nop                                                         #  42    0xd978b  1      OPC=nop             
  nop                                                         #  43    0xd978c  1      OPC=nop             
  nop                                                         #  44    0xd978d  1      OPC=nop             
  nop                                                         #  45    0xd978e  1      OPC=nop             
  nop                                                         #  46    0xd978f  1      OPC=nop             
  nop                                                         #  47    0xd9790  1      OPC=nop             
  nop                                                         #  48    0xd9791  1      OPC=nop             
  nop                                                         #  49    0xd9792  1      OPC=nop             
  nop                                                         #  50    0xd9793  1      OPC=nop             
  nop                                                         #  51    0xd9794  1      OPC=nop             
  nop                                                         #  52    0xd9795  1      OPC=nop             
  nop                                                         #  53    0xd9796  1      OPC=nop             
  nop                                                         #  54    0xd9797  1      OPC=nop             
  nop                                                         #  55    0xd9798  1      OPC=nop             
  nop                                                         #  56    0xd9799  1      OPC=nop             
  nop                                                         #  57    0xd979a  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                        #  58    0xd979b  5      OPC=callq_label     
                                                                                                           
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjjw

