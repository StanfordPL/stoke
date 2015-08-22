  .text
  .globl _ZNSsC1IPcEET_S1_RKSaIcE
  .type _ZNSsC1IPcEET_S1_RKSaIcE, @function

#! file-offset 0xee200
#! rip-offset  0xae200
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC1IPcEET_S1_RKSaIcE:                                                #        0xae200  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xae200  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xae201  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xae203  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xae205  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xae207  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xae209  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xae20c  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xae20f  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xae213  1      OPC=nop             
  nop                                                                     #  10    0xae214  1      OPC=nop             
  nop                                                                     #  11    0xae215  1      OPC=nop             
  nop                                                                     #  12    0xae216  1      OPC=nop             
  nop                                                                     #  13    0xae217  1      OPC=nop             
  nop                                                                     #  14    0xae218  1      OPC=nop             
  nop                                                                     #  15    0xae219  1      OPC=nop             
  nop                                                                     #  16    0xae21a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  17    0xae21b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xae220  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xae222  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xae226  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xae229  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xae22c  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xae22d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xae22f  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xae236  1      OPC=nop             
  nop                                                                     #  26    0xae237  1      OPC=nop             
  nop                                                                     #  27    0xae238  1      OPC=nop             
  nop                                                                     #  28    0xae239  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xae23a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xae23d  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xae240  1      OPC=nop             
  nop                                                                     #  32    0xae241  1      OPC=nop             
  nop                                                                     #  33    0xae242  1      OPC=nop             
  nop                                                                     #  34    0xae243  1      OPC=nop             
  nop                                                                     #  35    0xae244  1      OPC=nop             
  nop                                                                     #  36    0xae245  1      OPC=nop             
  nop                                                                     #  37    0xae246  1      OPC=nop             
                                                                                                                       
.size _ZNSsC1IPcEET_S1_RKSaIcE, .-_ZNSsC1IPcEET_S1_RKSaIcE

