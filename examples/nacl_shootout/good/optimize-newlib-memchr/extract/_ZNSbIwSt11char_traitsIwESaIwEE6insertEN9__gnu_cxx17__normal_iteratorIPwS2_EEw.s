  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw, @function

#! file-offset 0x11a1c0
#! rip-offset  0xda1c0
#! capacity    128 bytes

# Text                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw:  #        0xda1c0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                          #  1     0xda1c0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                                 #  2     0xda1c5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                           #  3     0xda1c7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                #  4     0xda1cc  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                 #  5     0xda1cf  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                                                #  6     0xda1d2  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                 #  7     0xda1d5  2      OPC=movl_r32_r32    
  subl (%r15,%rbx,1), %r12d                                                       #  8     0xda1d7  4      OPC=subl_r32_m32    
  movl %edx, %r8d                                                                 #  9     0xda1db  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                 #  10    0xda1de  2      OPC=movl_r32_r32    
  xorl %edx, %edx                                                                 #  11    0xda1e0  2      OPC=xorl_r32_r32    
  movl $0x1, %ecx                                                                 #  12    0xda1e2  5      OPC=movl_r32_imm32  
  sarl $0x2, %r12d                                                                #  13    0xda1e7  4      OPC=sarl_r32_imm8   
  movl %r12d, %esi                                                                #  14    0xda1eb  3      OPC=movl_r32_r32    
  nop                                                                             #  15    0xda1ee  1      OPC=nop             
  nop                                                                             #  16    0xda1ef  1      OPC=nop             
  nop                                                                             #  17    0xda1f0  1      OPC=nop             
  nop                                                                             #  18    0xda1f1  1      OPC=nop             
  nop                                                                             #  19    0xda1f2  1      OPC=nop             
  nop                                                                             #  20    0xda1f3  1      OPC=nop             
  nop                                                                             #  21    0xda1f4  1      OPC=nop             
  nop                                                                             #  22    0xda1f5  1      OPC=nop             
  nop                                                                             #  23    0xda1f6  1      OPC=nop             
  nop                                                                             #  24    0xda1f7  1      OPC=nop             
  nop                                                                             #  25    0xda1f8  1      OPC=nop             
  nop                                                                             #  26    0xda1f9  1      OPC=nop             
  nop                                                                             #  27    0xda1fa  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw                     #  28    0xda1fb  5      OPC=callq_label     
  movl %ebx, %ebx                                                                 #  29    0xda200  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                        #  30    0xda202  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                                           #  31    0xda206  3      OPC=leal_r32_m16    
  leal (%rax,%r12,4), %eax                                                        #  32    0xda209  4      OPC=leal_r32_m16    
  movl %edx, %edx                                                                 #  33    0xda20d  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                              #  34    0xda20f  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                                            #  35    0xda218  5      OPC=movq_r64_m64    
  nop                                                                             #  36    0xda21d  1      OPC=nop             
  nop                                                                             #  37    0xda21e  1      OPC=nop             
  nop                                                                             #  38    0xda21f  1      OPC=nop             
  movq 0x10(%rsp), %r12                                                           #  39    0xda220  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                #  40    0xda225  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                 #  41    0xda228  3      OPC=addq_r64_r64    
  popq %r11                                                                       #  42    0xda22b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                         #  43    0xda22d  7      OPC=andl_r32_imm32  
  nop                                                                             #  44    0xda234  1      OPC=nop             
  nop                                                                             #  45    0xda235  1      OPC=nop             
  nop                                                                             #  46    0xda236  1      OPC=nop             
  nop                                                                             #  47    0xda237  1      OPC=nop             
  addq %r15, %r11                                                                 #  48    0xda238  3      OPC=addq_r64_r64    
  jmpq %r11                                                                       #  49    0xda23b  3      OPC=jmpq_r64        
  nop                                                                             #  50    0xda23e  1      OPC=nop             
  nop                                                                             #  51    0xda23f  1      OPC=nop             
  nop                                                                             #  52    0xda240  1      OPC=nop             
  nop                                                                             #  53    0xda241  1      OPC=nop             
  nop                                                                             #  54    0xda242  1      OPC=nop             
  nop                                                                             #  55    0xda243  1      OPC=nop             
  nop                                                                             #  56    0xda244  1      OPC=nop             
  nop                                                                             #  57    0xda245  1      OPC=nop             
  nop                                                                             #  58    0xda246  1      OPC=nop             
                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw

