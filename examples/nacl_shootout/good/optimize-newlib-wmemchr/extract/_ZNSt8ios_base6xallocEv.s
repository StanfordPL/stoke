  .text
  .globl _ZNSt8ios_base6xallocEv
  .type _ZNSt8ios_base6xallocEv, @function

#! file-offset 0x127f20
#! rip-offset  0xe7f20
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZNSt8ios_base6xallocEv:     #        0xe7f20  0      OPC=<label>         
  movl 0xff90bc6(%rip), %eax  #  1     0xe7f20  6      OPC=movl_r32_m32    
  popq %r11                   #  2     0xe7f26  2      OPC=popq_r64_1      
  leal 0x1(%rax), %edx        #  3     0xe7f28  3      OPC=leal_r32_m16    
  addl $0x4, %eax             #  4     0xe7f2b  3      OPC=addl_r32_imm8   
  movl %edx, 0xff90bb8(%rip)  #  5     0xe7f2e  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d     #  6     0xe7f34  7      OPC=andl_r32_imm32  
  nop                         #  7     0xe7f3b  1      OPC=nop             
  nop                         #  8     0xe7f3c  1      OPC=nop             
  nop                         #  9     0xe7f3d  1      OPC=nop             
  nop                         #  10    0xe7f3e  1      OPC=nop             
  addq %r15, %r11             #  11    0xe7f3f  3      OPC=addq_r64_r64    
  jmpq %r11                   #  12    0xe7f42  3      OPC=jmpq_r64        
  nop                         #  13    0xe7f45  1      OPC=nop             
  nop                         #  14    0xe7f46  1      OPC=nop             
                                                                           
.size _ZNSt8ios_base6xallocEv, .-_ZNSt8ios_base6xallocEv

