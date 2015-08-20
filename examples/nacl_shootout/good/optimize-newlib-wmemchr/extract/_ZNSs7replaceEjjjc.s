  .text
  .globl _ZNSs7replaceEjjjc
  .type _ZNSs7replaceEjjjc, @function

#! file-offset 0xee960
#! rip-offset  0xae960
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs7replaceEjjjc:                    #        0xae960  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xae960  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xae962  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xae965  3      OPC=addq_r64_r64    
  movl %edx, %eax                       #  4     0xae968  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  5     0xae96a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx              #  6     0xae96c  4      OPC=movl_r32_m32    
  subl $0xc, %edx                       #  7     0xae970  3      OPC=subl_r32_imm8   
  movl %edx, %edx                       #  8     0xae973  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx              #  9     0xae975  4      OPC=movl_r32_m32    
  cmpl %edx, %esi                       #  10    0xae979  2      OPC=cmpl_r32_r32    
  nop                                   #  11    0xae97b  1      OPC=nop             
  nop                                   #  12    0xae97c  1      OPC=nop             
  nop                                   #  13    0xae97d  1      OPC=nop             
  nop                                   #  14    0xae97e  1      OPC=nop             
  nop                                   #  15    0xae97f  1      OPC=nop             
  ja .L_ae9a0                           #  16    0xae980  2      OPC=ja_label        
  subl %esi, %edx                       #  17    0xae982  2      OPC=subl_r32_r32    
  movsbl %r8b, %r8d                     #  18    0xae984  4      OPC=movsbl_r32_r8   
  cmpl %eax, %edx                       #  19    0xae988  2      OPC=cmpl_r32_r32    
  cmoval %eax, %edx                     #  20    0xae98a  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  21    0xae98d  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  22    0xae990  3      OPC=addq_r64_r64    
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  23    0xae993  5      OPC=jmpq_label_1    
  nop                                   #  24    0xae998  1      OPC=nop             
  nop                                   #  25    0xae999  1      OPC=nop             
  nop                                   #  26    0xae99a  1      OPC=nop             
  nop                                   #  27    0xae99b  1      OPC=nop             
  nop                                   #  28    0xae99c  1      OPC=nop             
  nop                                   #  29    0xae99d  1      OPC=nop             
  nop                                   #  30    0xae99e  1      OPC=nop             
  nop                                   #  31    0xae99f  1      OPC=nop             
.L_ae9a0:                               #        0xae9a0  0      OPC=<label>         
  movl $0x1003bb5d, %edi                #  32    0xae9a0  5      OPC=movl_r32_imm32  
  nop                                   #  33    0xae9a5  1      OPC=nop             
  nop                                   #  34    0xae9a6  1      OPC=nop             
  nop                                   #  35    0xae9a7  1      OPC=nop             
  nop                                   #  36    0xae9a8  1      OPC=nop             
  nop                                   #  37    0xae9a9  1      OPC=nop             
  nop                                   #  38    0xae9aa  1      OPC=nop             
  nop                                   #  39    0xae9ab  1      OPC=nop             
  nop                                   #  40    0xae9ac  1      OPC=nop             
  nop                                   #  41    0xae9ad  1      OPC=nop             
  nop                                   #  42    0xae9ae  1      OPC=nop             
  nop                                   #  43    0xae9af  1      OPC=nop             
  nop                                   #  44    0xae9b0  1      OPC=nop             
  nop                                   #  45    0xae9b1  1      OPC=nop             
  nop                                   #  46    0xae9b2  1      OPC=nop             
  nop                                   #  47    0xae9b3  1      OPC=nop             
  nop                                   #  48    0xae9b4  1      OPC=nop             
  nop                                   #  49    0xae9b5  1      OPC=nop             
  nop                                   #  50    0xae9b6  1      OPC=nop             
  nop                                   #  51    0xae9b7  1      OPC=nop             
  nop                                   #  52    0xae9b8  1      OPC=nop             
  nop                                   #  53    0xae9b9  1      OPC=nop             
  nop                                   #  54    0xae9ba  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  55    0xae9bb  5      OPC=callq_label     
                                                                                     
.size _ZNSs7replaceEjjjc, .-_ZNSs7replaceEjjjc

