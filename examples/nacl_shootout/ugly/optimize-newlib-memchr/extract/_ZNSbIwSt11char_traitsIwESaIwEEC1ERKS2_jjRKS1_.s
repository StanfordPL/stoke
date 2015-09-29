  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_, @function

#! file-offset 0x1183a0
#! rip-offset  0xd83a0
#! capacity    128 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_:                                                  #        0xd83a0  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd83a0  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                                                 #  2     0xd83a1  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                                                 #  3     0xd83a3  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                                                 #  4     0xd83a5  3      OPC=movl_r32_r32    
  subl $0x10, %esp                                                                                #  5     0xd83a8  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  6     0xd83ab  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                                                 #  7     0xd83ae  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                                        #  8     0xd83b0  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                                           #  9     0xd83b4  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                                                 #  10    0xd83b7  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                                        #  11    0xd83b9  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                                                 #  12    0xd83bd  2      OPC=cmpl_r32_r32    
  nop                                                                                             #  13    0xd83bf  1      OPC=nop             
  ja .L_d8400                                                                                     #  14    0xd83c0  2      OPC=ja_label        
  subl %edx, %esi                                                                                 #  15    0xd83c2  2      OPC=subl_r32_r32    
  movb $0x0, (%rsp)                                                                               #  16    0xd83c4  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                                                 #  17    0xd83c8  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                                               #  18    0xd83ca  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                                                 #  19    0xd83cd  2      OPC=addl_r32_r32    
  leal (%rdi,%rsi,4), %esi                                                                        #  20    0xd83cf  3      OPC=leal_r32_m16    
  leal (%rdi,%rdx,4), %edi                                                                        #  21    0xd83d2  3      OPC=leal_r32_m16    
  movl %r8d, %edx                                                                                 #  22    0xd83d5  3      OPC=movl_r32_r32    
  nop                                                                                             #  23    0xd83d8  1      OPC=nop             
  nop                                                                                             #  24    0xd83d9  1      OPC=nop             
  nop                                                                                             #  25    0xd83da  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  26    0xd83db  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  27    0xd83e0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  28    0xd83e2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  29    0xd83e6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  30    0xd83e9  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  31    0xd83ec  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  32    0xd83ed  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  33    0xd83ef  7      OPC=andl_r32_imm32  
  nop                                                                                             #  34    0xd83f6  1      OPC=nop             
  nop                                                                                             #  35    0xd83f7  1      OPC=nop             
  nop                                                                                             #  36    0xd83f8  1      OPC=nop             
  nop                                                                                             #  37    0xd83f9  1      OPC=nop             
  addq %r15, %r11                                                                                 #  38    0xd83fa  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  39    0xd83fd  3      OPC=jmpq_r64        
  nop                                                                                             #  40    0xd8400  1      OPC=nop             
  nop                                                                                             #  41    0xd8401  1      OPC=nop             
  nop                                                                                             #  42    0xd8402  1      OPC=nop             
  nop                                                                                             #  43    0xd8403  1      OPC=nop             
  nop                                                                                             #  44    0xd8404  1      OPC=nop             
  nop                                                                                             #  45    0xd8405  1      OPC=nop             
  nop                                                                                             #  46    0xd8406  1      OPC=nop             
.L_d8400:                                                                                         #        0xd8407  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                                          #  47    0xd8407  5      OPC=movl_r32_imm32  
  nop                                                                                             #  48    0xd840c  1      OPC=nop             
  nop                                                                                             #  49    0xd840d  1      OPC=nop             
  nop                                                                                             #  50    0xd840e  1      OPC=nop             
  nop                                                                                             #  51    0xd840f  1      OPC=nop             
  nop                                                                                             #  52    0xd8410  1      OPC=nop             
  nop                                                                                             #  53    0xd8411  1      OPC=nop             
  nop                                                                                             #  54    0xd8412  1      OPC=nop             
  nop                                                                                             #  55    0xd8413  1      OPC=nop             
  nop                                                                                             #  56    0xd8414  1      OPC=nop             
  nop                                                                                             #  57    0xd8415  1      OPC=nop             
  nop                                                                                             #  58    0xd8416  1      OPC=nop             
  nop                                                                                             #  59    0xd8417  1      OPC=nop             
  nop                                                                                             #  60    0xd8418  1      OPC=nop             
  nop                                                                                             #  61    0xd8419  1      OPC=nop             
  nop                                                                                             #  62    0xd841a  1      OPC=nop             
  nop                                                                                             #  63    0xd841b  1      OPC=nop             
  nop                                                                                             #  64    0xd841c  1      OPC=nop             
  nop                                                                                             #  65    0xd841d  1      OPC=nop             
  nop                                                                                             #  66    0xd841e  1      OPC=nop             
  nop                                                                                             #  67    0xd841f  1      OPC=nop             
  nop                                                                                             #  68    0xd8420  1      OPC=nop             
  nop                                                                                             #  69    0xd8421  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                                            #  70    0xd8422  5      OPC=callq_label     
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC1ERKS2_jjRKS1_

