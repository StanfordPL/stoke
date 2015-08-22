  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj, @function

#! file-offset 0x117000
#! rip-offset  0xd7000
#! capacity    128 bytes

# Text                                                         #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj:         #        0xd7000  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                                       #  1     0xd7000  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                             #  2     0xd7005  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                                       #  3     0xd7008  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                                        #  4     0xd700d  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                              #  5     0xd7012  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                             #  6     0xd7014  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                              #  7     0xd7017  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                             #  8     0xd701a  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                             #  9     0xd701d  3      OPC=movl_r32_r32   
  nop                                                          #  10    0xd7020  1      OPC=nop            
  nop                                                          #  11    0xd7021  1      OPC=nop            
  nop                                                          #  12    0xd7022  1      OPC=nop            
  nop                                                          #  13    0xd7023  1      OPC=nop            
  nop                                                          #  14    0xd7024  1      OPC=nop            
  nop                                                          #  15    0xd7025  1      OPC=nop            
  nop                                                          #  16    0xd7026  1      OPC=nop            
  nop                                                          #  17    0xd7027  1      OPC=nop            
  nop                                                          #  18    0xd7028  1      OPC=nop            
  nop                                                          #  19    0xd7029  1      OPC=nop            
  nop                                                          #  20    0xd702a  1      OPC=nop            
  nop                                                          #  21    0xd702b  1      OPC=nop            
  nop                                                          #  22    0xd702c  1      OPC=nop            
  nop                                                          #  23    0xd702d  1      OPC=nop            
  nop                                                          #  24    0xd702e  1      OPC=nop            
  nop                                                          #  25    0xd702f  1      OPC=nop            
  nop                                                          #  26    0xd7030  1      OPC=nop            
  nop                                                          #  27    0xd7031  1      OPC=nop            
  nop                                                          #  28    0xd7032  1      OPC=nop            
  nop                                                          #  29    0xd7033  1      OPC=nop            
  nop                                                          #  30    0xd7034  1      OPC=nop            
  nop                                                          #  31    0xd7035  1      OPC=nop            
  nop                                                          #  32    0xd7036  1      OPC=nop            
  nop                                                          #  33    0xd7037  1      OPC=nop            
  nop                                                          #  34    0xd7038  1      OPC=nop            
  nop                                                          #  35    0xd7039  1      OPC=nop            
  nop                                                          #  36    0xd703a  1      OPC=nop            
  callq .wcslen                                                #  37    0xd703b  5      OPC=callq_label    
  movl %r13d, %edx                                             #  38    0xd7040  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                             #  39    0xd7043  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                              #  40    0xd7046  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                                         #  41    0xd7048  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                            #  42    0xd704d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                              #  43    0xd7051  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                                        #  44    0xd7053  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                             #  45    0xd7058  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                              #  46    0xd705b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                               #  47    0xd705e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwjj  #  48    0xd7060  5      OPC=jmpq_label_1   
  nop                                                          #  49    0xd7065  1      OPC=nop            
  nop                                                          #  50    0xd7066  1      OPC=nop            
  nop                                                          #  51    0xd7067  1      OPC=nop            
  nop                                                          #  52    0xd7068  1      OPC=nop            
  nop                                                          #  53    0xd7069  1      OPC=nop            
  nop                                                          #  54    0xd706a  1      OPC=nop            
  nop                                                          #  55    0xd706b  1      OPC=nop            
  nop                                                          #  56    0xd706c  1      OPC=nop            
  nop                                                          #  57    0xd706d  1      OPC=nop            
  nop                                                          #  58    0xd706e  1      OPC=nop            
  nop                                                          #  59    0xd706f  1      OPC=nop            
  nop                                                          #  60    0xd7070  1      OPC=nop            
  nop                                                          #  61    0xd7071  1      OPC=nop            
  nop                                                          #  62    0xd7072  1      OPC=nop            
  nop                                                          #  63    0xd7073  1      OPC=nop            
  nop                                                          #  64    0xd7074  1      OPC=nop            
  nop                                                          #  65    0xd7075  1      OPC=nop            
  nop                                                          #  66    0xd7076  1      OPC=nop            
  nop                                                          #  67    0xd7077  1      OPC=nop            
  nop                                                          #  68    0xd7078  1      OPC=nop            
  nop                                                          #  69    0xd7079  1      OPC=nop            
  nop                                                          #  70    0xd707a  1      OPC=nop            
  nop                                                          #  71    0xd707b  1      OPC=nop            
  nop                                                          #  72    0xd707c  1      OPC=nop            
  nop                                                          #  73    0xd707d  1      OPC=nop            
  nop                                                          #  74    0xd707e  1      OPC=nop            
  nop                                                          #  75    0xd707f  1      OPC=nop            
                                                                                                           
.size _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj

