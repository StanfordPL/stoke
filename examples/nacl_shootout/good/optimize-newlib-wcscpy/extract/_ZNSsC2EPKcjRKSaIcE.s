  .text
  .globl _ZNSsC2EPKcjRKSaIcE
  .type _ZNSsC2EPKcjRKSaIcE, @function

#! file-offset 0xed620
#! rip-offset  0xad620
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2EPKcjRKSaIcE:                                                     #        0xad620  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad620  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad621  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad623  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                         #  4     0xad625  2      OPC=movl_r32_r32    
  leal (%rdx,%rdi,1), %esi                                                #  5     0xad627  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                        #  6     0xad62a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xad62d  3      OPC=addq_r64_r64    
  movl %ecx, %edx                                                         #  8     0xad630  2      OPC=movl_r32_r32    
  movb $0x0, (%rsp)                                                       #  9     0xad632  4      OPC=movb_m8_imm8    
  nop                                                                     #  10    0xad636  1      OPC=nop             
  nop                                                                     #  11    0xad637  1      OPC=nop             
  nop                                                                     #  12    0xad638  1      OPC=nop             
  nop                                                                     #  13    0xad639  1      OPC=nop             
  nop                                                                     #  14    0xad63a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  15    0xad63b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  16    0xad640  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  17    0xad642  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  18    0xad646  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  19    0xad649  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  20    0xad64c  1      OPC=popq_r64_1      
  popq %r11                                                               #  21    0xad64d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  22    0xad64f  7      OPC=andl_r32_imm32  
  nop                                                                     #  23    0xad656  1      OPC=nop             
  nop                                                                     #  24    0xad657  1      OPC=nop             
  nop                                                                     #  25    0xad658  1      OPC=nop             
  nop                                                                     #  26    0xad659  1      OPC=nop             
  addq %r15, %r11                                                         #  27    0xad65a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  28    0xad65d  3      OPC=jmpq_r64        
  nop                                                                     #  29    0xad660  1      OPC=nop             
  nop                                                                     #  30    0xad661  1      OPC=nop             
  nop                                                                     #  31    0xad662  1      OPC=nop             
  nop                                                                     #  32    0xad663  1      OPC=nop             
  nop                                                                     #  33    0xad664  1      OPC=nop             
  nop                                                                     #  34    0xad665  1      OPC=nop             
  nop                                                                     #  35    0xad666  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2EPKcjRKSaIcE, .-_ZNSsC2EPKcjRKSaIcE

