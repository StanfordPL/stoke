  .text
  .globl _ZNSt6locale18_S_initialize_onceEv
  .type _ZNSt6locale18_S_initialize_onceEv, @function

#! file-offset 0xa27c0
#! rip-offset  0x627c0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt6locale18_S_initialize_onceEv:  #        0x627c0  0      OPC=<label>         
  pushq %rbx                          #  1     0x627c0  1      OPC=pushq_r64_1     
  leal 0x10010ce9(%rip), %edi         #  2     0x627c1  6      OPC=leal_r32_m16    
  movl $0x100734b0, %ebx              #  3     0x627c7  5      OPC=movl_r32_imm32  
  movl $0x2, %esi                     #  4     0x627cc  5      OPC=movl_r32_imm32  
  nop                                 #  5     0x627d1  1      OPC=nop             
  nop                                 #  6     0x627d2  1      OPC=nop             
  nop                                 #  7     0x627d3  1      OPC=nop             
  nop                                 #  8     0x627d4  1      OPC=nop             
  nop                                 #  9     0x627d5  1      OPC=nop             
  nop                                 #  10    0x627d6  1      OPC=nop             
  nop                                 #  11    0x627d7  1      OPC=nop             
  nop                                 #  12    0x627d8  1      OPC=nop             
  nop                                 #  13    0x627d9  1      OPC=nop             
  nop                                 #  14    0x627da  1      OPC=nop             
  callq ._ZNSt6locale5_ImplC1Ej       #  15    0x627db  5      OPC=callq_label     
  movl %ebx, 0x1000fe3e(%rip)         #  16    0x627e0  6      OPC=movl_m32_r32    
  movl %ebx, 0x1000fe3c(%rip)         #  17    0x627e6  6      OPC=movl_m32_r32    
  popq %rbx                           #  18    0x627ec  1      OPC=popq_r64_1      
  popq %r11                           #  19    0x627ed  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  20    0x627ef  7      OPC=andl_r32_imm32  
  nop                                 #  21    0x627f6  1      OPC=nop             
  nop                                 #  22    0x627f7  1      OPC=nop             
  nop                                 #  23    0x627f8  1      OPC=nop             
  nop                                 #  24    0x627f9  1      OPC=nop             
  addq %r15, %r11                     #  25    0x627fa  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0x627fd  3      OPC=jmpq_r64        
  nop                                 #  27    0x62800  1      OPC=nop             
  nop                                 #  28    0x62801  1      OPC=nop             
  nop                                 #  29    0x62802  1      OPC=nop             
  nop                                 #  30    0x62803  1      OPC=nop             
  nop                                 #  31    0x62804  1      OPC=nop             
  nop                                 #  32    0x62805  1      OPC=nop             
  nop                                 #  33    0x62806  1      OPC=nop             
                                                                                   
.size _ZNSt6locale18_S_initialize_onceEv, .-_ZNSt6locale18_S_initialize_onceEv

