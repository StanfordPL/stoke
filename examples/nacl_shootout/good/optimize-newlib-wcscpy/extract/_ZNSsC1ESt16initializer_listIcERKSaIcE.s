  .text
  .globl _ZNSsC1ESt16initializer_listIcERKSaIcE
  .type _ZNSsC1ESt16initializer_listIcERKSaIcE, @function

#! file-offset 0xed3e0
#! rip-offset  0xad3e0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1ESt16initializer_listIcERKSaIcE:                                  #        0xad3e0  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad3e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad3e1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad3e3  2      OPC=movl_r32_r32    
  shrq $0x20, %rsi                                                        #  4     0xad3e5  4      OPC=shrq_r64_imm8   
  movl %edx, %edx                                                         #  5     0xad3e9  2      OPC=movl_r32_r32    
  leal (%rdi,%rsi,1), %esi                                                #  6     0xad3eb  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                        #  7     0xad3ee  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  8     0xad3f1  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  9     0xad3f4  4      OPC=movb_m8_imm8    
  nop                                                                     #  10    0xad3f8  1      OPC=nop             
  nop                                                                     #  11    0xad3f9  1      OPC=nop             
  nop                                                                     #  12    0xad3fa  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  13    0xad3fb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  14    0xad400  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  15    0xad402  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  16    0xad406  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  17    0xad409  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  18    0xad40c  1      OPC=popq_r64_1      
  popq %r11                                                               #  19    0xad40d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  20    0xad40f  7      OPC=andl_r32_imm32  
  nop                                                                     #  21    0xad416  1      OPC=nop             
  nop                                                                     #  22    0xad417  1      OPC=nop             
  nop                                                                     #  23    0xad418  1      OPC=nop             
  nop                                                                     #  24    0xad419  1      OPC=nop             
  addq %r15, %r11                                                         #  25    0xad41a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  26    0xad41d  3      OPC=jmpq_r64        
  nop                                                                     #  27    0xad420  1      OPC=nop             
  nop                                                                     #  28    0xad421  1      OPC=nop             
  nop                                                                     #  29    0xad422  1      OPC=nop             
  nop                                                                     #  30    0xad423  1      OPC=nop             
  nop                                                                     #  31    0xad424  1      OPC=nop             
  nop                                                                     #  32    0xad425  1      OPC=nop             
  nop                                                                     #  33    0xad426  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1ESt16initializer_listIcERKSaIcE, .-_ZNSsC1ESt16initializer_listIcERKSaIcE

