  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1IPKwEET_S6_RKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1IPKwEET_S6_RKS1_, @function

#! file-offset 0x117ac0
#! rip-offset  0xd7ac0
#! capacity    64 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC1IPKwEET_S6_RKS1_:                                               #        0xd7ac0  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd7ac0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                                                 #  2     0xd7ac1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                                                 #  3     0xd7ac3  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                                                 #  4     0xd7ac5  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                                                 #  5     0xd7ac7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                                                #  6     0xd7ac9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  7     0xd7acc  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                                               #  8     0xd7acf  4      OPC=movb_m8_imm8    
  nop                                                                                             #  9     0xd7ad3  1      OPC=nop             
  nop                                                                                             #  10    0xd7ad4  1      OPC=nop             
  nop                                                                                             #  11    0xd7ad5  1      OPC=nop             
  nop                                                                                             #  12    0xd7ad6  1      OPC=nop             
  nop                                                                                             #  13    0xd7ad7  1      OPC=nop             
  nop                                                                                             #  14    0xd7ad8  1      OPC=nop             
  nop                                                                                             #  15    0xd7ad9  1      OPC=nop             
  nop                                                                                             #  16    0xd7ada  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPKwEEPwT_S7_RKS1_St20forward_iterator_tag  #  17    0xd7adb  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  18    0xd7ae0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  19    0xd7ae2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  20    0xd7ae6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  21    0xd7ae9  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  22    0xd7aec  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  23    0xd7aed  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  24    0xd7aef  7      OPC=andl_r32_imm32  
  nop                                                                                             #  25    0xd7af6  1      OPC=nop             
  nop                                                                                             #  26    0xd7af7  1      OPC=nop             
  nop                                                                                             #  27    0xd7af8  1      OPC=nop             
  nop                                                                                             #  28    0xd7af9  1      OPC=nop             
  addq %r15, %r11                                                                                 #  29    0xd7afa  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  30    0xd7afd  3      OPC=jmpq_r64        
  nop                                                                                             #  31    0xd7b00  1      OPC=nop             
  nop                                                                                             #  32    0xd7b01  1      OPC=nop             
  nop                                                                                             #  33    0xd7b02  1      OPC=nop             
  nop                                                                                             #  34    0xd7b03  1      OPC=nop             
  nop                                                                                             #  35    0xd7b04  1      OPC=nop             
  nop                                                                                             #  36    0xd7b05  1      OPC=nop             
  nop                                                                                             #  37    0xd7b06  1      OPC=nop             
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC1IPKwEET_S6_RKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC1IPKwEET_S6_RKS1_

