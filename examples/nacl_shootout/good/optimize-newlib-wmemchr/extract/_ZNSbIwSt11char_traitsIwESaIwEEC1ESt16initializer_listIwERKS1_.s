  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1ESt16initializer_listIwERKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1ESt16initializer_listIwERKS1_, @function

#! file-offset 0x117420
#! rip-offset  0xd7420
#! capacity    64 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC1ESt16initializer_listIwERKS1_:                                  #        0xd7420  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd7420  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                                                 #  2     0xd7421  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                                                 #  3     0xd7423  2      OPC=movl_r32_r32    
  shrq $0x20, %rsi                                                                                #  4     0xd7425  4      OPC=shrq_r64_imm8   
  movl %edx, %edx                                                                                 #  5     0xd7429  2      OPC=movl_r32_r32    
  leal (%rdi,%rsi,4), %esi                                                                        #  6     0xd742b  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                                                #  7     0xd742e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  8     0xd7431  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                                               #  9     0xd7434  4      OPC=movb_m8_imm8    
  nop                                                                                             #  10    0xd7438  1      OPC=nop             
  nop                                                                                             #  11    0xd7439  1      OPC=nop             
  nop                                                                                             #  12    0xd743a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPKwEEPwT_S7_RKS1_St20forward_iterator_tag  #  13    0xd743b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  14    0xd7440  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  15    0xd7442  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  16    0xd7446  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  17    0xd7449  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  18    0xd744c  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  19    0xd744d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  20    0xd744f  7      OPC=andl_r32_imm32  
  nop                                                                                             #  21    0xd7456  1      OPC=nop             
  nop                                                                                             #  22    0xd7457  1      OPC=nop             
  nop                                                                                             #  23    0xd7458  1      OPC=nop             
  nop                                                                                             #  24    0xd7459  1      OPC=nop             
  addq %r15, %r11                                                                                 #  25    0xd745a  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  26    0xd745d  3      OPC=jmpq_r64        
  nop                                                                                             #  27    0xd7460  1      OPC=nop             
  nop                                                                                             #  28    0xd7461  1      OPC=nop             
  nop                                                                                             #  29    0xd7462  1      OPC=nop             
  nop                                                                                             #  30    0xd7463  1      OPC=nop             
  nop                                                                                             #  31    0xd7464  1      OPC=nop             
  nop                                                                                             #  32    0xd7465  1      OPC=nop             
  nop                                                                                             #  33    0xd7466  1      OPC=nop             
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC1ESt16initializer_listIwERKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC1ESt16initializer_listIwERKS1_

