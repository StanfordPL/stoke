  .text
  .globl _ZNSsC1IPKcEET_S2_RKSaIcE
  .type _ZNSsC1IPKcEET_S2_RKSaIcE, @function

#! file-offset 0xed360
#! rip-offset  0xad360
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1IPKcEET_S2_RKSaIcE:                                               #        0xad360  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad360  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad361  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad363  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xad365  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xad367  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xad369  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xad36c  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xad36f  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xad373  1      OPC=nop             
  nop                                                                     #  10    0xad374  1      OPC=nop             
  nop                                                                     #  11    0xad375  1      OPC=nop             
  nop                                                                     #  12    0xad376  1      OPC=nop             
  nop                                                                     #  13    0xad377  1      OPC=nop             
  nop                                                                     #  14    0xad378  1      OPC=nop             
  nop                                                                     #  15    0xad379  1      OPC=nop             
  nop                                                                     #  16    0xad37a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  17    0xad37b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xad380  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xad382  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xad386  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xad389  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xad38c  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xad38d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xad38f  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xad396  1      OPC=nop             
  nop                                                                     #  26    0xad397  1      OPC=nop             
  nop                                                                     #  27    0xad398  1      OPC=nop             
  nop                                                                     #  28    0xad399  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xad39a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xad39d  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xad3a0  1      OPC=nop             
  nop                                                                     #  32    0xad3a1  1      OPC=nop             
  nop                                                                     #  33    0xad3a2  1      OPC=nop             
  nop                                                                     #  34    0xad3a3  1      OPC=nop             
  nop                                                                     #  35    0xad3a4  1      OPC=nop             
  nop                                                                     #  36    0xad3a5  1      OPC=nop             
  nop                                                                     #  37    0xad3a6  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1IPKcEET_S2_RKSaIcE, .-_ZNSsC1IPKcEET_S2_RKSaIcE

