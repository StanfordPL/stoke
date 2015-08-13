  .text
  .globl _ZNKSt9exception4whatEv
  .type _ZNKSt9exception4whatEv, @function

#! file-offset 0x123280
#! rip-offset  0xe3280
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  Opcode              
._ZNKSt9exception4whatEv:  #        0xe3280  0      OPC=<label>         
  popq %r11                #  1     0xe3280  2      OPC=popq_r64_1      
  movl $0x1003d2d0, %eax   #  2     0xe3282  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0xe3287  7      OPC=andl_r32_imm32  
  nop                      #  4     0xe328e  1      OPC=nop             
  nop                      #  5     0xe328f  1      OPC=nop             
  nop                      #  6     0xe3290  1      OPC=nop             
  nop                      #  7     0xe3291  1      OPC=nop             
  addq %r15, %r11          #  8     0xe3292  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0xe3295  3      OPC=jmpq_r64        
  nop                      #  10    0xe3298  1      OPC=nop             
  nop                      #  11    0xe3299  1      OPC=nop             
  nop                      #  12    0xe329a  1      OPC=nop             
  nop                      #  13    0xe329b  1      OPC=nop             
  nop                      #  14    0xe329c  1      OPC=nop             
  nop                      #  15    0xe329d  1      OPC=nop             
  nop                      #  16    0xe329e  1      OPC=nop             
  nop                      #  17    0xe329f  1      OPC=nop             
  nop                      #  18    0xe32a0  1      OPC=nop             
  nop                      #  19    0xe32a1  1      OPC=nop             
  nop                      #  20    0xe32a2  1      OPC=nop             
  nop                      #  21    0xe32a3  1      OPC=nop             
  nop                      #  22    0xe32a4  1      OPC=nop             
  nop                      #  23    0xe32a5  1      OPC=nop             
  nop                      #  24    0xe32a6  1      OPC=nop             
                                                                        
.size _ZNKSt9exception4whatEv, .-_ZNKSt9exception4whatEv

