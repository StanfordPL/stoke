  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj, @function

#! file-offset 0x1165e0
#! rip-offset  0xd65e0
#! capacity    128 bytes

# Text                                                         #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj:         #        0xd65e0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                                       #  1     0xd65e0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                             #  2     0xd65e5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                                       #  3     0xd65e8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                                        #  4     0xd65ed  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                              #  5     0xd65f2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                             #  6     0xd65f4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                              #  7     0xd65f7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                             #  8     0xd65fa  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                             #  9     0xd65fd  3      OPC=movl_r32_r32   
  nop                                                          #  10    0xd6600  1      OPC=nop            
  nop                                                          #  11    0xd6601  1      OPC=nop            
  nop                                                          #  12    0xd6602  1      OPC=nop            
  nop                                                          #  13    0xd6603  1      OPC=nop            
  nop                                                          #  14    0xd6604  1      OPC=nop            
  nop                                                          #  15    0xd6605  1      OPC=nop            
  nop                                                          #  16    0xd6606  1      OPC=nop            
  nop                                                          #  17    0xd6607  1      OPC=nop            
  nop                                                          #  18    0xd6608  1      OPC=nop            
  nop                                                          #  19    0xd6609  1      OPC=nop            
  nop                                                          #  20    0xd660a  1      OPC=nop            
  nop                                                          #  21    0xd660b  1      OPC=nop            
  nop                                                          #  22    0xd660c  1      OPC=nop            
  nop                                                          #  23    0xd660d  1      OPC=nop            
  nop                                                          #  24    0xd660e  1      OPC=nop            
  nop                                                          #  25    0xd660f  1      OPC=nop            
  nop                                                          #  26    0xd6610  1      OPC=nop            
  nop                                                          #  27    0xd6611  1      OPC=nop            
  nop                                                          #  28    0xd6612  1      OPC=nop            
  nop                                                          #  29    0xd6613  1      OPC=nop            
  nop                                                          #  30    0xd6614  1      OPC=nop            
  nop                                                          #  31    0xd6615  1      OPC=nop            
  nop                                                          #  32    0xd6616  1      OPC=nop            
  nop                                                          #  33    0xd6617  1      OPC=nop            
  nop                                                          #  34    0xd6618  1      OPC=nop            
  nop                                                          #  35    0xd6619  1      OPC=nop            
  nop                                                          #  36    0xd661a  1      OPC=nop            
  callq .wcslen                                                #  37    0xd661b  5      OPC=callq_label    
  movl %r13d, %edx                                             #  38    0xd6620  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                             #  39    0xd6623  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                              #  40    0xd6626  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                                         #  41    0xd6628  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                            #  42    0xd662d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                              #  43    0xd6631  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                                        #  44    0xd6633  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                             #  45    0xd6638  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                              #  46    0xd663b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                               #  47    0xd663e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwjj  #  48    0xd6640  5      OPC=jmpq_label_1   
  nop                                                          #  49    0xd6645  1      OPC=nop            
  nop                                                          #  50    0xd6646  1      OPC=nop            
  nop                                                          #  51    0xd6647  1      OPC=nop            
  nop                                                          #  52    0xd6648  1      OPC=nop            
  nop                                                          #  53    0xd6649  1      OPC=nop            
  nop                                                          #  54    0xd664a  1      OPC=nop            
  nop                                                          #  55    0xd664b  1      OPC=nop            
  nop                                                          #  56    0xd664c  1      OPC=nop            
  nop                                                          #  57    0xd664d  1      OPC=nop            
  nop                                                          #  58    0xd664e  1      OPC=nop            
  nop                                                          #  59    0xd664f  1      OPC=nop            
  nop                                                          #  60    0xd6650  1      OPC=nop            
  nop                                                          #  61    0xd6651  1      OPC=nop            
  nop                                                          #  62    0xd6652  1      OPC=nop            
  nop                                                          #  63    0xd6653  1      OPC=nop            
  nop                                                          #  64    0xd6654  1      OPC=nop            
  nop                                                          #  65    0xd6655  1      OPC=nop            
  nop                                                          #  66    0xd6656  1      OPC=nop            
  nop                                                          #  67    0xd6657  1      OPC=nop            
  nop                                                          #  68    0xd6658  1      OPC=nop            
  nop                                                          #  69    0xd6659  1      OPC=nop            
  nop                                                          #  70    0xd665a  1      OPC=nop            
  nop                                                          #  71    0xd665b  1      OPC=nop            
  nop                                                          #  72    0xd665c  1      OPC=nop            
  nop                                                          #  73    0xd665d  1      OPC=nop            
  nop                                                          #  74    0xd665e  1      OPC=nop            
  nop                                                          #  75    0xd665f  1      OPC=nop            
                                                                                                           
.size _ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE13find_first_ofEPKwj

