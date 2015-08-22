  .text
  .globl _ZNSsC2IPcEET_S1_RKSaIcE
  .type _ZNSsC2IPcEET_S1_RKSaIcE, @function

#! file-offset 0xee240
#! rip-offset  0xae240
#! capacity    64 bytes

# Text                                                                    #  Line  RIP      Bytes  Opcode              
._ZNSsC2IPcEET_S1_RKSaIcE:                                                #        0xae240  0      OPC=<label>         
  pushq %rbx                                                              #  1     0xae240  1      OPC=pushq_r64_1     
  movl %edi, %ebx                                                         #  2     0xae241  2      OPC=movl_r32_r32    
  movl %esi, %edi                                                         #  3     0xae243  2      OPC=movl_r32_r32    
  movl %edx, %esi                                                         #  4     0xae245  2      OPC=movl_r32_r32    
  movl %ecx, %edx                                                         #  5     0xae247  2      OPC=movl_r32_r32    
  subl $0x10, %esp                                                        #  6     0xae249  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                                         #  7     0xae24c  3      OPC=addq_r64_r64    
  movb $0x0, (%rsp)                                                       #  8     0xae24f  4      OPC=movb_m8_imm8    
  nop                                                                     #  9     0xae253  1      OPC=nop             
  nop                                                                     #  10    0xae254  1      OPC=nop             
  nop                                                                     #  11    0xae255  1      OPC=nop             
  nop                                                                     #  12    0xae256  1      OPC=nop             
  nop                                                                     #  13    0xae257  1      OPC=nop             
  nop                                                                     #  14    0xae258  1      OPC=nop             
  nop                                                                     #  15    0xae259  1      OPC=nop             
  nop                                                                     #  16    0xae25a  1      OPC=nop             
  callq ._ZNSs12_S_constructIPcEES0_T_S1_RKSaIcESt20forward_iterator_tag  #  17    0xae25b  5      OPC=callq_label     
  movl %ebx, %ebx                                                         #  18    0xae260  2      OPC=movl_r32_r32    
  movl %eax, (%r15,%rbx,1)                                                #  19    0xae262  4      OPC=movl_m32_r32    
  addl $0x10, %esp                                                        #  20    0xae266  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                                         #  21    0xae269  3      OPC=addq_r64_r64    
  popq %rbx                                                               #  22    0xae26c  1      OPC=popq_r64_1      
  popq %r11                                                               #  23    0xae26d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                                                 #  24    0xae26f  7      OPC=andl_r32_imm32  
  nop                                                                     #  25    0xae276  1      OPC=nop             
  nop                                                                     #  26    0xae277  1      OPC=nop             
  nop                                                                     #  27    0xae278  1      OPC=nop             
  nop                                                                     #  28    0xae279  1      OPC=nop             
  addq %r15, %r11                                                         #  29    0xae27a  3      OPC=addq_r64_r64    
  jmpq %r11                                                               #  30    0xae27d  3      OPC=jmpq_r64        
  nop                                                                     #  31    0xae280  1      OPC=nop             
  nop                                                                     #  32    0xae281  1      OPC=nop             
  nop                                                                     #  33    0xae282  1      OPC=nop             
  nop                                                                     #  34    0xae283  1      OPC=nop             
  nop                                                                     #  35    0xae284  1      OPC=nop             
  nop                                                                     #  36    0xae285  1      OPC=nop             
  nop                                                                     #  37    0xae286  1      OPC=nop             
                                                                                                                       
.size _ZNSsC2IPcEET_S1_RKSaIcE, .-_ZNSsC2IPcEET_S1_RKSaIcE

