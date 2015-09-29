  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1IPwEET_S5_RKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1IPwEET_S5_RKS1_, @function

#! file-offset 0x118320
#! rip-offset  0xd8320
#! capacity    64 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC1IPwEET_S5_RKS1_:                                                #        0xd8320  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd8320  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                                                 #  2     0xd8321  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                                                 #  3     0xd8323  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                                                 #  4     0xd8325  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                                                 #  5     0xd8327  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                                                #  6     0xd8329  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  7     0xd832c  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                                               #  8     0xd832f  4      OPC=movb_m8_imm8    
  nop                                                                                             #  9     0xd8333  1      OPC=nop             
  nop                                                                                             #  10    0xd8334  1      OPC=nop             
  nop                                                                                             #  11    0xd8335  1      OPC=nop             
  nop                                                                                             #  12    0xd8336  1      OPC=nop             
  nop                                                                                             #  13    0xd8337  1      OPC=nop             
  nop                                                                                             #  14    0xd8338  1      OPC=nop             
  nop                                                                                             #  15    0xd8339  1      OPC=nop             
  nop                                                                                             #  16    0xd833a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPwEES4_T_S5_RKS1_St20forward_iterator_tag  #  17    0xd833b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  18    0xd8340  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  19    0xd8342  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  20    0xd8346  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  21    0xd8349  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  22    0xd834c  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  23    0xd834d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  24    0xd834f  7      OPC=andl_r32_imm32  
  nop                                                                                             #  25    0xd8356  1      OPC=nop             
  nop                                                                                             #  26    0xd8357  1      OPC=nop             
  nop                                                                                             #  27    0xd8358  1      OPC=nop             
  nop                                                                                             #  28    0xd8359  1      OPC=nop             
  addq %r15, %r11                                                                                 #  29    0xd835a  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  30    0xd835d  3      OPC=jmpq_r64        
  nop                                                                                             #  31    0xd8360  1      OPC=nop             
  nop                                                                                             #  32    0xd8361  1      OPC=nop             
  nop                                                                                             #  33    0xd8362  1      OPC=nop             
  nop                                                                                             #  34    0xd8363  1      OPC=nop             
  nop                                                                                             #  35    0xd8364  1      OPC=nop             
  nop                                                                                             #  36    0xd8365  1      OPC=nop             
  nop                                                                                             #  37    0xd8366  1      OPC=nop             
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC1IPwEET_S5_RKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC1IPwEET_S5_RKS1_

