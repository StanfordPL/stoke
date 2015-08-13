  .text
  .globl _ZNSs7replaceEjjjc
  .type _ZNSs7replaceEjjjc, @function

#! file-offset 0xee660
#! rip-offset  0xae660
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode              
._ZNSs7replaceEjjjc:                    #        0xae660  0      OPC=<label>         
  movl %edi, %edi                       #  1     0xae660  2      OPC=movl_r32_r32    
  subl $0x8, %esp                       #  2     0xae662  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                       #  3     0xae665  3      OPC=addq_r64_r64    
  movl %edx, %eax                       #  4     0xae668  2      OPC=movl_r32_r32    
  movl %edi, %edi                       #  5     0xae66a  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %edx              #  6     0xae66c  4      OPC=movl_r32_m32    
  subl $0xc, %edx                       #  7     0xae670  3      OPC=subl_r32_imm8   
  movl %edx, %edx                       #  8     0xae673  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %edx              #  9     0xae675  4      OPC=movl_r32_m32    
  cmpl %edx, %esi                       #  10    0xae679  2      OPC=cmpl_r32_r32    
  nop                                   #  11    0xae67b  1      OPC=nop             
  nop                                   #  12    0xae67c  1      OPC=nop             
  nop                                   #  13    0xae67d  1      OPC=nop             
  nop                                   #  14    0xae67e  1      OPC=nop             
  nop                                   #  15    0xae67f  1      OPC=nop             
  ja .L_ae6a0                           #  16    0xae680  2      OPC=ja_label        
  subl %esi, %edx                       #  17    0xae682  2      OPC=subl_r32_r32    
  movsbl %r8b, %r8d                     #  18    0xae684  4      OPC=movsbl_r32_r8   
  cmpl %eax, %edx                       #  19    0xae688  2      OPC=cmpl_r32_r32    
  cmoval %eax, %edx                     #  20    0xae68a  3      OPC=cmoval_r32_r32  
  addl $0x8, %esp                       #  21    0xae68d  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                       #  22    0xae690  3      OPC=addq_r64_r64    
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  23    0xae693  5      OPC=jmpq_label_1    
  nop                                   #  24    0xae698  1      OPC=nop             
  nop                                   #  25    0xae699  1      OPC=nop             
  nop                                   #  26    0xae69a  1      OPC=nop             
  nop                                   #  27    0xae69b  1      OPC=nop             
  nop                                   #  28    0xae69c  1      OPC=nop             
  nop                                   #  29    0xae69d  1      OPC=nop             
  nop                                   #  30    0xae69e  1      OPC=nop             
  nop                                   #  31    0xae69f  1      OPC=nop             
.L_ae6a0:                               #        0xae6a0  0      OPC=<label>         
  movl $0x1003bb5d, %edi                #  32    0xae6a0  5      OPC=movl_r32_imm32  
  nop                                   #  33    0xae6a5  1      OPC=nop             
  nop                                   #  34    0xae6a6  1      OPC=nop             
  nop                                   #  35    0xae6a7  1      OPC=nop             
  nop                                   #  36    0xae6a8  1      OPC=nop             
  nop                                   #  37    0xae6a9  1      OPC=nop             
  nop                                   #  38    0xae6aa  1      OPC=nop             
  nop                                   #  39    0xae6ab  1      OPC=nop             
  nop                                   #  40    0xae6ac  1      OPC=nop             
  nop                                   #  41    0xae6ad  1      OPC=nop             
  nop                                   #  42    0xae6ae  1      OPC=nop             
  nop                                   #  43    0xae6af  1      OPC=nop             
  nop                                   #  44    0xae6b0  1      OPC=nop             
  nop                                   #  45    0xae6b1  1      OPC=nop             
  nop                                   #  46    0xae6b2  1      OPC=nop             
  nop                                   #  47    0xae6b3  1      OPC=nop             
  nop                                   #  48    0xae6b4  1      OPC=nop             
  nop                                   #  49    0xae6b5  1      OPC=nop             
  nop                                   #  50    0xae6b6  1      OPC=nop             
  nop                                   #  51    0xae6b7  1      OPC=nop             
  nop                                   #  52    0xae6b8  1      OPC=nop             
  nop                                   #  53    0xae6b9  1      OPC=nop             
  nop                                   #  54    0xae6ba  1      OPC=nop             
  callq ._ZSt20__throw_out_of_rangePKc  #  55    0xae6bb  5      OPC=callq_label     
                                                                                     
.size _ZNSs7replaceEjjjc, .-_ZNSs7replaceEjjjc

