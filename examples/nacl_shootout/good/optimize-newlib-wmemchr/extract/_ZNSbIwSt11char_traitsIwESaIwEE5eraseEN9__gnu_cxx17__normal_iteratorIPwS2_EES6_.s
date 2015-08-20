  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_, @function

#! file-offset 0x119c20
#! rip-offset  0xd9c20
#! capacity    128 bytes

# Text                                                                             #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_:  #        0xd9c20  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                            #  1     0xd9c20  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                                 #  2     0xd9c25  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                           #  3     0xd9c28  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                 #  4     0xd9c2d  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                  #  5     0xd9c30  3      OPC=addq_r64_r64    
  movl %esi, %ebx                                                                  #  6     0xd9c33  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                                                #  7     0xd9c35  3      OPC=movl_r32_r32    
  subl (%r15,%r12,1), %ebx                                                         #  8     0xd9c38  4      OPC=subl_r32_m32    
  subl %esi, %edx                                                                  #  9     0xd9c3c  2      OPC=subl_r32_r32    
  xchgw %ax, %ax                                                                   #  10    0xd9c3e  2      OPC=xchgw_ax_r16    
  movl %r12d, %edi                                                                 #  11    0xd9c40  3      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                                                  #  12    0xd9c43  2      OPC=xorl_r32_r32    
  sarl $0x2, %edx                                                                  #  13    0xd9c45  3      OPC=sarl_r32_imm8   
  sarl $0x2, %ebx                                                                  #  14    0xd9c48  3      OPC=sarl_r32_imm8   
  movl %ebx, %esi                                                                  #  15    0xd9c4b  2      OPC=movl_r32_r32    
  nop                                                                              #  16    0xd9c4d  1      OPC=nop             
  nop                                                                              #  17    0xd9c4e  1      OPC=nop             
  nop                                                                              #  18    0xd9c4f  1      OPC=nop             
  nop                                                                              #  19    0xd9c50  1      OPC=nop             
  nop                                                                              #  20    0xd9c51  1      OPC=nop             
  nop                                                                              #  21    0xd9c52  1      OPC=nop             
  nop                                                                              #  22    0xd9c53  1      OPC=nop             
  nop                                                                              #  23    0xd9c54  1      OPC=nop             
  nop                                                                              #  24    0xd9c55  1      OPC=nop             
  nop                                                                              #  25    0xd9c56  1      OPC=nop             
  nop                                                                              #  26    0xd9c57  1      OPC=nop             
  nop                                                                              #  27    0xd9c58  1      OPC=nop             
  nop                                                                              #  28    0xd9c59  1      OPC=nop             
  nop                                                                              #  29    0xd9c5a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj                             #  30    0xd9c5b  5      OPC=callq_label     
  movl %r12d, %r12d                                                                #  31    0xd9c60  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                                                         #  32    0xd9c63  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                                            #  33    0xd9c67  3      OPC=leal_r32_m16    
  leal (%rax,%rbx,4), %eax                                                         #  34    0xd9c6a  3      OPC=leal_r32_m16    
  movl %edx, %edx                                                                  #  35    0xd9c6d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                               #  36    0xd9c6f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                                             #  37    0xd9c78  5      OPC=movq_r64_m64    
  nop                                                                              #  38    0xd9c7d  1      OPC=nop             
  nop                                                                              #  39    0xd9c7e  1      OPC=nop             
  nop                                                                              #  40    0xd9c7f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                                            #  41    0xd9c80  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                 #  42    0xd9c85  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                  #  43    0xd9c88  3      OPC=addq_r64_r64    
  popq %r11                                                                        #  44    0xd9c8b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                          #  45    0xd9c8d  7      OPC=andl_r32_imm32  
  nop                                                                              #  46    0xd9c94  1      OPC=nop             
  nop                                                                              #  47    0xd9c95  1      OPC=nop             
  nop                                                                              #  48    0xd9c96  1      OPC=nop             
  nop                                                                              #  49    0xd9c97  1      OPC=nop             
  addq %r15, %r11                                                                  #  50    0xd9c98  3      OPC=addq_r64_r64    
  jmpq %r11                                                                        #  51    0xd9c9b  3      OPC=jmpq_r64        
  nop                                                                              #  52    0xd9c9e  1      OPC=nop             
  nop                                                                              #  53    0xd9c9f  1      OPC=nop             
  nop                                                                              #  54    0xd9ca0  1      OPC=nop             
  nop                                                                              #  55    0xd9ca1  1      OPC=nop             
  nop                                                                              #  56    0xd9ca2  1      OPC=nop             
  nop                                                                              #  57    0xd9ca3  1      OPC=nop             
  nop                                                                              #  58    0xd9ca4  1      OPC=nop             
  nop                                                                              #  59    0xd9ca5  1      OPC=nop             
  nop                                                                              #  60    0xd9ca6  1      OPC=nop             
                                                                                                                                
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EES6_

