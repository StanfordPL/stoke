  .text
  .globl _ZSt13set_terminatePFvvE
  .type _ZSt13set_terminatePFvvE, @function

#! file-offset 0x122320
#! rip-offset  0xe2320
#! capacity    32 bytes

# Text                        #  Line  RIP      Bytes  Opcode              
._ZSt13set_terminatePFvvE:    #        0xe2320  0      OPC=<label>         
  popq %r11                   #  1     0xe2320  2      OPC=popq_r64_1      
  movl 0xff8e600(%rip), %eax  #  2     0xe2322  6      OPC=movl_r32_m32    
  movl %edi, 0xff8e5fa(%rip)  #  3     0xe2328  6      OPC=movl_m32_r32    
  andl $0xffffffe0, %r11d     #  4     0xe232e  7      OPC=andl_r32_imm32  
  nop                         #  5     0xe2335  1      OPC=nop             
  nop                         #  6     0xe2336  1      OPC=nop             
  nop                         #  7     0xe2337  1      OPC=nop             
  nop                         #  8     0xe2338  1      OPC=nop             
  addq %r15, %r11             #  9     0xe2339  3      OPC=addq_r64_r64    
  jmpq %r11                   #  10    0xe233c  3      OPC=jmpq_r64        
  nop                         #  11    0xe233f  1      OPC=nop             
  nop                         #  12    0xe2340  1      OPC=nop             
  nop                         #  13    0xe2341  1      OPC=nop             
  nop                         #  14    0xe2342  1      OPC=nop             
  nop                         #  15    0xe2343  1      OPC=nop             
  nop                         #  16    0xe2344  1      OPC=nop             
  nop                         #  17    0xe2345  1      OPC=nop             
  nop                         #  18    0xe2346  1      OPC=nop             
                                                                           
.size _ZSt13set_terminatePFvvE, .-_ZSt13set_terminatePFvvE

