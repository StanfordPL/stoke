  .text
  .globl _ZNSsC2EPKcjRKSaIcE
  .type _ZNSsC2EPKcjRKSaIcE, @function

#! file-offset 0xee040
#! rip-offset  0xae040
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2EPKcjRKSaIcE:                                                     #        0xae040  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xae040  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xae041  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xae043  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                         #  4     0xae045  2      OPC=movl_r32_r32    
  leal (%rdx,%rdi,1), %esi                                                #  5     0xae047  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                        #  6     0xae04a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xae04d  3      OPC=addq_r64_r64    
  movl %ecx, %edx                                                         #  8     0xae050  2      OPC=movl_r32_r32    
  movb $0x0, (%rsp)                                                       #  9     0xae052  4      OPC=movb_m8_imm8    
  nop                                                                     #  10    0xae056  1      OPC=nop             
  nop                                                                     #  11    0xae057  1      OPC=nop             
  nop                                                                     #  12    0xae058  1      OPC=nop             
  nop                                                                     #  13    0xae059  1      OPC=nop             
  nop                                                                     #  14    0xae05a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  15    0xae05b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  16    0xae060  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  17    0xae062  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  18    0xae066  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  19    0xae069  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  20    0xae06c  1      OPC=popq_r64_1      
  popq %r11                                                               #  21    0xae06d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  22    0xae06f  7      OPC=andl_r32_imm32  
  nop                                                                     #  23    0xae076  1      OPC=nop             
  nop                                                                     #  24    0xae077  1      OPC=nop             
  nop                                                                     #  25    0xae078  1      OPC=nop             
  nop                                                                     #  26    0xae079  1      OPC=nop             
  addq %r15, %r11                                                         #  27    0xae07a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  28    0xae07d  3      OPC=jmpq_r64        
  nop                                                                     #  29    0xae080  1      OPC=nop             
  nop                                                                     #  30    0xae081  1      OPC=nop             
  nop                                                                     #  31    0xae082  1      OPC=nop             
  nop                                                                     #  32    0xae083  1      OPC=nop             
  nop                                                                     #  33    0xae084  1      OPC=nop             
  nop                                                                     #  34    0xae085  1      OPC=nop             
  nop                                                                     #  35    0xae086  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2EPKcjRKSaIcE, .-_ZNSsC2EPKcjRKSaIcE

