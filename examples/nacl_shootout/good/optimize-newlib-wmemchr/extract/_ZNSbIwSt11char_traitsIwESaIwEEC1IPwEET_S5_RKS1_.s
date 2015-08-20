  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1IPwEET_S5_RKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1IPwEET_S5_RKS1_, @function

#! file-offset 0x117c00
#! rip-offset  0xd7c00
#! capacity    64 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC1IPwEET_S5_RKS1_:                                                #        0xd7c00  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd7c00  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                                                 #  2     0xd7c01  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                                                 #  3     0xd7c03  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                                                 #  4     0xd7c05  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                                                 #  5     0xd7c07  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                                                #  6     0xd7c09  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  7     0xd7c0c  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                                               #  8     0xd7c0f  4      OPC=movb_m8_imm8    
  nop                                                                                             #  9     0xd7c13  1      OPC=nop             
  nop                                                                                             #  10    0xd7c14  1      OPC=nop             
  nop                                                                                             #  11    0xd7c15  1      OPC=nop             
  nop                                                                                             #  12    0xd7c16  1      OPC=nop             
  nop                                                                                             #  13    0xd7c17  1      OPC=nop             
  nop                                                                                             #  14    0xd7c18  1      OPC=nop             
  nop                                                                                             #  15    0xd7c19  1      OPC=nop             
  nop                                                                                             #  16    0xd7c1a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  17    0xd7c1b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  18    0xd7c20  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  19    0xd7c22  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  20    0xd7c26  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  21    0xd7c29  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  22    0xd7c2c  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  23    0xd7c2d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  24    0xd7c2f  7      OPC=andl_r32_imm32  
  nop                                                                                             #  25    0xd7c36  1      OPC=nop             
  nop                                                                                             #  26    0xd7c37  1      OPC=nop             
  nop                                                                                             #  27    0xd7c38  1      OPC=nop             
  nop                                                                                             #  28    0xd7c39  1      OPC=nop             
  addq %r15, %r11                                                                                 #  29    0xd7c3a  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  30    0xd7c3d  3      OPC=jmpq_r64        
  nop                                                                                             #  31    0xd7c40  1      OPC=nop             
  nop                                                                                             #  32    0xd7c41  1      OPC=nop             
  nop                                                                                             #  33    0xd7c42  1      OPC=nop             
  nop                                                                                             #  34    0xd7c43  1      OPC=nop             
  nop                                                                                             #  35    0xd7c44  1      OPC=nop             
  nop                                                                                             #  36    0xd7c45  1      OPC=nop             
  nop                                                                                             #  37    0xd7c46  1      OPC=nop             
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC1IPwEET_S5_RKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC1IPwEET_S5_RKS1_

