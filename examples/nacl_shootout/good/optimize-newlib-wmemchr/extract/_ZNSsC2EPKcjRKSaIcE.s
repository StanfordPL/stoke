  .text
  .globl _ZNSsC2EPKcjRKSaIcE
  .type _ZNSsC2EPKcjRKSaIcE, @function

#! file-offset 0xed920
#! rip-offset  0xad920
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2EPKcjRKSaIcE:                                                     #        0xad920  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad920  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad921  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad923  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                         #  4     0xad925  2      OPC=movl_r32_r32    
  leal (%rdx,%rdi,1), %esi                                                #  5     0xad927  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                        #  6     0xad92a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xad92d  3      OPC=addq_r64_r64    
  movl %ecx, %edx                                                         #  8     0xad930  2      OPC=movl_r32_r32    
  movb $0x0, (%rsp)                                                       #  9     0xad932  4      OPC=movb_m8_imm8    
  nop                                                                     #  10    0xad936  1      OPC=nop             
  nop                                                                     #  11    0xad937  1      OPC=nop             
  nop                                                                     #  12    0xad938  1      OPC=nop             
  nop                                                                     #  13    0xad939  1      OPC=nop             
  nop                                                                     #  14    0xad93a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  15    0xad93b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  16    0xad940  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  17    0xad942  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  18    0xad946  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  19    0xad949  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  20    0xad94c  1      OPC=popq_r64_1      
  popq %r11                                                               #  21    0xad94d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  22    0xad94f  7      OPC=andl_r32_imm32  
  nop                                                                     #  23    0xad956  1      OPC=nop             
  nop                                                                     #  24    0xad957  1      OPC=nop             
  nop                                                                     #  25    0xad958  1      OPC=nop             
  nop                                                                     #  26    0xad959  1      OPC=nop             
  addq %r15, %r11                                                         #  27    0xad95a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  28    0xad95d  3      OPC=jmpq_r64        
  nop                                                                     #  29    0xad960  1      OPC=nop             
  nop                                                                     #  30    0xad961  1      OPC=nop             
  nop                                                                     #  31    0xad962  1      OPC=nop             
  nop                                                                     #  32    0xad963  1      OPC=nop             
  nop                                                                     #  33    0xad964  1      OPC=nop             
  nop                                                                     #  34    0xad965  1      OPC=nop             
  nop                                                                     #  35    0xad966  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2EPKcjRKSaIcE, .-_ZNSsC2EPKcjRKSaIcE

