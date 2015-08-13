  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1IPKwEET_S6_RKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1IPKwEET_S6_RKS1_, @function

#! file-offset 0x1170a0
#! rip-offset  0xd70a0
#! capacity    64 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC1IPKwEET_S6_RKS1_:                                               #        0xd70a0  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd70a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                                                 #  2     0xd70a1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                                                 #  3     0xd70a3  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                                                 #  4     0xd70a5  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                                                 #  5     0xd70a7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                                                #  6     0xd70a9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  7     0xd70ac  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                                               #  8     0xd70af  4      OPC=movb_m8_imm8    
  nop                                                                                             #  9     0xd70b3  1      OPC=nop             
  nop                                                                                             #  10    0xd70b4  1      OPC=nop             
  nop                                                                                             #  11    0xd70b5  1      OPC=nop             
  nop                                                                                             #  12    0xd70b6  1      OPC=nop             
  nop                                                                                             #  13    0xd70b7  1      OPC=nop             
  nop                                                                                             #  14    0xd70b8  1      OPC=nop             
  nop                                                                                             #  15    0xd70b9  1      OPC=nop             
  nop                                                                                             #  16    0xd70ba  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPKwEEPwT_S7_RKS1_St20forward_iterator_tag  #  17    0xd70bb  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  18    0xd70c0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  19    0xd70c2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  20    0xd70c6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  21    0xd70c9  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  22    0xd70cc  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  23    0xd70cd  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  24    0xd70cf  7      OPC=andl_r32_imm32  
  nop                                                                                             #  25    0xd70d6  1      OPC=nop             
  nop                                                                                             #  26    0xd70d7  1      OPC=nop             
  nop                                                                                             #  27    0xd70d8  1      OPC=nop             
  nop                                                                                             #  28    0xd70d9  1      OPC=nop             
  addq %r15, %r11                                                                                 #  29    0xd70da  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  30    0xd70dd  3      OPC=jmpq_r64        
  nop                                                                                             #  31    0xd70e0  1      OPC=nop             
  nop                                                                                             #  32    0xd70e1  1      OPC=nop             
  nop                                                                                             #  33    0xd70e2  1      OPC=nop             
  nop                                                                                             #  34    0xd70e3  1      OPC=nop             
  nop                                                                                             #  35    0xd70e4  1      OPC=nop             
  nop                                                                                             #  36    0xd70e5  1      OPC=nop             
  nop                                                                                             #  37    0xd70e6  1      OPC=nop             
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC1IPKwEET_S6_RKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC1IPKwEET_S6_RKS1_

