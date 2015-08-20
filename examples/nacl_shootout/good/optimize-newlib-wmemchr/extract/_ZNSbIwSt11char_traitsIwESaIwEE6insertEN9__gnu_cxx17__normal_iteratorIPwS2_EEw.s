  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw, @function

#! file-offset 0x119aa0
#! rip-offset  0xd9aa0
#! capacity    128 bytes

# Text                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw:  #        0xd9aa0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                          #  1     0xd9aa0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                                 #  2     0xd9aa5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                           #  3     0xd9aa7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                #  4     0xd9aac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                 #  5     0xd9aaf  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                                                #  6     0xd9ab2  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                 #  7     0xd9ab5  2      OPC=movl_r32_r32    
  subl (%r15,%rbx,1), %r12d                                                       #  8     0xd9ab7  4      OPC=subl_r32_m32    
  movl %edx, %r8d                                                                 #  9     0xd9abb  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                 #  10    0xd9abe  2      OPC=movl_r32_r32    
  xorl %edx, %edx                                                                 #  11    0xd9ac0  2      OPC=xorl_r32_r32    
  movl $0x1, %ecx                                                                 #  12    0xd9ac2  5      OPC=movl_r32_imm32  
  sarl $0x2, %r12d                                                                #  13    0xd9ac7  4      OPC=sarl_r32_imm8   
  movl %r12d, %esi                                                                #  14    0xd9acb  3      OPC=movl_r32_r32    
  nop                                                                             #  15    0xd9ace  1      OPC=nop             
  nop                                                                             #  16    0xd9acf  1      OPC=nop             
  nop                                                                             #  17    0xd9ad0  1      OPC=nop             
  nop                                                                             #  18    0xd9ad1  1      OPC=nop             
  nop                                                                             #  19    0xd9ad2  1      OPC=nop             
  nop                                                                             #  20    0xd9ad3  1      OPC=nop             
  nop                                                                             #  21    0xd9ad4  1      OPC=nop             
  nop                                                                             #  22    0xd9ad5  1      OPC=nop             
  nop                                                                             #  23    0xd9ad6  1      OPC=nop             
  nop                                                                             #  24    0xd9ad7  1      OPC=nop             
  nop                                                                             #  25    0xd9ad8  1      OPC=nop             
  nop                                                                             #  26    0xd9ad9  1      OPC=nop             
  nop                                                                             #  27    0xd9ada  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw                     #  28    0xd9adb  5      OPC=callq_label     
  movl %ebx, %ebx                                                                 #  29    0xd9ae0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                        #  30    0xd9ae2  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                                           #  31    0xd9ae6  3      OPC=leal_r32_m16    
  leal (%rax,%r12,4), %eax                                                        #  32    0xd9ae9  4      OPC=leal_r32_m16    
  movl %edx, %edx                                                                 #  33    0xd9aed  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                              #  34    0xd9aef  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                                            #  35    0xd9af8  5      OPC=movq_r64_m64    
  nop                                                                             #  36    0xd9afd  1      OPC=nop             
  nop                                                                             #  37    0xd9afe  1      OPC=nop             
  nop                                                                             #  38    0xd9aff  1      OPC=nop             
  movq 0x10(%rsp), %r12                                                           #  39    0xd9b00  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                #  40    0xd9b05  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                 #  41    0xd9b08  3      OPC=addq_r64_r64    
  popq %r11                                                                       #  42    0xd9b0b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                         #  43    0xd9b0d  7      OPC=andl_r32_imm32  
  nop                                                                             #  44    0xd9b14  1      OPC=nop             
  nop                                                                             #  45    0xd9b15  1      OPC=nop             
  nop                                                                             #  46    0xd9b16  1      OPC=nop             
  nop                                                                             #  47    0xd9b17  1      OPC=nop             
  addq %r15, %r11                                                                 #  48    0xd9b18  3      OPC=addq_r64_r64    
  jmpq %r11                                                                       #  49    0xd9b1b  3      OPC=jmpq_r64        
  nop                                                                             #  50    0xd9b1e  1      OPC=nop             
  nop                                                                             #  51    0xd9b1f  1      OPC=nop             
  nop                                                                             #  52    0xd9b20  1      OPC=nop             
  nop                                                                             #  53    0xd9b21  1      OPC=nop             
  nop                                                                             #  54    0xd9b22  1      OPC=nop             
  nop                                                                             #  55    0xd9b23  1      OPC=nop             
  nop                                                                             #  56    0xd9b24  1      OPC=nop             
  nop                                                                             #  57    0xd9b25  1      OPC=nop             
  nop                                                                             #  58    0xd9b26  1      OPC=nop             
                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw

