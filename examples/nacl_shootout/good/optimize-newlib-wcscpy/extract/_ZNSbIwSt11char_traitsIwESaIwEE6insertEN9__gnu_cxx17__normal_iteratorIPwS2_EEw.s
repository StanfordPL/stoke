  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw
  .type _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw, @function

#! file-offset 0x1197a0
#! rip-offset  0xd97a0
#! capacity    128 bytes

# Text                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw:  #        0xd97a0  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                          #  1     0xd97a0  5      OPC=movq_m64_r64    
  movl %edi, %ebx                                                                 #  2     0xd97a5  2      OPC=movl_r32_r32    
  movq %r12, -0x8(%rsp)                                                           #  3     0xd97a7  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                #  4     0xd97ac  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                 #  5     0xd97af  3      OPC=addq_r64_r64    
  movl %esi, %r12d                                                                #  6     0xd97b2  3      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                 #  7     0xd97b5  2      OPC=movl_r32_r32    
  subl (%r15,%rbx,1), %r12d                                                       #  8     0xd97b7  4      OPC=subl_r32_m32    
  movl %edx, %r8d                                                                 #  9     0xd97bb  3      OPC=movl_r32_r32    
  movl %ebx, %edi                                                                 #  10    0xd97be  2      OPC=movl_r32_r32    
  xorl %edx, %edx                                                                 #  11    0xd97c0  2      OPC=xorl_r32_r32    
  movl $0x1, %ecx                                                                 #  12    0xd97c2  5      OPC=movl_r32_imm32  
  sarl $0x2, %r12d                                                                #  13    0xd97c7  4      OPC=sarl_r32_imm8   
  movl %r12d, %esi                                                                #  14    0xd97cb  3      OPC=movl_r32_r32    
  nop                                                                             #  15    0xd97ce  1      OPC=nop             
  nop                                                                             #  16    0xd97cf  1      OPC=nop             
  nop                                                                             #  17    0xd97d0  1      OPC=nop             
  nop                                                                             #  18    0xd97d1  1      OPC=nop             
  nop                                                                             #  19    0xd97d2  1      OPC=nop             
  nop                                                                             #  20    0xd97d3  1      OPC=nop             
  nop                                                                             #  21    0xd97d4  1      OPC=nop             
  nop                                                                             #  22    0xd97d5  1      OPC=nop             
  nop                                                                             #  23    0xd97d6  1      OPC=nop             
  nop                                                                             #  24    0xd97d7  1      OPC=nop             
  nop                                                                             #  25    0xd97d8  1      OPC=nop             
  nop                                                                             #  26    0xd97d9  1      OPC=nop             
  nop                                                                             #  27    0xd97da  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE14_M_replace_auxEjjjw                     #  28    0xd97db  5      OPC=callq_label     
  movl %ebx, %ebx                                                                 #  29    0xd97e0  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax                                                        #  30    0xd97e2  4      OPC=movl_r32_m32    
  leal -0xc(%rax), %edx                                                           #  31    0xd97e6  3      OPC=leal_r32_m16    
  leal (%rax,%r12,4), %eax                                                        #  32    0xd97e9  4      OPC=leal_r32_m16    
  movl %edx, %edx                                                                 #  33    0xd97ed  2      OPC=movl_r32_r32    
  movl $0xffffffff, 0x8(%r15,%rdx,1)                                              #  34    0xd97ef  9      OPC=movl_m32_imm32  
  movq 0x8(%rsp), %rbx                                                            #  35    0xd97f8  5      OPC=movq_r64_m64    
  nop                                                                             #  36    0xd97fd  1      OPC=nop             
  nop                                                                             #  37    0xd97fe  1      OPC=nop             
  nop                                                                             #  38    0xd97ff  1      OPC=nop             
  movq 0x10(%rsp), %r12                                                           #  39    0xd9800  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                #  40    0xd9805  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                 #  41    0xd9808  3      OPC=addq_r64_r64    
  popq %r11                                                                       #  42    0xd980b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                         #  43    0xd980d  7      OPC=andl_r32_imm32  
  nop                                                                             #  44    0xd9814  1      OPC=nop             
  nop                                                                             #  45    0xd9815  1      OPC=nop             
  nop                                                                             #  46    0xd9816  1      OPC=nop             
  nop                                                                             #  47    0xd9817  1      OPC=nop             
  addq %r15, %r11                                                                 #  48    0xd9818  3      OPC=addq_r64_r64    
  jmpq %r11                                                                       #  49    0xd981b  3      OPC=jmpq_r64        
  nop                                                                             #  50    0xd981e  1      OPC=nop             
  nop                                                                             #  51    0xd981f  1      OPC=nop             
  nop                                                                             #  52    0xd9820  1      OPC=nop             
  nop                                                                             #  53    0xd9821  1      OPC=nop             
  nop                                                                             #  54    0xd9822  1      OPC=nop             
  nop                                                                             #  55    0xd9823  1      OPC=nop             
  nop                                                                             #  56    0xd9824  1      OPC=nop             
  nop                                                                             #  57    0xd9825  1      OPC=nop             
  nop                                                                             #  58    0xd9826  1      OPC=nop             
                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw, .-_ZNSbIwSt11char_traitsIwESaIwEE6insertEN9__gnu_cxx17__normal_iteratorIPwS2_EEw

