  .text
  .globl _ZSt14set_unexpectedPFvvE
  .type _ZSt14set_unexpectedPFvvE, @function

#! file-offset 0x122340
#! rip-offset  0xe2340
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZSt14set_unexpectedPFvvE:   #        0xe2340  0      OPC=<label>         
  popq %r11                   #  1     0xe2340  2      OPC=popq_r64_1      
  movl 0xff8e5dc(%rip), %eax  #  2     0xe2342  6      OPC=movl_r32_m32    
  movl %edi, 0xff8e5d6(%rip)  #  3     0xe2348  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d     #  4     0xe234e  7      OPC=andl_r32_imm32  
  nop                         #  5     0xe2355  1      OPC=nop             
  nop                         #  6     0xe2356  1      OPC=nop             
  nop                         #  7     0xe2357  1      OPC=nop             
  nop                         #  8     0xe2358  1      OPC=nop             
  addq %r15, %r11             #  9     0xe2359  3      OPC=addq_r64_r64    
  jmpq %r11                   #  10    0xe235c  3      OPC=jmpq_r64        
  nop                         #  11    0xe235f  1      OPC=nop             
  nop                         #  12    0xe2360  1      OPC=nop             
  nop                         #  13    0xe2361  1      OPC=nop             
  nop                         #  14    0xe2362  1      OPC=nop             
  nop                         #  15    0xe2363  1      OPC=nop             
  nop                         #  16    0xe2364  1      OPC=nop             
  nop                         #  17    0xe2365  1      OPC=nop             
  nop                         #  18    0xe2366  1      OPC=nop             
                                                                           
.size _ZSt14set_unexpectedPFvvE, .-_ZSt14set_unexpectedPFvvE

