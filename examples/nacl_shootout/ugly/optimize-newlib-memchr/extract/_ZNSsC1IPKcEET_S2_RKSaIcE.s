  .text
  .globl _ZNSsC1IPKcEET_S2_RKSaIcE
  .type _ZNSsC1IPKcEET_S2_RKSaIcE, @function

#! file-offset 0xedd80
#! rip-offset  0xadd80
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1IPKcEET_S2_RKSaIcE:                                               #        0xadd80  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xadd80  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xadd81  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xadd83  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xadd85  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xadd87  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xadd89  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xadd8c  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xadd8f  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xadd93  1      OPC=nop             
  nop                                                                     #  10    0xadd94  1      OPC=nop             
  nop                                                                     #  11    0xadd95  1      OPC=nop             
  nop                                                                     #  12    0xadd96  1      OPC=nop             
  nop                                                                     #  13    0xadd97  1      OPC=nop             
  nop                                                                     #  14    0xadd98  1      OPC=nop             
  nop                                                                     #  15    0xadd99  1      OPC=nop             
  nop                                                                     #  16    0xadd9a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  17    0xadd9b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xadda0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xadda2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xadda6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xadda9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xaddac  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xaddad  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xaddaf  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xaddb6  1      OPC=nop             
  nop                                                                     #  26    0xaddb7  1      OPC=nop             
  nop                                                                     #  27    0xaddb8  1      OPC=nop             
  nop                                                                     #  28    0xaddb9  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xaddba  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xaddbd  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xaddc0  1      OPC=nop             
  nop                                                                     #  32    0xaddc1  1      OPC=nop             
  nop                                                                     #  33    0xaddc2  1      OPC=nop             
  nop                                                                     #  34    0xaddc3  1      OPC=nop             
  nop                                                                     #  35    0xaddc4  1      OPC=nop             
  nop                                                                     #  36    0xaddc5  1      OPC=nop             
  nop                                                                     #  37    0xaddc6  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1IPKcEET_S2_RKSaIcE, .-_ZNSsC1IPKcEET_S2_RKSaIcE

