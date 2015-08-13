  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw
  .type _ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw, @function

#! file-offset 0x11a7e0
#! rip-offset  0xda7e0
#! capacity    128 bytes

# Text                                                                                  #  Line  RIP      Bytes  Opcode             
._ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw:  #        0xda7e0  0      OPC=<label>        
  movq %r12, -0x18(%rsp)                                                                #  1     0xda7e0  5      OPC=movq_m64_r64   
  movl %ecx, %r12d                                                                      #  2     0xda7e5  3      OPC=movl_r32_r32   
  movq %rbx, -0x20(%rsp)                                                                #  3     0xda7e8  5      OPC=movq_m64_r64   
  movq %r13, -0x10(%rsp)                                                                #  4     0xda7ed  5      OPC=movq_m64_r64   
  movl %edi, %ebx                                                                       #  5     0xda7f2  2      OPC=movl_r32_r32   
  movq %r14, -0x8(%rsp)                                                                 #  6     0xda7f4  5      OPC=movq_m64_r64   
  movl %r12d, %edi                                                                      #  7     0xda7f9  3      OPC=movl_r32_r32   
  nop                                                                                   #  8     0xda7fc  1      OPC=nop            
  nop                                                                                   #  9     0xda7fd  1      OPC=nop            
  nop                                                                                   #  10    0xda7fe  1      OPC=nop            
  nop                                                                                   #  11    0xda7ff  1      OPC=nop            
  subl $0x28, %esp                                                                      #  12    0xda800  3      OPC=subl_r32_imm8  
  addq %r15, %rsp                                                                       #  13    0xda803  3      OPC=addq_r64_r64   
  movl %esi, %r14d                                                                      #  14    0xda806  3      OPC=movl_r32_r32   
  movl %edx, %r13d                                                                      #  15    0xda809  3      OPC=movl_r32_r32   
  nop                                                                                   #  16    0xda80c  1      OPC=nop            
  nop                                                                                   #  17    0xda80d  1      OPC=nop            
  nop                                                                                   #  18    0xda80e  1      OPC=nop            
  nop                                                                                   #  19    0xda80f  1      OPC=nop            
  nop                                                                                   #  20    0xda810  1      OPC=nop            
  nop                                                                                   #  21    0xda811  1      OPC=nop            
  nop                                                                                   #  22    0xda812  1      OPC=nop            
  nop                                                                                   #  23    0xda813  1      OPC=nop            
  nop                                                                                   #  24    0xda814  1      OPC=nop            
  nop                                                                                   #  25    0xda815  1      OPC=nop            
  nop                                                                                   #  26    0xda816  1      OPC=nop            
  nop                                                                                   #  27    0xda817  1      OPC=nop            
  nop                                                                                   #  28    0xda818  1      OPC=nop            
  nop                                                                                   #  29    0xda819  1      OPC=nop            
  nop                                                                                   #  30    0xda81a  1      OPC=nop            
  callq .wcslen                                                                         #  31    0xda81b  5      OPC=callq_label    
  movl %r14d, %esi                                                                      #  32    0xda820  3      OPC=movl_r32_r32   
  movl %ebx, %ebx                                                                       #  33    0xda823  2      OPC=movl_r32_r32   
  subl (%r15,%rbx,1), %esi                                                              #  34    0xda825  4      OPC=subl_r32_m32   
  movl %r13d, %edx                                                                      #  35    0xda829  3      OPC=movl_r32_r32   
  subl %r14d, %edx                                                                      #  36    0xda82c  3      OPC=subl_r32_r32   
  movl %r12d, %ecx                                                                      #  37    0xda82f  3      OPC=movl_r32_r32   
  movl %ebx, %edi                                                                       #  38    0xda832  2      OPC=movl_r32_r32   
  movq 0x10(%rsp), %r12                                                                 #  39    0xda834  5      OPC=movq_r64_m64   
  movq 0x8(%rsp), %rbx                                                                  #  40    0xda839  5      OPC=movq_r64_m64   
  xchgw %ax, %ax                                                                        #  41    0xda83e  2      OPC=xchgw_ax_r16   
  movl %eax, %r8d                                                                       #  42    0xda840  3      OPC=movl_r32_r32   
  movq 0x18(%rsp), %r13                                                                 #  43    0xda843  5      OPC=movq_r64_m64   
  movq 0x20(%rsp), %r14                                                                 #  44    0xda848  5      OPC=movq_r64_m64   
  sarl $0x2, %edx                                                                       #  45    0xda84d  3      OPC=sarl_r32_imm8  
  sarl $0x2, %esi                                                                       #  46    0xda850  3      OPC=sarl_r32_imm8  
  addl $0x28, %esp                                                                      #  47    0xda853  3      OPC=addl_r32_imm8  
  addq %r15, %rsp                                                                       #  48    0xda856  3      OPC=addq_r64_r64   
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE7replaceEjjPKwj                                  #  49    0xda859  5      OPC=jmpq_label_1   
  nop                                                                                   #  50    0xda85e  1      OPC=nop            
  nop                                                                                   #  51    0xda85f  1      OPC=nop            
                                                                                                                                    
.size _ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw, .-_ZNSbIwSt11char_traitsIwESaIwEE7replaceEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_PKw

