  .text
  .globl _ZNSsC1EPKcjRKSaIcE
  .type _ZNSsC1EPKcjRKSaIcE, @function

#! file-offset 0xee000
#! rip-offset  0xae000
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1EPKcjRKSaIcE:                                                     #        0xae000  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xae000  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xae001  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xae003  2      OPC=movl_r32_r32    
  movl %ecx, %ecx                                                         #  4     0xae005  2      OPC=movl_r32_r32    
  leal (%rdx,%rdi,1), %esi                                                #  5     0xae007  3      OPC=leal_r32_m16    
  subl $0x10, %esp                                                        #  6     0xae00a  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xae00d  3      OPC=addq_r64_r64    
  movl %ecx, %edx                                                         #  8     0xae010  2      OPC=movl_r32_r32    
  movb $0x0, (%rsp)                                                       #  9     0xae012  4      OPC=movb_m8_imm8    
  nop                                                                     #  10    0xae016  1      OPC=nop             
  nop                                                                     #  11    0xae017  1      OPC=nop             
  nop                                                                     #  12    0xae018  1      OPC=nop             
  nop                                                                     #  13    0xae019  1      OPC=nop             
  nop                                                                     #  14    0xae01a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  15    0xae01b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  16    0xae020  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  17    0xae022  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  18    0xae026  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  19    0xae029  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  20    0xae02c  1      OPC=popq_r64_1      
  popq %r11                                                               #  21    0xae02d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  22    0xae02f  7      OPC=andl_r32_imm32  
  nop                                                                     #  23    0xae036  1      OPC=nop             
  nop                                                                     #  24    0xae037  1      OPC=nop             
  nop                                                                     #  25    0xae038  1      OPC=nop             
  nop                                                                     #  26    0xae039  1      OPC=nop             
  addq %r15, %r11                                                         #  27    0xae03a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  28    0xae03d  3      OPC=jmpq_r64        
  nop                                                                     #  29    0xae040  1      OPC=nop             
  nop                                                                     #  30    0xae041  1      OPC=nop             
  nop                                                                     #  31    0xae042  1      OPC=nop             
  nop                                                                     #  32    0xae043  1      OPC=nop             
  nop                                                                     #  33    0xae044  1      OPC=nop             
  nop                                                                     #  34    0xae045  1      OPC=nop             
  nop                                                                     #  35    0xae046  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1EPKcjRKSaIcE, .-_ZNSsC1EPKcjRKSaIcE

