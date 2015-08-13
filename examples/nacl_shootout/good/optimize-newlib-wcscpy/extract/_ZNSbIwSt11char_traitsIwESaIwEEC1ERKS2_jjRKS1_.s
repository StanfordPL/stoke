  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_, @function

#! file-offset 0x117980
#! rip-offset  0xd7980
#! capacity    128 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_:                                                  #        0xd7980  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd7980  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                                                 #  2     0xd7981  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                                                 #  3     0xd7983  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                                                 #  4     0xd7985  3      OPC=movl_r32_r32    
  subl $0x10, %esp                                                                                #  5     0xd7988  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  6     0xd798b  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                                                 #  7     0xd798e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                                        #  8     0xd7990  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                                           #  9     0xd7994  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                                                 #  10    0xd7997  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                                        #  11    0xd7999  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                                                 #  12    0xd799d  2      OPC=cmpl_r32_r32    
  nop                                                                                             #  13    0xd799f  1      OPC=nop             
  ja .L_d79e0                                                                                     #  14    0xd79a0  2      OPC=ja_label        
  subl %edx, %esi                                                                                 #  15    0xd79a2  2      OPC=subl_r32_r32    
  movb $0x0, (%rsp)                                                                               #  16    0xd79a4  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                                                 #  17    0xd79a8  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                                               #  18    0xd79aa  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                                                 #  19    0xd79ad  2      OPC=addl_r32_r32    
  leal (%rdi,%rsi,4), %esi                                                                        #  20    0xd79af  3      OPC=leal_r32_m16    
  leal (%rdi,%rdx,4), %edi                                                                        #  21    0xd79b2  3      OPC=leal_r32_m16    
  movl %r8d, %edx                                                                                 #  22    0xd79b5  3      OPC=movl_r32_r32    
  nop                                                                                             #  23    0xd79b8  1      OPC=nop             
  nop                                                                                             #  24    0xd79b9  1      OPC=nop             
  nop                                                                                             #  25    0xd79ba  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  26    0xd79bb  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  27    0xd79c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  28    0xd79c2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  29    0xd79c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  30    0xd79c9  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  31    0xd79cc  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  32    0xd79cd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  33    0xd79cf  7      OPC=andl_r32_imm32  
  nop                                                                                             #  34    0xd79d6  1      OPC=nop             
  nop                                                                                             #  35    0xd79d7  1      OPC=nop             
  nop                                                                                             #  36    0xd79d8  1      OPC=nop             
  nop                                                                                             #  37    0xd79d9  1      OPC=nop             
  addq %r15, %r11                                                                                 #  38    0xd79da  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  39    0xd79dd  3      OPC=jmpq_r64        
  nop                                                                                             #  40    0xd79e0  1      OPC=nop             
  nop                                                                                             #  41    0xd79e1  1      OPC=nop             
  nop                                                                                             #  42    0xd79e2  1      OPC=nop             
  nop                                                                                             #  43    0xd79e3  1      OPC=nop             
  nop                                                                                             #  44    0xd79e4  1      OPC=nop             
  nop                                                                                             #  45    0xd79e5  1      OPC=nop             
  nop                                                                                             #  46    0xd79e6  1      OPC=nop             
.L_d79e0:                                                                                         #        0xd79e7  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                                          #  47    0xd79e7  5      OPC=movl_r32_imm32  
  nop                                                                                             #  48    0xd79ec  1      OPC=nop             
  nop                                                                                             #  49    0xd79ed  1      OPC=nop             
  nop                                                                                             #  50    0xd79ee  1      OPC=nop             
  nop                                                                                             #  51    0xd79ef  1      OPC=nop             
  nop                                                                                             #  52    0xd79f0  1      OPC=nop             
  nop                                                                                             #  53    0xd79f1  1      OPC=nop             
  nop                                                                                             #  54    0xd79f2  1      OPC=nop             
  nop                                                                                             #  55    0xd79f3  1      OPC=nop             
  nop                                                                                             #  56    0xd79f4  1      OPC=nop             
  nop                                                                                             #  57    0xd79f5  1      OPC=nop             
  nop                                                                                             #  58    0xd79f6  1      OPC=nop             
  nop                                                                                             #  59    0xd79f7  1      OPC=nop             
  nop                                                                                             #  60    0xd79f8  1      OPC=nop             
  nop                                                                                             #  61    0xd79f9  1      OPC=nop             
  nop                                                                                             #  62    0xd79fa  1      OPC=nop             
  nop                                                                                             #  63    0xd79fb  1      OPC=nop             
  nop                                                                                             #  64    0xd79fc  1      OPC=nop             
  nop                                                                                             #  65    0xd79fd  1      OPC=nop             
  nop                                                                                             #  66    0xd79fe  1      OPC=nop             
  nop                                                                                             #  67    0xd79ff  1      OPC=nop             
  nop                                                                                             #  68    0xd7a00  1      OPC=nop             
  nop                                                                                             #  69    0xd7a01  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                                            #  70    0xd7a02  5      OPC=callq_label     
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_

