  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC2EPKwjRKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC2EPKwjRKS1_, @function

#! file-offset 0x117d80
#! rip-offset  0xd7d80
#! capacity    64 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC2EPKwjRKS1_:                                                     #        0xd7d80  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd7d80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                                                 #  2     0xd7d81  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                                                 #  3     0xd7d83  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                                                 #  4     0xd7d85  2      OPC=movl_r32_r32    
  leal (%rdi,%rdx,4), %esi                                                                        #  5     0xd7d87  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                                                #  6     0xd7d8a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  7     0xd7d8d  3      OPC=addq_r64_r64    
  movl %ecx, %edx                                                                                 #  8     0xd7d90  2      OPC=movl_r32_r32    
  movb $0x0, (%rsp)                                                                               #  9     0xd7d92  4      OPC=movb_m8_imm8    
  nop                                                                                             #  10    0xd7d96  1      OPC=nop             
  nop                                                                                             #  11    0xd7d97  1      OPC=nop             
  nop                                                                                             #  12    0xd7d98  1      OPC=nop             
  nop                                                                                             #  13    0xd7d99  1      OPC=nop             
  nop                                                                                             #  14    0xd7d9a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPKwEEPwT_S7_RKS1_St20forward_iterator_tag  #  15    0xd7d9b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  16    0xd7da0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  17    0xd7da2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  18    0xd7da6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  19    0xd7da9  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  20    0xd7dac  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  21    0xd7dad  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  22    0xd7daf  7      OPC=andl_r32_imm32  
  nop                                                                                             #  23    0xd7db6  1      OPC=nop             
  nop                                                                                             #  24    0xd7db7  1      OPC=nop             
  nop                                                                                             #  25    0xd7db8  1      OPC=nop             
  nop                                                                                             #  26    0xd7db9  1      OPC=nop             
  addq %r15, %r11                                                                                 #  27    0xd7dba  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  28    0xd7dbd  3      OPC=jmpq_r64        
  nop                                                                                             #  29    0xd7dc0  1      OPC=nop             
  nop                                                                                             #  30    0xd7dc1  1      OPC=nop             
  nop                                                                                             #  31    0xd7dc2  1      OPC=nop             
  nop                                                                                             #  32    0xd7dc3  1      OPC=nop             
  nop                                                                                             #  33    0xd7dc4  1      OPC=nop             
  nop                                                                                             #  34    0xd7dc5  1      OPC=nop             
  nop                                                                                             #  35    0xd7dc6  1      OPC=nop             
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC2EPKwjRKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC2EPKwjRKS1_

