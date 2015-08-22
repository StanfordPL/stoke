  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE12_M_group_intEPKcjcRSt8ios_basePcS9_Ri
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE12_M_group_intEPKcjcRSt8ios_basePcS9_Ri, @function

#! file-offset 0xb9c80
#! rip-offset  0x79c80
#! capacity    128 bytes

# Text                                                                                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE12_M_group_intEPKcjcRSt8ios_basePcS9_Ri:  #        0x79c80  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                                #  1     0x79c80  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)                                                                                 #  2     0x79c85  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                                      #  3     0x79c8a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                       #  4     0x79c8d  3      OPC=addq_r64_r64    
  movl 0x28(%rsp), %ebx                                                                                 #  5     0x79c90  4      OPC=movl_r32_m32    
  movl 0x20(%rsp), %r8d                                                                                 #  6     0x79c94  5      OPC=movl_r32_m32    
  movl %r9d, %r12d                                                                                      #  7     0x79c99  3      OPC=movl_r32_r32    
  movl %edx, %eax                                                                                       #  8     0x79c9c  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                                                                        #  9     0x79c9e  2      OPC=xchgw_ax_r16    
  movl %r12d, %edi                                                                                      #  10    0x79ca0  3      OPC=movl_r32_r32    
  movl %esi, %edx                                                                                       #  11    0x79ca3  2      OPC=movl_r32_r32    
  movsbl %cl, %esi                                                                                      #  12    0x79ca5  3      OPC=movsbl_r32_r8   
  movl %eax, %ecx                                                                                       #  13    0x79ca8  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                                       #  14    0x79caa  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d                                                                              #  15    0x79cac  4      OPC=movl_r32_m32    
  addl %r8d, %r9d                                                                                       #  16    0x79cb0  3      OPC=addl_r32_r32    
  nop                                                                                                   #  17    0x79cb3  1      OPC=nop             
  nop                                                                                                   #  18    0x79cb4  1      OPC=nop             
  nop                                                                                                   #  19    0x79cb5  1      OPC=nop             
  nop                                                                                                   #  20    0x79cb6  1      OPC=nop             
  nop                                                                                                   #  21    0x79cb7  1      OPC=nop             
  nop                                                                                                   #  22    0x79cb8  1      OPC=nop             
  nop                                                                                                   #  23    0x79cb9  1      OPC=nop             
  nop                                                                                                   #  24    0x79cba  1      OPC=nop             
  callq ._ZSt14__add_groupingIcEPT_S1_S0_PKcjPKS0_S5_                                                   #  25    0x79cbb  5      OPC=callq_label     
  subl %r12d, %eax                                                                                      #  26    0x79cc0  3      OPC=subl_r32_r32    
  movl %ebx, %ebx                                                                                       #  27    0x79cc3  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                              #  28    0x79cc5  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                                                                  #  29    0x79cc9  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                                 #  30    0x79cce  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                                      #  31    0x79cd3  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                       #  32    0x79cd6  3      OPC=addq_r64_r64    
  popq %r11                                                                                             #  33    0x79cd9  2      OPC=popq_r64_1      
  nop                                                                                                   #  34    0x79cdb  1      OPC=nop             
  nop                                                                                                   #  35    0x79cdc  1      OPC=nop             
  nop                                                                                                   #  36    0x79cdd  1      OPC=nop             
  nop                                                                                                   #  37    0x79cde  1      OPC=nop             
  nop                                                                                                   #  38    0x79cdf  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                                               #  39    0x79ce0  7      OPC=andl_r32_imm32  
  nop                                                                                                   #  40    0x79ce7  1      OPC=nop             
  nop                                                                                                   #  41    0x79ce8  1      OPC=nop             
  nop                                                                                                   #  42    0x79ce9  1      OPC=nop             
  nop                                                                                                   #  43    0x79cea  1      OPC=nop             
  addq %r15, %r11                                                                                       #  44    0x79ceb  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                             #  45    0x79cee  3      OPC=jmpq_r64        
  nop                                                                                                   #  46    0x79cf1  1      OPC=nop             
  nop                                                                                                   #  47    0x79cf2  1      OPC=nop             
  nop                                                                                                   #  48    0x79cf3  1      OPC=nop             
  nop                                                                                                   #  49    0x79cf4  1      OPC=nop             
  nop                                                                                                   #  50    0x79cf5  1      OPC=nop             
  nop                                                                                                   #  51    0x79cf6  1      OPC=nop             
  nop                                                                                                   #  52    0x79cf7  1      OPC=nop             
  nop                                                                                                   #  53    0x79cf8  1      OPC=nop             
  nop                                                                                                   #  54    0x79cf9  1      OPC=nop             
  nop                                                                                                   #  55    0x79cfa  1      OPC=nop             
  nop                                                                                                   #  56    0x79cfb  1      OPC=nop             
  nop                                                                                                   #  57    0x79cfc  1      OPC=nop             
  nop                                                                                                   #  58    0x79cfd  1      OPC=nop             
  nop                                                                                                   #  59    0x79cfe  1      OPC=nop             
  nop                                                                                                   #  60    0x79cff  1      OPC=nop             
  nop                                                                                                   #  61    0x79d00  1      OPC=nop             
  nop                                                                                                   #  62    0x79d01  1      OPC=nop             
  nop                                                                                                   #  63    0x79d02  1      OPC=nop             
  nop                                                                                                   #  64    0x79d03  1      OPC=nop             
  nop                                                                                                   #  65    0x79d04  1      OPC=nop             
  nop                                                                                                   #  66    0x79d05  1      OPC=nop             
  nop                                                                                                   #  67    0x79d06  1      OPC=nop             
                                                                                                                                                     
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE12_M_group_intEPKcjcRSt8ios_basePcS9_Ri, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE12_M_group_intEPKcjcRSt8ios_basePcS9_Ri

