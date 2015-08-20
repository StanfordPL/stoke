  .text
  .globl _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE12_M_group_intEPKcjcRSt8ios_basePcS9_Ri
  .type _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE12_M_group_intEPKcjcRSt8ios_basePcS9_Ri, @function

#! file-offset 0xb9560
#! rip-offset  0x79560
#! capacity    128 bytes

# Text                                                                                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE12_M_group_intEPKcjcRSt8ios_basePcS9_Ri:  #        0x79560  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)                                                                                #  1     0x79560  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)                                                                                 #  2     0x79565  5      OPC=movq_m64_r64    
  subl $0x18, %esp                                                                                      #  3     0x7956a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                       #  4     0x7956d  3      OPC=addq_r64_r64    
  movl 0x28(%rsp), %ebx                                                                                 #  5     0x79570  4      OPC=movl_r32_m32    
  movl 0x20(%rsp), %r8d                                                                                 #  6     0x79574  5      OPC=movl_r32_m32    
  movl %r9d, %r12d                                                                                      #  7     0x79579  3      OPC=movl_r32_r32    
  movl %edx, %eax                                                                                       #  8     0x7957c  2      OPC=movl_r32_r32    
  xchgw %ax, %ax                                                                                        #  9     0x7957e  2      OPC=xchgw_ax_r16    
  movl %r12d, %edi                                                                                      #  10    0x79580  3      OPC=movl_r32_r32    
  movl %esi, %edx                                                                                       #  11    0x79583  2      OPC=movl_r32_r32    
  movsbl %cl, %esi                                                                                      #  12    0x79585  3      OPC=movsbl_r32_r8   
  movl %eax, %ecx                                                                                       #  13    0x79588  2      OPC=movl_r32_r32    
  movl %ebx, %ebx                                                                                       #  14    0x7958a  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %r9d                                                                              #  15    0x7958c  4      OPC=movl_r32_m32    
  addl %r8d, %r9d                                                                                       #  16    0x79590  3      OPC=addl_r32_r32    
  nop                                                                                                   #  17    0x79593  1      OPC=nop             
  nop                                                                                                   #  18    0x79594  1      OPC=nop             
  nop                                                                                                   #  19    0x79595  1      OPC=nop             
  nop                                                                                                   #  20    0x79596  1      OPC=nop             
  nop                                                                                                   #  21    0x79597  1      OPC=nop             
  nop                                                                                                   #  22    0x79598  1      OPC=nop             
  nop                                                                                                   #  23    0x79599  1      OPC=nop             
  nop                                                                                                   #  24    0x7959a  1      OPC=nop             
  callq ._ZSt14__add_groupingIcEPT_S1_S0_PKcjPKS0_S5_                                                   #  25    0x7959b  5      OPC=callq_label     
  subl %r12d, %eax                                                                                      #  26    0x795a0  3      OPC=subl_r32_r32    
  movl %ebx, %ebx                                                                                       #  27    0x795a3  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                              #  28    0x795a5  4      OPC=movl_m32_r32    
  movq 0x8(%rsp), %rbx                                                                                  #  29    0x795a9  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12                                                                                 #  30    0x795ae  5      OPC=movq_r64_m64    
  addl $0x18, %esp                                                                                      #  31    0x795b3  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                       #  32    0x795b6  3      OPC=addq_r64_r64    
  popq %r11                                                                                             #  33    0x795b9  2      OPC=popq_r64_1      
  nop                                                                                                   #  34    0x795bb  1      OPC=nop             
  nop                                                                                                   #  35    0x795bc  1      OPC=nop             
  nop                                                                                                   #  36    0x795bd  1      OPC=nop             
  nop                                                                                                   #  37    0x795be  1      OPC=nop             
  nop                                                                                                   #  38    0x795bf  1      OPC=nop             
  andl $0xffffffe0, %r11d                                                                               #  39    0x795c0  7      OPC=andl_r32_imm32  
  nop                                                                                                   #  40    0x795c7  1      OPC=nop             
  nop                                                                                                   #  41    0x795c8  1      OPC=nop             
  nop                                                                                                   #  42    0x795c9  1      OPC=nop             
  nop                                                                                                   #  43    0x795ca  1      OPC=nop             
  addq %r15, %r11                                                                                       #  44    0x795cb  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                             #  45    0x795ce  3      OPC=jmpq_r64        
  nop                                                                                                   #  46    0x795d1  1      OPC=nop             
  nop                                                                                                   #  47    0x795d2  1      OPC=nop             
  nop                                                                                                   #  48    0x795d3  1      OPC=nop             
  nop                                                                                                   #  49    0x795d4  1      OPC=nop             
  nop                                                                                                   #  50    0x795d5  1      OPC=nop             
  nop                                                                                                   #  51    0x795d6  1      OPC=nop             
  nop                                                                                                   #  52    0x795d7  1      OPC=nop             
  nop                                                                                                   #  53    0x795d8  1      OPC=nop             
  nop                                                                                                   #  54    0x795d9  1      OPC=nop             
  nop                                                                                                   #  55    0x795da  1      OPC=nop             
  nop                                                                                                   #  56    0x795db  1      OPC=nop             
  nop                                                                                                   #  57    0x795dc  1      OPC=nop             
  nop                                                                                                   #  58    0x795dd  1      OPC=nop             
  nop                                                                                                   #  59    0x795de  1      OPC=nop             
  nop                                                                                                   #  60    0x795df  1      OPC=nop             
  nop                                                                                                   #  61    0x795e0  1      OPC=nop             
  nop                                                                                                   #  62    0x795e1  1      OPC=nop             
  nop                                                                                                   #  63    0x795e2  1      OPC=nop             
  nop                                                                                                   #  64    0x795e3  1      OPC=nop             
  nop                                                                                                   #  65    0x795e4  1      OPC=nop             
  nop                                                                                                   #  66    0x795e5  1      OPC=nop             
  nop                                                                                                   #  67    0x795e6  1      OPC=nop             
                                                                                                                                                     
.size _ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE12_M_group_intEPKcjcRSt8ios_basePcS9_Ri, .-_ZNKSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE12_M_group_intEPKcjcRSt8ios_basePcS9_Ri

