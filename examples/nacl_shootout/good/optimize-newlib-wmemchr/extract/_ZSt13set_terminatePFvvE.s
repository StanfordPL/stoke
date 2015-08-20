  .text
  .globl _ZSt13set_terminatePFvvE
  .type _ZSt13set_terminatePFvvE, @function

#! file-offset 0x122620
#! rip-offset  0xe2620
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZSt13set_terminatePFvvE:    #        0xe2620  0      OPC=<label>         
  popq %r11                   #  1     0xe2620  2      OPC=popq_r64_1      
  movl 0xff8e300(%rip), %eax  #  2     0xe2622  6      OPC=movl_r32_m32    
  movl %edi, 0xff8e2fa(%rip)  #  3     0xe2628  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d     #  4     0xe262e  7      OPC=andl_r32_imm32  
  nop                         #  5     0xe2635  1      OPC=nop             
  nop                         #  6     0xe2636  1      OPC=nop             
  nop                         #  7     0xe2637  1      OPC=nop             
  nop                         #  8     0xe2638  1      OPC=nop             
  addq %r15, %r11             #  9     0xe2639  3      OPC=addq_r64_r64    
  jmpq %r11                   #  10    0xe263c  3      OPC=jmpq_r64        
  nop                         #  11    0xe263f  1      OPC=nop             
  nop                         #  12    0xe2640  1      OPC=nop             
  nop                         #  13    0xe2641  1      OPC=nop             
  nop                         #  14    0xe2642  1      OPC=nop             
  nop                         #  15    0xe2643  1      OPC=nop             
  nop                         #  16    0xe2644  1      OPC=nop             
  nop                         #  17    0xe2645  1      OPC=nop             
  nop                         #  18    0xe2646  1      OPC=nop             
                                                                           
.size _ZSt13set_terminatePFvvE, .-_ZSt13set_terminatePFvvE

