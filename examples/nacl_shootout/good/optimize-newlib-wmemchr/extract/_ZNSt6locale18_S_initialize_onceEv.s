  .text
  .globl _ZNSt6locale18_S_initialize_onceEv
  .type _ZNSt6locale18_S_initialize_onceEv, @function

#! file-offset 0xa2ac0
#! rip-offset  0x62ac0
#! capacity    64 bytes

# Text                                #  Line  RIP      Bytes  Opcode              
._ZNSt6locale18_S_initialize_onceEv:  #        0x62ac0  0      OPC=<label>         
  pushq %rbx                          #  1     0x62ac0  1      OPC=pushq_r64_1     
  leal 0x100109e9(%rip), %edi         #  2     0x62ac1  6      OPC=leal_r32_m16    
  movl $0x100734b0, %ebx              #  3     0x62ac7  5      OPC=movl_r32_imm32  
  movl $0x2, %esi                     #  4     0x62acc  5      OPC=movl_r32_imm32  
  nop                                 #  5     0x62ad1  1      OPC=nop             
  nop                                 #  6     0x62ad2  1      OPC=nop             
  nop                                 #  7     0x62ad3  1      OPC=nop             
  nop                                 #  8     0x62ad4  1      OPC=nop             
  nop                                 #  9     0x62ad5  1      OPC=nop             
  nop                                 #  10    0x62ad6  1      OPC=nop             
  nop                                 #  11    0x62ad7  1      OPC=nop             
  nop                                 #  12    0x62ad8  1      OPC=nop             
  nop                                 #  13    0x62ad9  1      OPC=nop             
  nop                                 #  14    0x62ada  1      OPC=nop             
  callq ._ZNSt6locale5_ImplC1Ej       #  15    0x62adb  5      OPC=callq_label     
  movl %ebx, 0x1000fb3e(%rip)         #  16    0x62ae0  6      OPC=movl_m32_r32    
  movl %ebx, 0x1000fb3c(%rip)         #  17    0x62ae6  6      OPC=movl_m32_r32    
  popq %rbx                           #  18    0x62aec  1      OPC=popq_r64_1      
  popq %r11                           #  19    0x62aed  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d             #  20    0x62aef  7      OPC=andl_r32_imm32  
  nop                                 #  21    0x62af6  1      OPC=nop             
  nop                                 #  22    0x62af7  1      OPC=nop             
  nop                                 #  23    0x62af8  1      OPC=nop             
  nop                                 #  24    0x62af9  1      OPC=nop             
  addq %r15, %r11                     #  25    0x62afa  3      OPC=addq_r64_r64    
  jmpq %r11                           #  26    0x62afd  3      OPC=jmpq_r64        
  nop                                 #  27    0x62b00  1      OPC=nop             
  nop                                 #  28    0x62b01  1      OPC=nop             
  nop                                 #  29    0x62b02  1      OPC=nop             
  nop                                 #  30    0x62b03  1      OPC=nop             
  nop                                 #  31    0x62b04  1      OPC=nop             
  nop                                 #  32    0x62b05  1      OPC=nop             
  nop                                 #  33    0x62b06  1      OPC=nop             
                                                                                   
.size _ZNSt6locale18_S_initialize_onceEv, .-_ZNSt6locale18_S_initialize_onceEv

