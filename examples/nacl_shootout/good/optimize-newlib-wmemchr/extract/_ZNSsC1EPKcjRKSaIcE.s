  .text
  .globl _ZNSsC1EPKcjRKSaIcE
  .type _ZNSsC1EPKcjRKSaIcE, @function

#! file-offset 0xed8e0
#! rip-offset  0xad8e0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1EPKcjRKSaIcE:                                                     #        0xad8e0  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad8e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad8e1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad8e3  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                         #  4     0xad8e5  2      OPC=movl_r32_r32    
  leal (%rdx,%rdi,1), %esi                                                #  5     0xad8e7  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                        #  6     0xad8ea  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xad8ed  3      OPC=addq_r64_r64    
  movl %ecx, %edx                                                         #  8     0xad8f0  2      OPC=movl_r32_r32    
  movb $0x0, (%rsp)                                                       #  9     0xad8f2  4      OPC=movb_m8_imm8    
  nop                                                                     #  10    0xad8f6  1      OPC=nop             
  nop                                                                     #  11    0xad8f7  1      OPC=nop             
  nop                                                                     #  12    0xad8f8  1      OPC=nop             
  nop                                                                     #  13    0xad8f9  1      OPC=nop             
  nop                                                                     #  14    0xad8fa  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  15    0xad8fb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  16    0xad900  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  17    0xad902  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  18    0xad906  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  19    0xad909  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  20    0xad90c  1      OPC=popq_r64_1      
  popq %r11                                                               #  21    0xad90d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  22    0xad90f  7      OPC=andl_r32_imm32  
  nop                                                                     #  23    0xad916  1      OPC=nop             
  nop                                                                     #  24    0xad917  1      OPC=nop             
  nop                                                                     #  25    0xad918  1      OPC=nop             
  nop                                                                     #  26    0xad919  1      OPC=nop             
  addq %r15, %r11                                                         #  27    0xad91a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  28    0xad91d  3      OPC=jmpq_r64        
  nop                                                                     #  29    0xad920  1      OPC=nop             
  nop                                                                     #  30    0xad921  1      OPC=nop             
  nop                                                                     #  31    0xad922  1      OPC=nop             
  nop                                                                     #  32    0xad923  1      OPC=nop             
  nop                                                                     #  33    0xad924  1      OPC=nop             
  nop                                                                     #  34    0xad925  1      OPC=nop             
  nop                                                                     #  35    0xad926  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1EPKcjRKSaIcE, .-_ZNSsC1EPKcjRKSaIcE

