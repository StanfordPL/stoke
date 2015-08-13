  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEEC1ESt16initializer_listIwERKS1_
  .type _ZNSbIwSt11char_traitsIwESaIwEEC1ESt16initializer_listIwERKS1_, @function

#! file-offset 0x117120
#! rip-offset  0xd7120
#! capacity    64 bytes

# Text                                                                                            #  Line  RIP      Bytes  Opcode              
._ZNSbIwSt11char_traitsIwESaIwEEC1ESt16initializer_listIwERKS1_:                                  #        0xd7120  0      OPC=<label>         
  pushq %rbx                                                                                      #  1     0xd7120  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                                                 #  2     0xd7121  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                                                 #  3     0xd7123  2      OPC=movl_r32_r32    
  shrq $0x20, %rsi                                                                                #  4     0xd7125  4      OPC=shrq_r64_imm8   
  movl %edx, %edx                                                                                 #  5     0xd7129  2      OPC=movl_r32_r32    
  leal (%rdi,%rsi,4), %esi                                                                        #  6     0xd712b  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                                                #  7     0xd712e  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                                                 #  8     0xd7131  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                                               #  9     0xd7134  4      OPC=movb_m8_imm8    
  nop                                                                                             #  10    0xd7138  1      OPC=nop             
  nop                                                                                             #  11    0xd7139  1      OPC=nop             
  nop                                                                                             #  12    0xd713a  1      OPC=nop             
  callq ._ZNSbIwSt11char_traitsIwESaIwEE12_S_constructIPKwEEPwT_S7_RKS1_St20forward_iterator_tag  #  13    0xd713b  5      OPC=callq_label     
  movl %ebx, %ebx                                                                                 #  14    0xd7140  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                                        #  15    0xd7142  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                                                #  16    0xd7146  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                                                 #  17    0xd7149  3      OPC=addq_r64_r64    
  popq %rbx                                                                                       #  18    0xd714c  1      OPC=popq_r64_1      
  popq %r11                                                                                       #  19    0xd714d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                                         #  20    0xd714f  7      OPC=andl_r32_imm32  
  nop                                                                                             #  21    0xd7156  1      OPC=nop             
  nop                                                                                             #  22    0xd7157  1      OPC=nop             
  nop                                                                                             #  23    0xd7158  1      OPC=nop             
  nop                                                                                             #  24    0xd7159  1      OPC=nop             
  addq %r15, %r11                                                                                 #  25    0xd715a  3      OPC=addq_r64_r64    
  jmpq %r11                                                                                       #  26    0xd715d  3      OPC=jmpq_r64        
  nop                                                                                             #  27    0xd7160  1      OPC=nop             
  nop                                                                                             #  28    0xd7161  1      OPC=nop             
  nop                                                                                             #  29    0xd7162  1      OPC=nop             
  nop                                                                                             #  30    0xd7163  1      OPC=nop             
  nop                                                                                             #  31    0xd7164  1      OPC=nop             
  nop                                                                                             #  32    0xd7165  1      OPC=nop             
  nop                                                                                             #  33    0xd7166  1      OPC=nop             
                                                                                                                                               
.size _ZNSbIwSt11char_traitsIwESaIwEEC1ESt16initializer_listIwERKS1_, .-_ZNSbIwSt11char_traitsIwESaIwEEC1ESt16initializer_listIwERKS1_

