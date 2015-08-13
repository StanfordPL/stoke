  .text
  .globl _exit
  .type _exit, @function

#! file-offset 0x150fe0
#! rip-offset  0x110fe0
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
._exit:                       #        0x110fe0  0      OPC=<label>         
  subl $0x8, %esp             #  1     0x110fe0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp             #  2     0x110fe3  3      OPC=addq_r64_r64    
  movl 0xff68264(%rip), %eax  #  3     0x110fe6  6      OPC=movl_r32_m32    
  nop                         #  4     0x110fec  1      OPC=nop             
  nop                         #  5     0x110fed  1      OPC=nop             
  nop                         #  6     0x110fee  1      OPC=nop             
  nop                         #  7     0x110fef  1      OPC=nop             
  nop                         #  8     0x110ff0  1      OPC=nop             
  nop                         #  9     0x110ff1  1      OPC=nop             
  nop                         #  10    0x110ff2  1      OPC=nop             
  nop                         #  11    0x110ff3  1      OPC=nop             
  nop                         #  12    0x110ff4  1      OPC=nop             
  nop                         #  13    0x110ff5  1      OPC=nop             
  nop                         #  14    0x110ff6  1      OPC=nop             
  nop                         #  15    0x110ff7  1      OPC=nop             
  andl $0xffffffe0, %eax      #  16    0x110ff8  6      OPC=andl_r32_imm32  
  nop                         #  17    0x110ffe  1      OPC=nop             
  nop                         #  18    0x110fff  1      OPC=nop             
  nop                         #  19    0x111000  1      OPC=nop             
  addq %r15, %rax             #  20    0x111001  3      OPC=addq_r64_r64    
  callq %rax                  #  21    0x111004  2      OPC=callq_r64       
  ud2                         #  22    0x111006  2      OPC=ud2             
  nop                         #  23    0x111008  1      OPC=nop             
  nop                         #  24    0x111009  1      OPC=nop             
  nop                         #  25    0x11100a  1      OPC=nop             
  nop                         #  26    0x11100b  1      OPC=nop             
  nop                         #  27    0x11100c  1      OPC=nop             
  nop                         #  28    0x11100d  1      OPC=nop             
  nop                         #  29    0x11100e  1      OPC=nop             
  nop                         #  30    0x11100f  1      OPC=nop             
  nop                         #  31    0x111010  1      OPC=nop             
  nop                         #  32    0x111011  1      OPC=nop             
  nop                         #  33    0x111012  1      OPC=nop             
  nop                         #  34    0x111013  1      OPC=nop             
  nop                         #  35    0x111014  1      OPC=nop             
  nop                         #  36    0x111015  1      OPC=nop             
  nop                         #  37    0x111016  1      OPC=nop             
  nop                         #  38    0x111017  1      OPC=nop             
  nop                         #  39    0x111018  1      OPC=nop             
  nop                         #  40    0x111019  1      OPC=nop             
  nop                         #  41    0x11101a  1      OPC=nop             
  nop                         #  42    0x11101b  1      OPC=nop             
  nop                         #  43    0x11101c  1      OPC=nop             
  nop                         #  44    0x11101d  1      OPC=nop             
  nop                         #  45    0x11101e  1      OPC=nop             
  nop                         #  46    0x11101f  1      OPC=nop             
  nop                         #  47    0x111020  1      OPC=nop             
  nop                         #  48    0x111021  1      OPC=nop             
  nop                         #  49    0x111022  1      OPC=nop             
  nop                         #  50    0x111023  1      OPC=nop             
  nop                         #  51    0x111024  1      OPC=nop             
  nop                         #  52    0x111025  1      OPC=nop             
                                                                            
.size _exit, .-_exit

