  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_, @function

#! file-offset 0x117a00
#! rip-offset  0xd7a00
#! capacity    128 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_:                                                  #        0xd7a00  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd7a00  1      OPC=pushq_r64_1     
  movl %esi, %esi                                                                                 #  2     0xd7a01  2      OPC=movl_r32_r32    
  movl %edi, %ebx                                                                                 #  3     0xd7a03  2      OPC=movl_r32_r32    
  movl %r8d, %r8d                                                                                 #  4     0xd7a05  3      OPC=movl_r32_r32    
  subl $0x10, %esp                                                                                #  5     0xd7a08  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  6     0xd7a0b  3      OPC=addq_r64_r64    
  movl %esi, %esi                                                                                 #  7     0xd7a0e  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %edi                                                                        #  8     0xd7a10  4      OPC=movl_r32_m32    
  leal -0xc(%rdi), %eax                                                                           #  9     0xd7a14  3      OPC=leal_r32_m16    
  movl %eax, %eax                                                                                 #  10    0xd7a17  2      OPC=movl_r32_r32    
  movl (%r15,%rax,1), %esi                                                                        #  11    0xd7a19  4      OPC=movl_r32_m32    
  cmpl %esi, %edx                                                                                 #  12    0xd7a1d  2      OPC=cmpl_r32_r32    
  nop                                                                                             #  13    0xd7a1f  1      OPC=nop             
  ja .L_d7a60                                                                                     #  14    0xd7a20  2      OPC=ja_label        
  subl %edx, %esi                                                                                 #  15    0xd7a22  2      OPC=subl_r32_r32    
  movb $0x0, (%rsp)                                                                               #  16    0xd7a24  4      OPC=movb_m8_imm8    
  cmpl %ecx, %esi                                                                                 #  17    0xd7a28  2      OPC=cmpl_r32_r32    
  cmoval %ecx, %esi                                                                               #  18    0xd7a2a  3      OPC=cmoval_r32_r32  
  addl %edx, %esi                                                                                 #  19    0xd7a2d  2      OPC=addl_r32_r32    
  leal (%rdi,%rsi,4), %esi                                                                        #  20    0xd7a2f  3      OPC=leal_r32_m16    
  leal (%rdi,%rdx,4), %edi                                                                        #  21    0xd7a32  3      OPC=leal_r32_m16    
  movl %r8d, %edx                                                                                 #  22    0xd7a35  3      OPC=movl_r32_r32    
  nop                                                                                             #  23    0xd7a38  1      OPC=nop             
  nop                                                                                             #  24    0xd7a39  1      OPC=nop             
  nop                                                                                             #  25    0xd7a3a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  26    0xd7a3b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  27    0xd7a40  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  28    0xd7a42  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  29    0xd7a46  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  30    0xd7a49  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  31    0xd7a4c  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  32    0xd7a4d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  33    0xd7a4f  7      OPC=andl_r32_imm32  
  nop                                                                                             #  34    0xd7a56  1      OPC=nop             
  nop                                                                                             #  35    0xd7a57  1      OPC=nop             
  nop                                                                                             #  36    0xd7a58  1      OPC=nop             
  nop                                                                                             #  37    0xd7a59  1      OPC=nop             
  addq %r15, %r11                                                                                 #  38    0xd7a5a  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  39    0xd7a5d  3      OPC=jmpq_r64        
  nop                                                                                             #  40    0xd7a60  1      OPC=nop             
  nop                                                                                             #  41    0xd7a61  1      OPC=nop             
  nop                                                                                             #  42    0xd7a62  1      OPC=nop             
  nop                                                                                             #  43    0xd7a63  1      OPC=nop             
  nop                                                                                             #  44    0xd7a64  1      OPC=nop             
  nop                                                                                             #  45    0xd7a65  1      OPC=nop             
  nop                                                                                             #  46    0xd7a66  1      OPC=nop             
.L_d7a60:                                                                                         #        0xd7a67  0      OPC=<label>         
  movl $0x1003bafb, %edi                                                                          #  47    0xd7a67  5      OPC=movl_r32_imm32  
  nop                                                                                             #  48    0xd7a6c  1      OPC=nop             
  nop                                                                                             #  49    0xd7a6d  1      OPC=nop             
  nop                                                                                             #  50    0xd7a6e  1      OPC=nop             
  nop                                                                                             #  51    0xd7a6f  1      OPC=nop             
  nop                                                                                             #  52    0xd7a70  1      OPC=nop             
  nop                                                                                             #  53    0xd7a71  1      OPC=nop             
  nop                                                                                             #  54    0xd7a72  1      OPC=nop             
  nop                                                                                             #  55    0xd7a73  1      OPC=nop             
  nop                                                                                             #  56    0xd7a74  1      OPC=nop             
  nop                                                                                             #  57    0xd7a75  1      OPC=nop             
  nop                                                                                             #  58    0xd7a76  1      OPC=nop             
  nop                                                                                             #  59    0xd7a77  1      OPC=nop             
  nop                                                                                             #  60    0xd7a78  1      OPC=nop             
  nop                                                                                             #  61    0xd7a79  1      OPC=nop             
  nop                                                                                             #  62    0xd7a7a  1      OPC=nop             
  nop                                                                                             #  63    0xd7a7b  1      OPC=nop             
  nop                                                                                             #  64    0xd7a7c  1      OPC=nop             
  nop                                                                                             #  65    0xd7a7d  1      OPC=nop             
  nop                                                                                             #  66    0xd7a7e  1      OPC=nop             
  nop                                                                                             #  67    0xd7a7f  1      OPC=nop             
  nop                                                                                             #  68    0xd7a80  1      OPC=nop             
  nop                                                                                             #  69    0xd7a81  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc                                                            #  70    0xd7a82  5      OPC=callq_label     
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC2ERKS2_jjRKS1_

