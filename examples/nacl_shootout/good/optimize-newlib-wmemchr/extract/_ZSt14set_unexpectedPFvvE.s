  .text
  .globl _ZSt14set_unexpectedPFvvE
  .type _ZSt14set_unexpectedPFvvE, @function

#! file-offset 0x122640
#! rip-offset  0xe2640
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZSt14set_unexpectedPFvvE:   #        0xe2640  0      OPC=<label>         
  popq %r11                   #  1     0xe2640  2      OPC=popq_r64_1      
  movl 0xff8e2dc(%rip), %eax  #  2     0xe2642  6      OPC=movl_r32_m32    
  movl %edi, 0xff8e2d6(%rip)  #  3     0xe2648  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d     #  4     0xe264e  7      OPC=andl_r32_imm32  
  nop                         #  5     0xe2655  1      OPC=nop             
  nop                         #  6     0xe2656  1      OPC=nop             
  nop                         #  7     0xe2657  1      OPC=nop             
  nop                         #  8     0xe2658  1      OPC=nop             
  addq %r15, %r11             #  9     0xe2659  3      OPC=addq_r64_r64    
  jmpq %r11                   #  10    0xe265c  3      OPC=jmpq_r64        
  nop                         #  11    0xe265f  1      OPC=nop             
  nop                         #  12    0xe2660  1      OPC=nop             
  nop                         #  13    0xe2661  1      OPC=nop             
  nop                         #  14    0xe2662  1      OPC=nop             
  nop                         #  15    0xe2663  1      OPC=nop             
  nop                         #  16    0xe2664  1      OPC=nop             
  nop                         #  17    0xe2665  1      OPC=nop             
  nop                         #  18    0xe2666  1      OPC=nop             
                                                                           
.size _ZSt14set_unexpectedPFvvE, .-_ZSt14set_unexpectedPFvvE

