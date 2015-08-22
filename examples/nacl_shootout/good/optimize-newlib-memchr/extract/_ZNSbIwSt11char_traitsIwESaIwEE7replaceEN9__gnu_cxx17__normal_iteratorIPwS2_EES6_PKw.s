  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw, @function

#! file-offset 0x11b200
#! rip-offset  0xdb200
#! capacity    128 bytes

# Text                                                                                  #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw:  #        0xdb200  0      OPC=<label>        
  movq %r12, -0x18(%rsp)                                                                #  1     0xdb200  5      OPC=movq_m64_r64   
  movl %ecx, %r12d                                                                      #  2     0xdb205  3      OPC=movl_r32_r32   
  movq %rbx, -0x20(%rsp)                                                                #  3     0xdb208  5      OPC=movq_m64_r64   
  movq %r13, -0x10(%rsp)                                                                #  4     0xdb20d  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                                                       #  5     0xdb212  2      OPC=movl_r32_r32   
  movq %r14, -0x8(%rsp)                                                                 #  6     0xdb214  5      OPC=movq_m64_r64   
  movl %r12d, %edi                                                                      #  7     0xdb219  3      OPC=movl_r32_r32   
  nop                                                                                   #  8     0xdb21c  1      OPC=nop            
  nop                                                                                   #  9     0xdb21d  1      OPC=nop            
  nop                                                                                   #  10    0xdb21e  1      OPC=nop            
  nop                                                                                   #  11    0xdb21f  1      OPC=nop            
  subl $0x28, %esp                                                                      #  12    0xdb220  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                                                       #  13    0xdb223  3      OPC=addq_r64_r64   
  movl %esi, %r14d                                                                      #  14    0xdb226  3      OPC=movl_r32_r32   
  movl %edx, %r13d                                                                      #  15    0xdb229  3      OPC=movl_r32_r32   
  nop                                                                                   #  16    0xdb22c  1      OPC=nop            
  nop                                                                                   #  17    0xdb22d  1      OPC=nop            
  nop                                                                                   #  18    0xdb22e  1      OPC=nop            
  nop                                                                                   #  19    0xdb22f  1      OPC=nop            
  nop                                                                                   #  20    0xdb230  1      OPC=nop            
  nop                                                                                   #  21    0xdb231  1      OPC=nop            
  nop                                                                                   #  22    0xdb232  1      OPC=nop            
  nop                                                                                   #  23    0xdb233  1      OPC=nop            
  nop                                                                                   #  24    0xdb234  1      OPC=nop            
  nop                                                                                   #  25    0xdb235  1      OPC=nop            
  nop                                                                                   #  26    0xdb236  1      OPC=nop            
  nop                                                                                   #  27    0xdb237  1      OPC=nop            
  nop                                                                                   #  28    0xdb238  1      OPC=nop            
  nop                                                                                   #  29    0xdb239  1      OPC=nop            
  nop                                                                                   #  30    0xdb23a  1      OPC=nop            
  callq .wcslen                                                                         #  31    0xdb23b  5      OPC=callq_label    
  movl %r14d, %esi                                                                      #  32    0xdb240  3      OPC=movl_r32_r32   
  movl %ebx, %ebx                                                                       #  33    0xdb243  2      OPC=movl_r32_r32   
  subl (%r15,%rbx,1), %esi                                                              #  34    0xdb245  4      OPC=subl_r32_m32   
  movl %r13d, %edx                                                                      #  35    0xdb249  3      OPC=movl_r32_r32   
  subl %r14d, %edx                                                                      #  36    0xdb24c  3      OPC=subl_r32_r32   
  movl %r12d, %ecx                                                                      #  37    0xdb24f  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                                                       #  38    0xdb252  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                                                                 #  39    0xdb254  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                                                                  #  40    0xdb259  5      OPC=movq_r64_m64   
  xchgw %ax, %ax                                                                        #  41    0xdb25e  2      OPC=xchgw_ax_r16   
  movl %eax, %r8d                                                                       #  42    0xdb260  3      OPC=movl_r32_r32   
  movq 0x18(%rsp), %r13                                                                 #  43    0xdb263  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14                                                                 #  44    0xdb268  5      OPC=movq_r64_m64   
  sarl $0x2, %edx                                                                       #  45    0xdb26d  3      OPC=sarl_r32_imm8  
  sarl $0x2, %esi                                                                       #  46    0xdb270  3      OPC=sarl_r32_imm8  
  addl $0x28, %esp                                                                      #  47    0xdb273  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                                                       #  48    0xdb276  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj                                  #  49    0xdb279  5      OPC=jmpq_label_1   
  nop                                                                                   #  50    0xdb27e  1      OPC=nop            
  nop                                                                                   #  51    0xdb27f  1      OPC=nop            
                                                                                                                                    
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw

