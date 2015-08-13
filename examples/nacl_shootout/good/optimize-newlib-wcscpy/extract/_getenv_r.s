  .text
  .globl _getenv_r
  .type _getenv_r, @function

#! file-offset 0x15e3c0
#! rip-offset  0x11e3c0
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
._getenv_r:                #        0x11e3c0  0      OPC=<label>         
  subl $0x18, %esp         #  1     0x11e3c0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x11e3c3  3      OPC=addq_r64_r64    
  movl %edi, %edi          #  3     0x11e3c6  2      OPC=movl_r32_r32    
  movl %esi, %esi          #  4     0x11e3c8  2      OPC=movl_r32_r32    
  leal 0xc(%rsp), %edx     #  5     0x11e3ca  4      OPC=leal_r32_m16    
  nop                      #  6     0x11e3ce  1      OPC=nop             
  nop                      #  7     0x11e3cf  1      OPC=nop             
  nop                      #  8     0x11e3d0  1      OPC=nop             
  nop                      #  9     0x11e3d1  1      OPC=nop             
  nop                      #  10    0x11e3d2  1      OPC=nop             
  nop                      #  11    0x11e3d3  1      OPC=nop             
  nop                      #  12    0x11e3d4  1      OPC=nop             
  nop                      #  13    0x11e3d5  1      OPC=nop             
  nop                      #  14    0x11e3d6  1      OPC=nop             
  nop                      #  15    0x11e3d7  1      OPC=nop             
  nop                      #  16    0x11e3d8  1      OPC=nop             
  nop                      #  17    0x11e3d9  1      OPC=nop             
  nop                      #  18    0x11e3da  1      OPC=nop             
  callq ._findenv_r        #  19    0x11e3db  5      OPC=callq_label     
  addl $0x18, %esp         #  20    0x11e3e0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  21    0x11e3e3  3      OPC=addq_r64_r64    
  movl %eax, %eax          #  22    0x11e3e6  2      OPC=movl_r32_r32    
  popq %r11                #  23    0x11e3e8  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  24    0x11e3ea  7      OPC=andl_r32_imm32  
  nop                      #  25    0x11e3f1  1      OPC=nop             
  nop                      #  26    0x11e3f2  1      OPC=nop             
  nop                      #  27    0x11e3f3  1      OPC=nop             
  nop                      #  28    0x11e3f4  1      OPC=nop             
  addq %r15, %r11          #  29    0x11e3f5  3      OPC=addq_r64_r64    
  jmpq %r11                #  30    0x11e3f8  3      OPC=jmpq_r64        
  nop                      #  31    0x11e3fb  1      OPC=nop             
  nop                      #  32    0x11e3fc  1      OPC=nop             
  nop                      #  33    0x11e3fd  1      OPC=nop             
  nop                      #  34    0x11e3fe  1      OPC=nop             
  nop                      #  35    0x11e3ff  1      OPC=nop             
  nop                      #  36    0x11e400  1      OPC=nop             
  nop                      #  37    0x11e401  1      OPC=nop             
  nop                      #  38    0x11e402  1      OPC=nop             
  nop                      #  39    0x11e403  1      OPC=nop             
  nop                      #  40    0x11e404  1      OPC=nop             
  nop                      #  41    0x11e405  1      OPC=nop             
  nop                      #  42    0x11e406  1      OPC=nop             
                                                                         
.size _getenv_r, .-_getenv_r

