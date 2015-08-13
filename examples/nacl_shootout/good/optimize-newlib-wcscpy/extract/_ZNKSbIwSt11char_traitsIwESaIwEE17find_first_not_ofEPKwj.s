  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwj, @function

#! file-offset 0x1162c0
#! rip-offset  0xd62c0
#! capacity    128 bytes

# Text                                                             #  Line  RIP      Bytes  Opcode             
._ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwj:         #        0xd62c0  0      OPC=<label>        
  movq %r12, -0x10(%rsp)                                           #  1     0xd62c0  5      OPC=movq_m64_r64   
  movl %esi, %r12d                                                 #  2     0xd62c5  3      OPC=movl_r32_r32   
  movq %rbx, -0x18(%rsp)                                           #  3     0xd62c8  5      OPC=movq_m64_r64   
  movq %r13, -0x8(%rsp)                                            #  4     0xd62cd  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                                  #  5     0xd62d2  2      OPC=movl_r32_r32   
  subl $0x18, %esp                                                 #  6     0xd62d4  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                                  #  7     0xd62d7  3      OPC=addq_r64_r64   
  movl %edx, %r13d                                                 #  8     0xd62da  3      OPC=movl_r32_r32   
  movl %r12d, %edi                                                 #  9     0xd62dd  3      OPC=movl_r32_r32   
  nop                                                              #  10    0xd62e0  1      OPC=nop            
  nop                                                              #  11    0xd62e1  1      OPC=nop            
  nop                                                              #  12    0xd62e2  1      OPC=nop            
  nop                                                              #  13    0xd62e3  1      OPC=nop            
  nop                                                              #  14    0xd62e4  1      OPC=nop            
  nop                                                              #  15    0xd62e5  1      OPC=nop            
  nop                                                              #  16    0xd62e6  1      OPC=nop            
  nop                                                              #  17    0xd62e7  1      OPC=nop            
  nop                                                              #  18    0xd62e8  1      OPC=nop            
  nop                                                              #  19    0xd62e9  1      OPC=nop            
  nop                                                              #  20    0xd62ea  1      OPC=nop            
  nop                                                              #  21    0xd62eb  1      OPC=nop            
  nop                                                              #  22    0xd62ec  1      OPC=nop            
  nop                                                              #  23    0xd62ed  1      OPC=nop            
  nop                                                              #  24    0xd62ee  1      OPC=nop            
  nop                                                              #  25    0xd62ef  1      OPC=nop            
  nop                                                              #  26    0xd62f0  1      OPC=nop            
  nop                                                              #  27    0xd62f1  1      OPC=nop            
  nop                                                              #  28    0xd62f2  1      OPC=nop            
  nop                                                              #  29    0xd62f3  1      OPC=nop            
  nop                                                              #  30    0xd62f4  1      OPC=nop            
  nop                                                              #  31    0xd62f5  1      OPC=nop            
  nop                                                              #  32    0xd62f6  1      OPC=nop            
  nop                                                              #  33    0xd62f7  1      OPC=nop            
  nop                                                              #  34    0xd62f8  1      OPC=nop            
  nop                                                              #  35    0xd62f9  1      OPC=nop            
  nop                                                              #  36    0xd62fa  1      OPC=nop            
  callq .wcslen                                                    #  37    0xd62fb  5      OPC=callq_label    
  movl %r13d, %edx                                                 #  38    0xd6300  3      OPC=movl_r32_r32   
  movl %r12d, %esi                                                 #  39    0xd6303  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                                  #  40    0xd6306  2      OPC=movl_r32_r32   
  movq 0x8(%rsp), %r12                                             #  41    0xd6308  5      OPC=movq_r64_m64   
  movq (%rsp), %rbx                                                #  42    0xd630d  4      OPC=movq_r64_m64   
  movl %eax, %ecx                                                  #  43    0xd6311  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r13                                            #  44    0xd6313  5      OPC=movq_r64_m64   
  addl $0x18, %esp                                                 #  45    0xd6318  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                                  #  46    0xd631b  3      OPC=addq_r64_r64   
  xchgw %ax, %ax                                                   #  47    0xd631e  2      OPC=xchgw_ax_r16   
  jmpq ._ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwjj  #  48    0xd6320  5      OPC=jmpq_label_1   
  nop                                                              #  49    0xd6325  1      OPC=nop            
  nop                                                              #  50    0xd6326  1      OPC=nop            
  nop                                                              #  51    0xd6327  1      OPC=nop            
  nop                                                              #  52    0xd6328  1      OPC=nop            
  nop                                                              #  53    0xd6329  1      OPC=nop            
  nop                                                              #  54    0xd632a  1      OPC=nop            
  nop                                                              #  55    0xd632b  1      OPC=nop            
  nop                                                              #  56    0xd632c  1      OPC=nop            
  nop                                                              #  57    0xd632d  1      OPC=nop            
  nop                                                              #  58    0xd632e  1      OPC=nop            
  nop                                                              #  59    0xd632f  1      OPC=nop            
  nop                                                              #  60    0xd6330  1      OPC=nop            
  nop                                                              #  61    0xd6331  1      OPC=nop            
  nop                                                              #  62    0xd6332  1      OPC=nop            
  nop                                                              #  63    0xd6333  1      OPC=nop            
  nop                                                              #  64    0xd6334  1      OPC=nop            
  nop                                                              #  65    0xd6335  1      OPC=nop            
  nop                                                              #  66    0xd6336  1      OPC=nop            
  nop                                                              #  67    0xd6337  1      OPC=nop            
  nop                                                              #  68    0xd6338  1      OPC=nop            
  nop                                                              #  69    0xd6339  1      OPC=nop            
  nop                                                              #  70    0xd633a  1      OPC=nop            
  nop                                                              #  71    0xd633b  1      OPC=nop            
  nop                                                              #  72    0xd633c  1      OPC=nop            
  nop                                                              #  73    0xd633d  1      OPC=nop            
  nop                                                              #  74    0xd633e  1      OPC=nop            
  nop                                                              #  75    0xd633f  1      OPC=nop            
                                                                                                               
.size _ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE17find_first_not_ofEPKwj

