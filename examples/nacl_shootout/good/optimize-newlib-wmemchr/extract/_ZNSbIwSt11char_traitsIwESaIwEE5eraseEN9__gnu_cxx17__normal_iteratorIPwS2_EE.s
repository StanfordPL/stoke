  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE
  .type _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE, @function

#! file-offset 0x119ca0
#! rip-offset  0xd9ca0
#! capacity    128 bytes

# Text                                                                          #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE:  #        0xd9ca0  0      OPC=<label>         
  movq %r12, -0x8(%rsp)                                                         #  1     0xd9ca0  5      OPC=movq_m64_r64    
  movl %edi, %r12d                                                              #  2     0xd9ca5  3      OPC=movl_r32_r32    
  movq %rbx, -0x10(%rsp)                                                        #  3     0xd9ca8  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                              #  4     0xd9cad  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                               #  5     0xd9cb0  3      OPC=addq_r64_r64    
  movl %esi, %ebx                                                               #  6     0xd9cb3  2      OPC=movl_r32_r32    
  movl %r12d, %r12d                                                             #  7     0xd9cb5  3      OPC=movl_r32_r32    
  subl (%r15,%r12,1), %ebx                                                      #  8     0xd9cb8  4      OPC=subl_r32_m32    
  nop                                                                           #  9     0xd9cbc  1      OPC=nop             
  nop                                                                           #  10    0xd9cbd  1      OPC=nop             
  nop                                                                           #  11    0xd9cbe  1      OPC=nop             
  nop                                                                           #  12    0xd9cbf  1      OPC=nop             
  movl $0x1, %edx                                                               #  13    0xd9cc0  5      OPC=movl_r32_imm32  
  movl %r12d, %edi                                                              #  14    0xd9cc5  3      OPC=movl_r32_r32    
  xorl %ecx, %ecx                                                               #  15    0xd9cc8  2      OPC=xorl_r32_r32    
  sarl $0x2, %ebx                                                               #  16    0xd9cca  3      OPC=sarl_r32_imm8   
  movl %ebx, %esi                                                               #  17    0xd9ccd  2      OPC=movl_r32_r32    
  nop                                                                           #  18    0xd9ccf  1      OPC=nop             
  nop                                                                           #  19    0xd9cd0  1      OPC=nop             
  nop                                                                           #  20    0xd9cd1  1      OPC=nop             
  nop                                                                           #  21    0xd9cd2  1      OPC=nop             
  nop                                                                           #  22    0xd9cd3  1      OPC=nop             
  nop                                                                           #  23    0xd9cd4  1      OPC=nop             
  nop                                                                           #  24    0xd9cd5  1      OPC=nop             
  nop                                                                           #  25    0xd9cd6  1      OPC=nop             
  nop                                                                           #  26    0xd9cd7  1      OPC=nop             
  nop                                                                           #  27    0xd9cd8  1      OPC=nop             
  nop                                                                           #  28    0xd9cd9  1      OPC=nop             
  nop                                                                           #  29    0xd9cda  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE9_M_mutateEjjj                          #  30    0xd9cdb  5      OPC=callq_label     
  movl %r12d, %r12d                                                             #  31    0xd9ce0  3      OPC=movl_r32_r32    
  movl (%r15,%r12,1), %eax                                                      #  32    0xd9ce3  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                                         #  33    0xd9ce7  3      OPC=leal_r32_m16    
  leal (%rax,%rbx,4), %eax                                                      #  34    0xd9cea  3      OPC=leal_r32_m16    
  movl %edx, %edx                                                               #  35    0xd9ced  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                            #  36    0xd9cef  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                                          #  37    0xd9cf8  5      OPC=movq_r64_m64    
  nop                                                                           #  38    0xd9cfd  1      OPC=nop             
  nop                                                                           #  39    0xd9cfe  1      OPC=nop             
  nop                                                                           #  40    0xd9cff  1      OPC=nop             
  movq 0x10(%rsp), %r12                                                         #  41    0xd9d00  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                              #  42    0xd9d05  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                               #  43    0xd9d08  3      OPC=addq_r64_r64    
  popq %r11                                                                     #  44    0xd9d0b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                       #  45    0xd9d0d  7      OPC=andl_r32_imm32  
  nop                                                                           #  46    0xd9d14  1      OPC=nop             
  nop                                                                           #  47    0xd9d15  1      OPC=nop             
  nop                                                                           #  48    0xd9d16  1      OPC=nop             
  nop                                                                           #  49    0xd9d17  1      OPC=nop             
  addq %r15, %r11                                                               #  50    0xd9d18  3      OPC=addq_r64_r64    
  jmpq %r11                                                                     #  51    0xd9d1b  3      OPC=jmpq_r64        
  nop                                                                           #  52    0xd9d1e  1      OPC=nop             
  nop                                                                           #  53    0xd9d1f  1      OPC=nop             
  nop                                                                           #  54    0xd9d20  1      OPC=nop             
  nop                                                                           #  55    0xd9d21  1      OPC=nop             
  nop                                                                           #  56    0xd9d22  1      OPC=nop             
  nop                                                                           #  57    0xd9d23  1      OPC=nop             
  nop                                                                           #  58    0xd9d24  1      OPC=nop             
  nop                                                                           #  59    0xd9d25  1      OPC=nop             
  nop                                                                           #  60    0xd9d26  1      OPC=nop             
                                                                                                                             
.size _ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE, .-_ZNSbIwSt11char_traitsIwESaIwEE5eraseEN9__gnu_cxx17__normal_iteratorIPwS2_EE

