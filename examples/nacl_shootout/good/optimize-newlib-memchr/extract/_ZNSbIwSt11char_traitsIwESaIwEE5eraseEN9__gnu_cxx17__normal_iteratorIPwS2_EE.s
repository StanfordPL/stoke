  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE, @function

#! file-offset 0x11a3c0
#! rip-offset  0xda3c0
#! capacity    128 bytes

# Text                                                                          #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE:  #        0xda3c0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                         #  1     0xda3c0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                              #  2     0xda3c5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                        #  3     0xda3c8  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                              #  4     0xda3cd  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                               #  5     0xda3d0  3      OPC=addq_r64_r64    
  movl %esi, %ebx                                                               #  6     0xda3d3  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                                             #  7     0xda3d5  3      OPC=movl_r32_r32    
  subl (%r15,%r12,1), %ebx                                                      #  8     0xda3d8  4      OPC=subl_r32_m32    
  nop                                                                           #  9     0xda3dc  1      OPC=nop             
  nop                                                                           #  10    0xda3dd  1      OPC=nop             
  nop                                                                           #  11    0xda3de  1      OPC=nop             
  nop                                                                           #  12    0xda3df  1      OPC=nop             
  movl $0x1, %edx                                                               #  13    0xda3e0  5      OPC=movl_r32_imm32  
  movl %r12d, %edi                                                              #  14    0xda3e5  3      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                                               #  15    0xda3e8  2      OPC=xorl_r32_r32    
  sarl $0x2, %ebx                                                               #  16    0xda3ea  3      OPC=sarl_r32_imm8   
  movl %ebx, %esi                                                               #  17    0xda3ed  2      OPC=movl_r32_r32    
  nop                                                                           #  18    0xda3ef  1      OPC=nop             
  nop                                                                           #  19    0xda3f0  1      OPC=nop             
  nop                                                                           #  20    0xda3f1  1      OPC=nop             
  nop                                                                           #  21    0xda3f2  1      OPC=nop             
  nop                                                                           #  22    0xda3f3  1      OPC=nop             
  nop                                                                           #  23    0xda3f4  1      OPC=nop             
  nop                                                                           #  24    0xda3f5  1      OPC=nop             
  nop                                                                           #  25    0xda3f6  1      OPC=nop             
  nop                                                                           #  26    0xda3f7  1      OPC=nop             
  nop                                                                           #  27    0xda3f8  1      OPC=nop             
  nop                                                                           #  28    0xda3f9  1      OPC=nop             
  nop                                                                           #  29    0xda3fa  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj                          #  30    0xda3fb  5      OPC=callq_label     
  movl %r12d, %r12d                                                             #  31    0xda400  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                                                      #  32    0xda403  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                                         #  33    0xda407  3      OPC=leal_r32_m16    
  leal (%rax,%rbx,4), %eax                                                      #  34    0xda40a  3      OPC=leal_r32_m16    
  movl %edx, %edx                                                               #  35    0xda40d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                            #  36    0xda40f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                                          #  37    0xda418  5      OPC=movq_r64_m64    
  nop                                                                           #  38    0xda41d  1      OPC=nop             
  nop                                                                           #  39    0xda41e  1      OPC=nop             
  nop                                                                           #  40    0xda41f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                                         #  41    0xda420  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                              #  42    0xda425  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                               #  43    0xda428  3      OPC=addq_r64_r64    
  popq %r11                                                                     #  44    0xda42b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                       #  45    0xda42d  7      OPC=andl_r32_imm32  
  nop                                                                           #  46    0xda434  1      OPC=nop             
  nop                                                                           #  47    0xda435  1      OPC=nop             
  nop                                                                           #  48    0xda436  1      OPC=nop             
  nop                                                                           #  49    0xda437  1      OPC=nop             
  addq %r15, %r11                                                               #  50    0xda438  3      OPC=addq_r64_r64    
  jmpq %r11                                                                     #  51    0xda43b  3      OPC=jmpq_r64        
  nop                                                                           #  52    0xda43e  1      OPC=nop             
  nop                                                                           #  53    0xda43f  1      OPC=nop             
  nop                                                                           #  54    0xda440  1      OPC=nop             
  nop                                                                           #  55    0xda441  1      OPC=nop             
  nop                                                                           #  56    0xda442  1      OPC=nop             
  nop                                                                           #  57    0xda443  1      OPC=nop             
  nop                                                                           #  58    0xda444  1      OPC=nop             
  nop                                                                           #  59    0xda445  1      OPC=nop             
  nop                                                                           #  60    0xda446  1      OPC=nop             
                                                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE

