  .text
  .globl _ZNSsC1IPKcEET_S2_RKSaIcE
  .type _ZNSsC1IPKcEET_S2_RKSaIcE, @function

#! file-offset 0xed660
#! rip-offset  0xad660
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1IPKcEET_S2_RKSaIcE:                                               #        0xad660  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad660  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad661  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad663  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xad665  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xad667  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xad669  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xad66c  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xad66f  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xad673  1      OPC=nop             
  nop                                                                     #  10    0xad674  1      OPC=nop             
  nop                                                                     #  11    0xad675  1      OPC=nop             
  nop                                                                     #  12    0xad676  1      OPC=nop             
  nop                                                                     #  13    0xad677  1      OPC=nop             
  nop                                                                     #  14    0xad678  1      OPC=nop             
  nop                                                                     #  15    0xad679  1      OPC=nop             
  nop                                                                     #  16    0xad67a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  17    0xad67b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xad680  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xad682  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xad686  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xad689  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xad68c  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xad68d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xad68f  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xad696  1      OPC=nop             
  nop                                                                     #  26    0xad697  1      OPC=nop             
  nop                                                                     #  27    0xad698  1      OPC=nop             
  nop                                                                     #  28    0xad699  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xad69a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xad69d  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xad6a0  1      OPC=nop             
  nop                                                                     #  32    0xad6a1  1      OPC=nop             
  nop                                                                     #  33    0xad6a2  1      OPC=nop             
  nop                                                                     #  34    0xad6a3  1      OPC=nop             
  nop                                                                     #  35    0xad6a4  1      OPC=nop             
  nop                                                                     #  36    0xad6a5  1      OPC=nop             
  nop                                                                     #  37    0xad6a6  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1IPKcEET_S2_RKSaIcE, .-_ZNSsC1IPKcEET_S2_RKSaIcE

