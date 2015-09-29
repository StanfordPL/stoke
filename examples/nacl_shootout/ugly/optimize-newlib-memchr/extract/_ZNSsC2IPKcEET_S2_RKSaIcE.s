  .text
  .globl _ZNSsC2IPKcEET_S2_RKSaIcE
  .type _ZNSsC2IPKcEET_S2_RKSaIcE, @function

#! file-offset 0xeddc0
#! rip-offset  0xaddc0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2IPKcEET_S2_RKSaIcE:                                               #        0xaddc0  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xaddc0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xaddc1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xaddc3  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xaddc5  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xaddc7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xaddc9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xaddcc  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xaddcf  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xaddd3  1      OPC=nop             
  nop                                                                     #  10    0xaddd4  1      OPC=nop             
  nop                                                                     #  11    0xaddd5  1      OPC=nop             
  nop                                                                     #  12    0xaddd6  1      OPC=nop             
  nop                                                                     #  13    0xaddd7  1      OPC=nop             
  nop                                                                     #  14    0xaddd8  1      OPC=nop             
  nop                                                                     #  15    0xaddd9  1      OPC=nop             
  nop                                                                     #  16    0xaddda  1      OPC=nop             
  callq ._ZNSs12_S_constructIPKcEEPcT_S3_RKSaIcESt20forward_iterator_tag  #  17    0xadddb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xadde0  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xadde2  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xadde6  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xadde9  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xaddec  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xadded  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xaddef  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xaddf6  1      OPC=nop             
  nop                                                                     #  26    0xaddf7  1      OPC=nop             
  nop                                                                     #  27    0xaddf8  1      OPC=nop             
  nop                                                                     #  28    0xaddf9  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xaddfa  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xaddfd  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xade00  1      OPC=nop             
  nop                                                                     #  32    0xade01  1      OPC=nop             
  nop                                                                     #  33    0xade02  1      OPC=nop             
  nop                                                                     #  34    0xade03  1      OPC=nop             
  nop                                                                     #  35    0xade04  1      OPC=nop             
  nop                                                                     #  36    0xade05  1      OPC=nop             
  nop                                                                     #  37    0xade06  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2IPKcEET_S2_RKSaIcE, .-_ZNSsC2IPKcEET_S2_RKSaIcE

