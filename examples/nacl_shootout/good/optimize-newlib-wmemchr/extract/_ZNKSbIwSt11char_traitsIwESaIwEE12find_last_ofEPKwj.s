  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwj, @function

#! file-offset 0x116760
#! rip-offset  0xd6760
#! capacity    128 bytes

# Text                                                        #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwj:         #        0xd6760  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                                      #  1     0xd6760  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                            #  2     0xd6765  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                                      #  3     0xd6768  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                                       #  4     0xd676d  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                             #  5     0xd6772  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                            #  6     0xd6774  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                             #  7     0xd6777  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                            #  8     0xd677a  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                            #  9     0xd677d  3      OPC=movl_r32_r32   
  nop                                                         #  10    0xd6780  1      OPC=nop            
  nop                                                         #  11    0xd6781  1      OPC=nop            
  nop                                                         #  12    0xd6782  1      OPC=nop            
  nop                                                         #  13    0xd6783  1      OPC=nop            
  nop                                                         #  14    0xd6784  1      OPC=nop            
  nop                                                         #  15    0xd6785  1      OPC=nop            
  nop                                                         #  16    0xd6786  1      OPC=nop            
  nop                                                         #  17    0xd6787  1      OPC=nop            
  nop                                                         #  18    0xd6788  1      OPC=nop            
  nop                                                         #  19    0xd6789  1      OPC=nop            
  nop                                                         #  20    0xd678a  1      OPC=nop            
  nop                                                         #  21    0xd678b  1      OPC=nop            
  nop                                                         #  22    0xd678c  1      OPC=nop            
  nop                                                         #  23    0xd678d  1      OPC=nop            
  nop                                                         #  24    0xd678e  1      OPC=nop            
  nop                                                         #  25    0xd678f  1      OPC=nop            
  nop                                                         #  26    0xd6790  1      OPC=nop            
  nop                                                         #  27    0xd6791  1      OPC=nop            
  nop                                                         #  28    0xd6792  1      OPC=nop            
  nop                                                         #  29    0xd6793  1      OPC=nop            
  nop                                                         #  30    0xd6794  1      OPC=nop            
  nop                                                         #  31    0xd6795  1      OPC=nop            
  nop                                                         #  32    0xd6796  1      OPC=nop            
  nop                                                         #  33    0xd6797  1      OPC=nop            
  nop                                                         #  34    0xd6798  1      OPC=nop            
  nop                                                         #  35    0xd6799  1      OPC=nop            
  nop                                                         #  36    0xd679a  1      OPC=nop            
  callq .wcslen                                               #  37    0xd679b  5      OPC=callq_label    
  movl %r13d, %edx                                            #  38    0xd67a0  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                            #  39    0xd67a3  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                             #  40    0xd67a6  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                                        #  41    0xd67a8  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                           #  42    0xd67ad  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                             #  43    0xd67b1  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                                       #  44    0xd67b3  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                            #  45    0xd67b8  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                             #  46    0xd67bb  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                              #  47    0xd67be  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwjj  #  48    0xd67c0  5      OPC=jmpq_label_1   
  nop                                                         #  49    0xd67c5  1      OPC=nop            
  nop                                                         #  50    0xd67c6  1      OPC=nop            
  nop                                                         #  51    0xd67c7  1      OPC=nop            
  nop                                                         #  52    0xd67c8  1      OPC=nop            
  nop                                                         #  53    0xd67c9  1      OPC=nop            
  nop                                                         #  54    0xd67ca  1      OPC=nop            
  nop                                                         #  55    0xd67cb  1      OPC=nop            
  nop                                                         #  56    0xd67cc  1      OPC=nop            
  nop                                                         #  57    0xd67cd  1      OPC=nop            
  nop                                                         #  58    0xd67ce  1      OPC=nop            
  nop                                                         #  59    0xd67cf  1      OPC=nop            
  nop                                                         #  60    0xd67d0  1      OPC=nop            
  nop                                                         #  61    0xd67d1  1      OPC=nop            
  nop                                                         #  62    0xd67d2  1      OPC=nop            
  nop                                                         #  63    0xd67d3  1      OPC=nop            
  nop                                                         #  64    0xd67d4  1      OPC=nop            
  nop                                                         #  65    0xd67d5  1      OPC=nop            
  nop                                                         #  66    0xd67d6  1      OPC=nop            
  nop                                                         #  67    0xd67d7  1      OPC=nop            
  nop                                                         #  68    0xd67d8  1      OPC=nop            
  nop                                                         #  69    0xd67d9  1      OPC=nop            
  nop                                                         #  70    0xd67da  1      OPC=nop            
  nop                                                         #  71    0xd67db  1      OPC=nop            
  nop                                                         #  72    0xd67dc  1      OPC=nop            
  nop                                                         #  73    0xd67dd  1      OPC=nop            
  nop                                                         #  74    0xd67de  1      OPC=nop            
  nop                                                         #  75    0xd67df  1      OPC=nop            
                                                                                                          
.size _ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE12find_last_ofEPKwj

