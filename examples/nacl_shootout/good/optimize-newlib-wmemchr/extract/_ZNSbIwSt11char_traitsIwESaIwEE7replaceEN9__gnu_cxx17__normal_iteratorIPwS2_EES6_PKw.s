  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw, @function

#! file-offset 0x11aae0
#! rip-offset  0xdaae0
#! capacity    128 bytes

# Text                                                                                  #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw:  #        0xdaae0  0      OPC=<label>        
  movq %r12, -0x18(%rsp)                                                                #  1     0xdaae0  5      OPC=movq_m64_r64   
  movl %ecx, %r12d                                                                      #  2     0xdaae5  3      OPC=movl_r32_r32   
  movq %rbx, -0x20(%rsp)                                                                #  3     0xdaae8  5      OPC=movq_m64_r64   
  movq %r13, -0x10(%rsp)                                                                #  4     0xdaaed  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                                                       #  5     0xdaaf2  2      OPC=movl_r32_r32   
  movq %r14, -0x8(%rsp)                                                                 #  6     0xdaaf4  5      OPC=movq_m64_r64   
  movl %r12d, %edi                                                                      #  7     0xdaaf9  3      OPC=movl_r32_r32   
  nop                                                                                   #  8     0xdaafc  1      OPC=nop            
  nop                                                                                   #  9     0xdaafd  1      OPC=nop            
  nop                                                                                   #  10    0xdaafe  1      OPC=nop            
  nop                                                                                   #  11    0xdaaff  1      OPC=nop            
  subl $0x28, %esp                                                                      #  12    0xdab00  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                                                       #  13    0xdab03  3      OPC=addq_r64_r64   
  movl %esi, %r14d                                                                      #  14    0xdab06  3      OPC=movl_r32_r32   
  movl %edx, %r13d                                                                      #  15    0xdab09  3      OPC=movl_r32_r32   
  nop                                                                                   #  16    0xdab0c  1      OPC=nop            
  nop                                                                                   #  17    0xdab0d  1      OPC=nop            
  nop                                                                                   #  18    0xdab0e  1      OPC=nop            
  nop                                                                                   #  19    0xdab0f  1      OPC=nop            
  nop                                                                                   #  20    0xdab10  1      OPC=nop            
  nop                                                                                   #  21    0xdab11  1      OPC=nop            
  nop                                                                                   #  22    0xdab12  1      OPC=nop            
  nop                                                                                   #  23    0xdab13  1      OPC=nop            
  nop                                                                                   #  24    0xdab14  1      OPC=nop            
  nop                                                                                   #  25    0xdab15  1      OPC=nop            
  nop                                                                                   #  26    0xdab16  1      OPC=nop            
  nop                                                                                   #  27    0xdab17  1      OPC=nop            
  nop                                                                                   #  28    0xdab18  1      OPC=nop            
  nop                                                                                   #  29    0xdab19  1      OPC=nop            
  nop                                                                                   #  30    0xdab1a  1      OPC=nop            
  callq .wcslen                                                                         #  31    0xdab1b  5      OPC=callq_label    
  movl %r14d, %esi                                                                      #  32    0xdab20  3      OPC=movl_r32_r32   
  movl %ebx, %ebx                                                                       #  33    0xdab23  2      OPC=movl_r32_r32   
  subl (%r15,%rbx,1), %esi                                                              #  34    0xdab25  4      OPC=subl_r32_m32   
  movl %r13d, %edx                                                                      #  35    0xdab29  3      OPC=movl_r32_r32   
  subl %r14d, %edx                                                                      #  36    0xdab2c  3      OPC=subl_r32_r32   
  movl %r12d, %ecx                                                                      #  37    0xdab2f  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                                                       #  38    0xdab32  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                                                                 #  39    0xdab34  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                                                                  #  40    0xdab39  5      OPC=movq_r64_m64   
  xchgw %ax, %ax                                                                        #  41    0xdab3e  2      OPC=xchgw_ax_r16   
  movl %eax, %r8d                                                                       #  42    0xdab40  3      OPC=movl_r32_r32   
  movq 0x18(%rsp), %r13                                                                 #  43    0xdab43  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14                                                                 #  44    0xdab48  5      OPC=movq_r64_m64   
  sarl $0x2, %edx                                                                       #  45    0xdab4d  3      OPC=sarl_r32_imm8  
  sarl $0x2, %esi                                                                       #  46    0xdab50  3      OPC=sarl_r32_imm8  
  addl $0x28, %esp                                                                      #  47    0xdab53  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                                                       #  48    0xdab56  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj                                  #  49    0xdab59  5      OPC=jmpq_label_1   
  nop                                                                                   #  50    0xdab5e  1      OPC=nop            
  nop                                                                                   #  51    0xdab5f  1      OPC=nop            
                                                                                                                                    
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw

