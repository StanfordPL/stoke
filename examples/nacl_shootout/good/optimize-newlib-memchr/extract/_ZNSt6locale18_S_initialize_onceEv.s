  .text
  .globl _ZNSt6locale18_S_initialize_onceEv
  .type _ZNSt6locale18_S_initialize_onceEv, @function

#! file-offset 0xa31e0
#! rip-offset  0x631e0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt6locale18_S_initialize_onceEv:  #        0x631e0  0      OPC=<label>         
  pushq %rbx                          #  1     0x631e0  1      OPC=pushq_r64_1     
  leal 0x100102c9(%rip), %edi         #  2     0x631e1  6      OPC=leal_r32_m16    
  movl $0x100734b0, %ebx              #  3     0x631e7  5      OPC=movl_r32_imm32  
  movl $0x2, %esi                     #  4     0x631ec  5      OPC=movl_r32_imm32  
  nop                                 #  5     0x631f1  1      OPC=nop             
  nop                                 #  6     0x631f2  1      OPC=nop             
  nop                                 #  7     0x631f3  1      OPC=nop             
  nop                                 #  8     0x631f4  1      OPC=nop             
  nop                                 #  9     0x631f5  1      OPC=nop             
  nop                                 #  10    0x631f6  1      OPC=nop             
  nop                                 #  11    0x631f7  1      OPC=nop             
  nop                                 #  12    0x631f8  1      OPC=nop             
  nop                                 #  13    0x631f9  1      OPC=nop             
  nop                                 #  14    0x631fa  1      OPC=nop             
  callq ._ZNSt6locale5_ImplC1Ej       #  15    0x631fb  5      OPC=callq_label     
  movl %ebx, 0x1000f41e(%rip)         #  16    0x63200  6      OPC=movl_m32_r32    
  movl %ebx, 0x1000f41c(%rip)         #  17    0x63206  6      OPC=movl_m32_r32    
  popq %rbx                           #  18    0x6320c  1      OPC=popq_r64_1      
  popq %r11                           #  19    0x6320d  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  20    0x6320f  7      OPC=andl_r32_imm32  
  nop                                 #  21    0x63216  1      OPC=nop             
  nop                                 #  22    0x63217  1      OPC=nop             
  nop                                 #  23    0x63218  1      OPC=nop             
  nop                                 #  24    0x63219  1      OPC=nop             
  addq %r15, %r11                     #  25    0x6321a  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0x6321d  3      OPC=jmpq_r64        
  nop                                 #  27    0x63220  1      OPC=nop             
  nop                                 #  28    0x63221  1      OPC=nop             
  nop                                 #  29    0x63222  1      OPC=nop             
  nop                                 #  30    0x63223  1      OPC=nop             
  nop                                 #  31    0x63224  1      OPC=nop             
  nop                                 #  32    0x63225  1      OPC=nop             
  nop                                 #  33    0x63226  1      OPC=nop             
                                                                                   
.size _ZNSt6locale18_S_initialize_onceEv, .-_ZNSt6locale18_S_initialize_onceEv

