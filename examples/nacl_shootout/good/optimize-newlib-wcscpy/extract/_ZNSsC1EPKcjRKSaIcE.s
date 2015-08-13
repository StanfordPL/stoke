  .text
  .globl _ZNSsC1EPKcjRKSaIcE
  .type _ZNSsC1EPKcjRKSaIcE, @function

#! file-offset 0xed5e0
#! rip-offset  0xad5e0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1EPKcjRKSaIcE:                                                     #        0xad5e0  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xad5e0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xad5e1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xad5e3  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                         #  4     0xad5e5  2      OPC=movl_r32_r32    
  leal (%rdx,%rdi,1), %esi                                                #  5     0xad5e7  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                        #  6     0xad5ea  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xad5ed  3      OPC=addq_r64_r64    
  movl %ecx, %edx                                                         #  8     0xad5f0  2      OPC=movl_r32_r32    
  movb $0x0, (%rsp)                                                       #  9     0xad5f2  4      OPC=movb_m8_imm8    
  nop                                                                     #  10    0xad5f6  1      OPC=nop             
  nop                                                                     #  11    0xad5f7  1      OPC=nop             
  nop                                                                     #  12    0xad5f8  1      OPC=nop             
  nop                                                                     #  13    0xad5f9  1      OPC=nop             
  nop                                                                     #  14    0xad5fa  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  15    0xad5fb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  16    0xad600  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  17    0xad602  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  18    0xad606  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  19    0xad609  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  20    0xad60c  1      OPC=popq_r64_1      
  popq %r11                                                               #  21    0xad60d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  22    0xad60f  7      OPC=andl_r32_imm32  
  nop                                                                     #  23    0xad616  1      OPC=nop             
  nop                                                                     #  24    0xad617  1      OPC=nop             
  nop                                                                     #  25    0xad618  1      OPC=nop             
  nop                                                                     #  26    0xad619  1      OPC=nop             
  addq %r15, %r11                                                         #  27    0xad61a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  28    0xad61d  3      OPC=jmpq_r64        
  nop                                                                     #  29    0xad620  1      OPC=nop             
  nop                                                                     #  30    0xad621  1      OPC=nop             
  nop                                                                     #  31    0xad622  1      OPC=nop             
  nop                                                                     #  32    0xad623  1      OPC=nop             
  nop                                                                     #  33    0xad624  1      OPC=nop             
  nop                                                                     #  34    0xad625  1      OPC=nop             
  nop                                                                     #  35    0xad626  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1EPKcjRKSaIcE, .-_ZNSsC1EPKcjRKSaIcE

