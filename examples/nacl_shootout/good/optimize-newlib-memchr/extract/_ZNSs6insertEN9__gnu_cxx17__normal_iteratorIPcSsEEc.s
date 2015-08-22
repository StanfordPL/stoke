  .text
  .globl _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc
  .type _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, @function

#! file-offset 0xef0e0
#! rip-offset  0xaf0e0
#! capacity    128 bytes

# Text                                                 #  Line  RIP      Bytes  Opcode              
._ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc:  #        0xaf0e0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                               #  1     0xaf0e0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                      #  2     0xaf0e5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                #  3     0xaf0e7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                     #  4     0xaf0ec  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                      #  5     0xaf0ef  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                     #  6     0xaf0f2  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                      #  7     0xaf0f5  2      OPC=movl_r32_r32    
  subl (%r15,%rbx,1), %r12d                            #  8     0xaf0f7  4      OPC=subl_r32_m32    
  movsbl %dl, %r8d                                     #  9     0xaf0fb  4      OPC=movsbl_r32_r8   
  nop                                                  #  10    0xaf0ff  1      OPC=nop             
  movl %ebx, %edi                                      #  11    0xaf100  2      OPC=movl_r32_r32    
  xorl %edx, %edx                                      #  12    0xaf102  2      OPC=xorl_r32_r32    
  movl $0x1, %ecx                                      #  13    0xaf104  5      OPC=movl_r32_imm32  
  movl %r12d, %esi                                     #  14    0xaf109  3      OPC=movl_r32_r32    
  nop                                                  #  15    0xaf10c  1      OPC=nop             
  nop                                                  #  16    0xaf10d  1      OPC=nop             
  nop                                                  #  17    0xaf10e  1      OPC=nop             
  nop                                                  #  18    0xaf10f  1      OPC=nop             
  nop                                                  #  19    0xaf110  1      OPC=nop             
  nop                                                  #  20    0xaf111  1      OPC=nop             
  nop                                                  #  21    0xaf112  1      OPC=nop             
  nop                                                  #  22    0xaf113  1      OPC=nop             
  nop                                                  #  23    0xaf114  1      OPC=nop             
  nop                                                  #  24    0xaf115  1      OPC=nop             
  nop                                                  #  25    0xaf116  1      OPC=nop             
  nop                                                  #  26    0xaf117  1      OPC=nop             
  nop                                                  #  27    0xaf118  1      OPC=nop             
  nop                                                  #  28    0xaf119  1      OPC=nop             
  nop                                                  #  29    0xaf11a  1      OPC=nop             
  callq ._ZNSs14_M_replace_auxEjjjc                    #  30    0xaf11b  5      OPC=callq_label     
  movl %ebx, %ebx                                      #  31    0xaf120  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                             #  32    0xaf122  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                #  33    0xaf126  3      OPC=leal_r32_m16    
  leal (%r12,%rax,1), %eax                             #  34    0xaf129  4      OPC=leal_r32_m16    
  movl %edx, %edx                                      #  35    0xaf12d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                   #  36    0xaf12f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                 #  37    0xaf138  5      OPC=movq_r64_m64    
  nop                                                  #  38    0xaf13d  1      OPC=nop             
  nop                                                  #  39    0xaf13e  1      OPC=nop             
  nop                                                  #  40    0xaf13f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                #  41    0xaf140  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                     #  42    0xaf145  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                      #  43    0xaf148  3      OPC=addq_r64_r64    
  popq %r11                                            #  44    0xaf14b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                              #  45    0xaf14d  7      OPC=andl_r32_imm32  
  nop                                                  #  46    0xaf154  1      OPC=nop             
  nop                                                  #  47    0xaf155  1      OPC=nop             
  nop                                                  #  48    0xaf156  1      OPC=nop             
  nop                                                  #  49    0xaf157  1      OPC=nop             
  addq %r15, %r11                                      #  50    0xaf158  3      OPC=addq_r64_r64    
  jmpq %r11                                            #  51    0xaf15b  3      OPC=jmpq_r64        
  nop                                                  #  52    0xaf15e  1      OPC=nop             
  nop                                                  #  53    0xaf15f  1      OPC=nop             
  nop                                                  #  54    0xaf160  1      OPC=nop             
  nop                                                  #  55    0xaf161  1      OPC=nop             
  nop                                                  #  56    0xaf162  1      OPC=nop             
  nop                                                  #  57    0xaf163  1      OPC=nop             
  nop                                                  #  58    0xaf164  1      OPC=nop             
  nop                                                  #  59    0xaf165  1      OPC=nop             
  nop                                                  #  60    0xaf166  1      OPC=nop             
                                                                                                    
.size _ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc, .-_ZNSs6insertEN9__gnu_cxx17__normal_iteratorIPcSsEEc

