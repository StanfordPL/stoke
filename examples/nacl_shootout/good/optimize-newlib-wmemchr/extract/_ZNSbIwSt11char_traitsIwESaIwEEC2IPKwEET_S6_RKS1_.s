  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC2IPKwEET_S6_RKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC2IPKwEET_S6_RKS1_, @function

#! file-offset 0x1173e0
#! rip-offset  0xd73e0
#! capacity    64 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC2IPKwEET_S6_RKS1_:                                               #        0xd73e0  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd73e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                                                 #  2     0xd73e1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                                                 #  3     0xd73e3  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                                                 #  4     0xd73e5  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                                                 #  5     0xd73e7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                                                #  6     0xd73e9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  7     0xd73ec  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                                               #  8     0xd73ef  4      OPC=movb_m8_imm8    
  nop                                                                                             #  9     0xd73f3  1      OPC=nop             
  nop                                                                                             #  10    0xd73f4  1      OPC=nop             
  nop                                                                                             #  11    0xd73f5  1      OPC=nop             
  nop                                                                                             #  12    0xd73f6  1      OPC=nop             
  nop                                                                                             #  13    0xd73f7  1      OPC=nop             
  nop                                                                                             #  14    0xd73f8  1      OPC=nop             
  nop                                                                                             #  15    0xd73f9  1      OPC=nop             
  nop                                                                                             #  16    0xd73fa  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPKwEEPwT_S7_RKS1_St20forward_iterator_tag  #  17    0xd73fb  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  18    0xd7400  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  19    0xd7402  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  20    0xd7406  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  21    0xd7409  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  22    0xd740c  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  23    0xd740d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  24    0xd740f  7      OPC=andl_r32_imm32  
  nop                                                                                             #  25    0xd7416  1      OPC=nop             
  nop                                                                                             #  26    0xd7417  1      OPC=nop             
  nop                                                                                             #  27    0xd7418  1      OPC=nop             
  nop                                                                                             #  28    0xd7419  1      OPC=nop             
  addq %r15, %r11                                                                                 #  29    0xd741a  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  30    0xd741d  3      OPC=jmpq_r64        
  nop                                                                                             #  31    0xd7420  1      OPC=nop             
  nop                                                                                             #  32    0xd7421  1      OPC=nop             
  nop                                                                                             #  33    0xd7422  1      OPC=nop             
  nop                                                                                             #  34    0xd7423  1      OPC=nop             
  nop                                                                                             #  35    0xd7424  1      OPC=nop             
  nop                                                                                             #  36    0xd7425  1      OPC=nop             
  nop                                                                                             #  37    0xd7426  1      OPC=nop             
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC2IPKwEET_S6_RKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC2IPKwEET_S6_RKS1_

