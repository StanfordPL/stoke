  .text
  .globl _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE12_M_group_intEPKcjwRSt8ios_basePwS9_Ri
  .type _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE12_M_group_intEPKcjwRSt8ios_basePwS9_Ri, @function

#! file-offset 0xf2c20
#! rip-offset  0xb2c20
#! capacity    128 bytes

# Text                                                                                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE12_M_group_intEPKcjwRSt8ios_basePwS9_Ri:  #        0xb2c20  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                                #  1     0xb2c20  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)                                                                                 #  2     0xb2c25  5      OPC=movq_m64_r64    
  movl %esi, %ebx                                                                                       #  3     0xb2c2a  2      OPC=movl_r32_r32    
  subl $0x18, %esp                                                                                      #  4     0xb2c2c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                       #  5     0xb2c2f  3      OPC=addq_r64_r64    
  movl %edx, %eax                                                                                       #  6     0xb2c32  2      OPC=movl_r32_r32    
  movl %ebx, %edx                                                                                       #  7     0xb2c34  2      OPC=movl_r32_r32    
  movl 0x28(%rsp), %ebx                                                                                 #  8     0xb2c36  4      OPC=movl_r32_m32    
  movl 0x20(%rsp), %r8d                                                                                 #  9     0xb2c3a  5      OPC=movl_r32_m32    
  nop                                                                                                   #  10    0xb2c3f  1      OPC=nop             
  movl %r9d, %r12d                                                                                      #  11    0xb2c40  3      OPC=movl_r32_r32    
  movl %ecx, %esi                                                                                       #  12    0xb2c43  2      OPC=movl_r32_r32    
  movl %r12d, %edi                                                                                      #  13    0xb2c45  3      OPC=movl_r32_r32    
  movl %eax, %ecx                                                                                       #  14    0xb2c48  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                                       #  15    0xb2c4a  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d                                                                              #  16    0xb2c4c  4      OPC=movl_r32_m32    
  leal (%r8,%r9,4), %r9d                                                                                #  17    0xb2c50  4      OPC=leal_r32_m16    
  nop                                                                                                   #  18    0xb2c54  1      OPC=nop             
  nop                                                                                                   #  19    0xb2c55  1      OPC=nop             
  nop                                                                                                   #  20    0xb2c56  1      OPC=nop             
  nop                                                                                                   #  21    0xb2c57  1      OPC=nop             
  nop                                                                                                   #  22    0xb2c58  1      OPC=nop             
  nop                                                                                                   #  23    0xb2c59  1      OPC=nop             
  nop                                                                                                   #  24    0xb2c5a  1      OPC=nop             
  callq ._ZSt14__add_groupingIwEPT_S1_S0_PKcjPKS0_S5_                                                   #  25    0xb2c5b  5      OPC=callq_label     
  subl %r12d, %eax                                                                                      #  26    0xb2c60  3      OPC=subl_r32_r32    
  sarl $0x2, %eax                                                                                       #  27    0xb2c63  3      OPC=sarl_r32_imm8   
  movl %ebx, %ebx                                                                                       #  28    0xb2c66  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                              #  29    0xb2c68  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                                                                  #  30    0xb2c6c  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                                 #  31    0xb2c71  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                                      #  32    0xb2c76  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                       #  33    0xb2c79  3      OPC=addq_r64_r64    
  popq %r11                                                                                             #  34    0xb2c7c  2      OPC=popq_r64_1      
  xchgw %ax, %ax                                                                                        #  35    0xb2c7e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d                                                                               #  36    0xb2c80  7      OPC=andl_r32_imm32  
  nop                                                                                                   #  37    0xb2c87  1      OPC=nop             
  nop                                                                                                   #  38    0xb2c88  1      OPC=nop             
  nop                                                                                                   #  39    0xb2c89  1      OPC=nop             
  nop                                                                                                   #  40    0xb2c8a  1      OPC=nop             
  addq %r15, %r11                                                                                       #  41    0xb2c8b  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                             #  42    0xb2c8e  3      OPC=jmpq_r64        
  nop                                                                                                   #  43    0xb2c91  1      OPC=nop             
  nop                                                                                                   #  44    0xb2c92  1      OPC=nop             
  nop                                                                                                   #  45    0xb2c93  1      OPC=nop             
  nop                                                                                                   #  46    0xb2c94  1      OPC=nop             
  nop                                                                                                   #  47    0xb2c95  1      OPC=nop             
  nop                                                                                                   #  48    0xb2c96  1      OPC=nop             
  nop                                                                                                   #  49    0xb2c97  1      OPC=nop             
  nop                                                                                                   #  50    0xb2c98  1      OPC=nop             
  nop                                                                                                   #  51    0xb2c99  1      OPC=nop             
  nop                                                                                                   #  52    0xb2c9a  1      OPC=nop             
  nop                                                                                                   #  53    0xb2c9b  1      OPC=nop             
  nop                                                                                                   #  54    0xb2c9c  1      OPC=nop             
  nop                                                                                                   #  55    0xb2c9d  1      OPC=nop             
  nop                                                                                                   #  56    0xb2c9e  1      OPC=nop             
  nop                                                                                                   #  57    0xb2c9f  1      OPC=nop             
  nop                                                                                                   #  58    0xb2ca0  1      OPC=nop             
  nop                                                                                                   #  59    0xb2ca1  1      OPC=nop             
  nop                                                                                                   #  60    0xb2ca2  1      OPC=nop             
  nop                                                                                                   #  61    0xb2ca3  1      OPC=nop             
  nop                                                                                                   #  62    0xb2ca4  1      OPC=nop             
  nop                                                                                                   #  63    0xb2ca5  1      OPC=nop             
  nop                                                                                                   #  64    0xb2ca6  1      OPC=nop             
                                                                                                                                                     
.size _ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE12_M_group_intEPKcjwRSt8ios_basePwS9_Ri, .-_ZNKSt7num_putIwSt19ostreambuf_iteratorIwSt11char_traitsIwEEE12_M_group_intEPKcjwRSt8ios_basePwS9_Ri

