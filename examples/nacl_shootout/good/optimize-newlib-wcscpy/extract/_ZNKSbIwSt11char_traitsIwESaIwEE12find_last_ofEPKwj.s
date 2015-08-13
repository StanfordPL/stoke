  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwj, @function

#! file-offset 0x116460
#! rip-offset  0xd6460
#! capacity    128 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwj:         #        0xd6460  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                                      #  1     0xd6460  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                            #  2     0xd6465  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                                      #  3     0xd6468  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                                       #  4     0xd646d  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                             #  5     0xd6472  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                            #  6     0xd6474  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                             #  7     0xd6477  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                            #  8     0xd647a  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                            #  9     0xd647d  3      OPC=movl_r32_r32   
  nop                                                         #  10    0xd6480  1      OPC=nop            
  nop                                                         #  11    0xd6481  1      OPC=nop            
  nop                                                         #  12    0xd6482  1      OPC=nop            
  nop                                                         #  13    0xd6483  1      OPC=nop            
  nop                                                         #  14    0xd6484  1      OPC=nop            
  nop                                                         #  15    0xd6485  1      OPC=nop            
  nop                                                         #  16    0xd6486  1      OPC=nop            
  nop                                                         #  17    0xd6487  1      OPC=nop            
  nop                                                         #  18    0xd6488  1      OPC=nop            
  nop                                                         #  19    0xd6489  1      OPC=nop            
  nop                                                         #  20    0xd648a  1      OPC=nop            
  nop                                                         #  21    0xd648b  1      OPC=nop            
  nop                                                         #  22    0xd648c  1      OPC=nop            
  nop                                                         #  23    0xd648d  1      OPC=nop            
  nop                                                         #  24    0xd648e  1      OPC=nop            
  nop                                                         #  25    0xd648f  1      OPC=nop            
  nop                                                         #  26    0xd6490  1      OPC=nop            
  nop                                                         #  27    0xd6491  1      OPC=nop            
  nop                                                         #  28    0xd6492  1      OPC=nop            
  nop                                                         #  29    0xd6493  1      OPC=nop            
  nop                                                         #  30    0xd6494  1      OPC=nop            
  nop                                                         #  31    0xd6495  1      OPC=nop            
  nop                                                         #  32    0xd6496  1      OPC=nop            
  nop                                                         #  33    0xd6497  1      OPC=nop            
  nop                                                         #  34    0xd6498  1      OPC=nop            
  nop                                                         #  35    0xd6499  1      OPC=nop            
  nop                                                         #  36    0xd649a  1      OPC=nop            
  callq .wcslen                                               #  37    0xd649b  5      OPC=callq_label    
  movl %r13d, %edx                                            #  38    0xd64a0  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                            #  39    0xd64a3  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                             #  40    0xd64a6  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                                        #  41    0xd64a8  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                           #  42    0xd64ad  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                             #  43    0xd64b1  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                                       #  44    0xd64b3  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                            #  45    0xd64b8  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                             #  46    0xd64bb  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                              #  47    0xd64be  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwjj  #  48    0xd64c0  5      OPC=jmpq_label_1   
  nop                                                         #  49    0xd64c5  1      OPC=nop            
  nop                                                         #  50    0xd64c6  1      OPC=nop            
  nop                                                         #  51    0xd64c7  1      OPC=nop            
  nop                                                         #  52    0xd64c8  1      OPC=nop            
  nop                                                         #  53    0xd64c9  1      OPC=nop            
  nop                                                         #  54    0xd64ca  1      OPC=nop            
  nop                                                         #  55    0xd64cb  1      OPC=nop            
  nop                                                         #  56    0xd64cc  1      OPC=nop            
  nop                                                         #  57    0xd64cd  1      OPC=nop            
  nop                                                         #  58    0xd64ce  1      OPC=nop            
  nop                                                         #  59    0xd64cf  1      OPC=nop            
  nop                                                         #  60    0xd64d0  1      OPC=nop            
  nop                                                         #  61    0xd64d1  1      OPC=nop            
  nop                                                         #  62    0xd64d2  1      OPC=nop            
  nop                                                         #  63    0xd64d3  1      OPC=nop            
  nop                                                         #  64    0xd64d4  1      OPC=nop            
  nop                                                         #  65    0xd64d5  1      OPC=nop            
  nop                                                         #  66    0xd64d6  1      OPC=nop            
  nop                                                         #  67    0xd64d7  1      OPC=nop            
  nop                                                         #  68    0xd64d8  1      OPC=nop            
  nop                                                         #  69    0xd64d9  1      OPC=nop            
  nop                                                         #  70    0xd64da  1      OPC=nop            
  nop                                                         #  71    0xd64db  1      OPC=nop            
  nop                                                         #  72    0xd64dc  1      OPC=nop            
  nop                                                         #  73    0xd64dd  1      OPC=nop            
  nop                                                         #  74    0xd64de  1      OPC=nop            
  nop                                                         #  75    0xd64df  1      OPC=nop            
                                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwj

