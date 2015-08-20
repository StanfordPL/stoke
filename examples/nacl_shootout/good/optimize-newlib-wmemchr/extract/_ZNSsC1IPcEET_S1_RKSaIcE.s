  .text
  .globl _ZNSsC1IPcEET_S1_RKSaIcE
  .type _ZNSsC1IPcEET_S1_RKSaIcE, @function

#! file-offset 0xedae0
#! rip-offset  0xadae0
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1IPcEET_S1_RKSaIcE:                                                #        0xadae0  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xadae0  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xadae1  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xadae3  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xadae5  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xadae7  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xadae9  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xadaec  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xadaef  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xadaf3  1      OPC=nop             
  nop                                                                     #  10    0xadaf4  1      OPC=nop             
  nop                                                                     #  11    0xadaf5  1      OPC=nop             
  nop                                                                     #  12    0xadaf6  1      OPC=nop             
  nop                                                                     #  13    0xadaf7  1      OPC=nop             
  nop                                                                     #  14    0xadaf8  1      OPC=nop             
  nop                                                                     #  15    0xadaf9  1      OPC=nop             
  nop                                                                     #  16    0xadafa  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  17    0xadafb  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xadb00  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xadb02  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xadb06  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xadb09  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xadb0c  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xadb0d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xadb0f  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xadb16  1      OPC=nop             
  nop                                                                     #  26    0xadb17  1      OPC=nop             
  nop                                                                     #  27    0xadb18  1      OPC=nop             
  nop                                                                     #  28    0xadb19  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xadb1a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xadb1d  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xadb20  1      OPC=nop             
  nop                                                                     #  32    0xadb21  1      OPC=nop             
  nop                                                                     #  33    0xadb22  1      OPC=nop             
  nop                                                                     #  34    0xadb23  1      OPC=nop             
  nop                                                                     #  35    0xadb24  1      OPC=nop             
  nop                                                                     #  36    0xadb25  1      OPC=nop             
  nop                                                                     #  37    0xadb26  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1IPcEET_S1_RKSaIcE, .-_ZNSsC1IPcEET_S1_RKSaIcE

