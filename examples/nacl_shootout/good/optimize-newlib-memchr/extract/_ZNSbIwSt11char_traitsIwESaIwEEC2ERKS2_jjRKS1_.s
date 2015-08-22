  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_, @function

#! file-offset 0x118420
#! rip-offset  0xd8420
#! capacity    128 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_:                                                  #        0xd8420  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd8420  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                                                 #  2     0xd8421  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                                                 #  3     0xd8423  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                                                 #  4     0xd8425  3      OPC=movl_r32_r32    
  subl $0x10, %esp                                                                                #  5     0xd8428  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  6     0xd842b  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                                                 #  7     0xd842e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                                        #  8     0xd8430  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                                           #  9     0xd8434  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                                                 #  10    0xd8437  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                                        #  11    0xd8439  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                                                 #  12    0xd843d  2      OPC=cmpl_r32_r32    
  nop                                                                                             #  13    0xd843f  1      OPC=nop             
  ja .L_d8480                                                                                     #  14    0xd8440  2      OPC=ja_label        
  subl %edx, %esi                                                                                 #  15    0xd8442  2      OPC=subl_r32_r32    
  movb $0x0, (%rsp)                                                                               #  16    0xd8444  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                                                 #  17    0xd8448  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                                               #  18    0xd844a  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                                                 #  19    0xd844d  2      OPC=addl_r32_r32    
  leal (%rdi,%rsi,4), %esi                                                                        #  20    0xd844f  3      OPC=leal_r32_m16    
  leal (%rdi,%rdx,4), %edi                                                                        #  21    0xd8452  3      OPC=leal_r32_m16    
  movl %r8d, %edx                                                                                 #  22    0xd8455  3      OPC=movl_r32_r32    
  nop                                                                                             #  23    0xd8458  1      OPC=nop             
  nop                                                                                             #  24    0xd8459  1      OPC=nop             
  nop                                                                                             #  25    0xd845a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  26    0xd845b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  27    0xd8460  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  28    0xd8462  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  29    0xd8466  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  30    0xd8469  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  31    0xd846c  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  32    0xd846d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  33    0xd846f  7      OPC=andl_r32_imm32  
  nop                                                                                             #  34    0xd8476  1      OPC=nop             
  nop                                                                                             #  35    0xd8477  1      OPC=nop             
  nop                                                                                             #  36    0xd8478  1      OPC=nop             
  nop                                                                                             #  37    0xd8479  1      OPC=nop             
  addq %r15, %r11                                                                                 #  38    0xd847a  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  39    0xd847d  3      OPC=jmpq_r64        
  nop                                                                                             #  40    0xd8480  1      OPC=nop             
  nop                                                                                             #  41    0xd8481  1      OPC=nop             
  nop                                                                                             #  42    0xd8482  1      OPC=nop             
  nop                                                                                             #  43    0xd8483  1      OPC=nop             
  nop                                                                                             #  44    0xd8484  1      OPC=nop             
  nop                                                                                             #  45    0xd8485  1      OPC=nop             
  nop                                                                                             #  46    0xd8486  1      OPC=nop             
.L_d8480:                                                                                         #        0xd8487  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                                          #  47    0xd8487  5      OPC=movl_r32_imm32  
  nop                                                                                             #  48    0xd848c  1      OPC=nop             
  nop                                                                                             #  49    0xd848d  1      OPC=nop             
  nop                                                                                             #  50    0xd848e  1      OPC=nop             
  nop                                                                                             #  51    0xd848f  1      OPC=nop             
  nop                                                                                             #  52    0xd8490  1      OPC=nop             
  nop                                                                                             #  53    0xd8491  1      OPC=nop             
  nop                                                                                             #  54    0xd8492  1      OPC=nop             
  nop                                                                                             #  55    0xd8493  1      OPC=nop             
  nop                                                                                             #  56    0xd8494  1      OPC=nop             
  nop                                                                                             #  57    0xd8495  1      OPC=nop             
  nop                                                                                             #  58    0xd8496  1      OPC=nop             
  nop                                                                                             #  59    0xd8497  1      OPC=nop             
  nop                                                                                             #  60    0xd8498  1      OPC=nop             
  nop                                                                                             #  61    0xd8499  1      OPC=nop             
  nop                                                                                             #  62    0xd849a  1      OPC=nop             
  nop                                                                                             #  63    0xd849b  1      OPC=nop             
  nop                                                                                             #  64    0xd849c  1      OPC=nop             
  nop                                                                                             #  65    0xd849d  1      OPC=nop             
  nop                                                                                             #  66    0xd849e  1      OPC=nop             
  nop                                                                                             #  67    0xd849f  1      OPC=nop             
  nop                                                                                             #  68    0xd84a0  1      OPC=nop             
  nop                                                                                             #  69    0xd84a1  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                                            #  70    0xd84a2  5      OPC=callq_label     
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_

