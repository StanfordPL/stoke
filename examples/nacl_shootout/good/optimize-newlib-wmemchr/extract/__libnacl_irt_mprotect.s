  .text
  .globl __libnacl_irt_mprotect
  .type __libnacl_irt_mprotect, @function

#! file-offset 0x1591c0
#! rip-offset  0x1191c0
#! capacity    32 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.__libnacl_irt_mprotect:   #        0x1191c0  0      OPC=<label>         
  popq %r11                #  1     0x1191c0  2      OPC=popq_r64_1      
  movl $0x26, %eax         #  2     0x1191c2  5      OPC=movl_r32_imm32  
  andl $0xffffffe0, %r11d  #  3     0x1191c7  7      OPC=andl_r32_imm32  
  nop                      #  4     0x1191ce  1      OPC=nop             
  nop                      #  5     0x1191cf  1      OPC=nop             
  nop                      #  6     0x1191d0  1      OPC=nop             
  nop                      #  7     0x1191d1  1      OPC=nop             
  addq %r15, %r11          #  8     0x1191d2  3      OPC=addq_r64_r64    
  jmpq %r11                #  9     0x1191d5  3      OPC=jmpq_r64        
  nop                      #  10    0x1191d8  1      OPC=nop             
  nop                      #  11    0x1191d9  1      OPC=nop             
  nop                      #  12    0x1191da  1      OPC=nop             
  nop                      #  13    0x1191db  1      OPC=nop             
  nop                      #  14    0x1191dc  1      OPC=nop             
  nop                      #  15    0x1191dd  1      OPC=nop             
  nop                      #  16    0x1191de  1      OPC=nop             
  nop                      #  17    0x1191df  1      OPC=nop             
  nop                      #  18    0x1191e0  1      OPC=nop             
  nop                      #  19    0x1191e1  1      OPC=nop             
  nop                      #  20    0x1191e2  1      OPC=nop             
  nop                      #  21    0x1191e3  1      OPC=nop             
  nop                      #  22    0x1191e4  1      OPC=nop             
  nop                      #  23    0x1191e5  1      OPC=nop             
  nop                      #  24    0x1191e6  1      OPC=nop             
                                                                         
.size __libnacl_irt_mprotect, .-__libnacl_irt_mprotect

