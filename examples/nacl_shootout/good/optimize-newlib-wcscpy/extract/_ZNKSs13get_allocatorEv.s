  .text
  .globl _ZNKSs13get_allocatorEv
  .type _ZNKSs13get_allocatorEv, @function

#! file-offset 0xea620
#! rip-offset  0xaa620
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNKSs13get_allocatorEv:  #        0xaa620  0      OPC=<label>         
  popq %r11                #  1     0xaa620  2      OPC=popq_r64_1      
  movl %edi, %eax          #  2     0xaa622  2      OPC=movl_r32_r32    
  andl $0xffffffe0, %r11d  #  3     0xaa624  7      OPC=andl_r32_imm32  
  nop                      #  4     0xaa62b  1      OPC=nop             
  nop                      #  5     0xaa62c  1      OPC=nop             
  nop                      #  6     0xaa62d  1      OPC=nop             
  nop                      #  7     0xaa62e  1      OPC=nop             
  addq %r15, %r11          #  8     0xaa62f  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0xaa632  3      OPC=jmpq_r64        
  nop                      #  10    0xaa635  1      OPC=nop             
  nop                      #  11    0xaa636  1      OPC=nop             
  nop                      #  12    0xaa637  1      OPC=nop             
  nop                      #  13    0xaa638  1      OPC=nop             
  nop                      #  14    0xaa639  1      OPC=nop             
  nop                      #  15    0xaa63a  1      OPC=nop             
  nop                      #  16    0xaa63b  1      OPC=nop             
  nop                      #  17    0xaa63c  1      OPC=nop             
  nop                      #  18    0xaa63d  1      OPC=nop             
  nop                      #  19    0xaa63e  1      OPC=nop             
  nop                      #  20    0xaa63f  1      OPC=nop             
  nop                      #  21    0xaa640  1      OPC=nop             
  nop                      #  22    0xaa641  1      OPC=nop             
  nop                      #  23    0xaa642  1      OPC=nop             
  nop                      #  24    0xaa643  1      OPC=nop             
  nop                      #  25    0xaa644  1      OPC=nop             
  nop                      #  26    0xaa645  1      OPC=nop             
  nop                      #  27    0xaa646  1      OPC=nop             
                                                                        
.size _ZNKSs13get_allocatorEv, .-_ZNKSs13get_allocatorEv

