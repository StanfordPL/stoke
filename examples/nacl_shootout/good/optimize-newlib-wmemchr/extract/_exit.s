  .text
  .globl _exit
  .type _exit, @function

#! file-offset 0x1512e0
#! rip-offset  0x1112e0
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
._exit:                       #        0x1112e0  0      OPC=<label>         
  subl $0x8, %esp             #  1     0x1112e0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp             #  2     0x1112e3  3      OPC=addq_r64_r64    
  movl 0xff67f64(%rip), %eax  #  3     0x1112e6  6      OPC=movl_r32_m32    
  nop                         #  4     0x1112ec  1      OPC=nop             
  nop                         #  5     0x1112ed  1      OPC=nop             
  nop                         #  6     0x1112ee  1      OPC=nop             
  nop                         #  7     0x1112ef  1      OPC=nop             
  nop                         #  8     0x1112f0  1      OPC=nop             
  nop                         #  9     0x1112f1  1      OPC=nop             
  nop                         #  10    0x1112f2  1      OPC=nop             
  nop                         #  11    0x1112f3  1      OPC=nop             
  nop                         #  12    0x1112f4  1      OPC=nop             
  nop                         #  13    0x1112f5  1      OPC=nop             
  nop                         #  14    0x1112f6  1      OPC=nop             
  nop                         #  15    0x1112f7  1      OPC=nop             
  andl $0xffffffe0, %eax      #  16    0x1112f8  6      OPC=andl_r32_imm32  
  nop                         #  17    0x1112fe  1      OPC=nop             
  nop                         #  18    0x1112ff  1      OPC=nop             
  nop                         #  19    0x111300  1      OPC=nop             
  addq %r15, %rax             #  20    0x111301  3      OPC=addq_r64_r64    
  callq %rax                  #  21    0x111304  2      OPC=callq_r64       
  ud2                         #  22    0x111306  2      OPC=ud2             
  nop                         #  23    0x111308  1      OPC=nop             
  nop                         #  24    0x111309  1      OPC=nop             
  nop                         #  25    0x11130a  1      OPC=nop             
  nop                         #  26    0x11130b  1      OPC=nop             
  nop                         #  27    0x11130c  1      OPC=nop             
  nop                         #  28    0x11130d  1      OPC=nop             
  nop                         #  29    0x11130e  1      OPC=nop             
  nop                         #  30    0x11130f  1      OPC=nop             
  nop                         #  31    0x111310  1      OPC=nop             
  nop                         #  32    0x111311  1      OPC=nop             
  nop                         #  33    0x111312  1      OPC=nop             
  nop                         #  34    0x111313  1      OPC=nop             
  nop                         #  35    0x111314  1      OPC=nop             
  nop                         #  36    0x111315  1      OPC=nop             
  nop                         #  37    0x111316  1      OPC=nop             
  nop                         #  38    0x111317  1      OPC=nop             
  nop                         #  39    0x111318  1      OPC=nop             
  nop                         #  40    0x111319  1      OPC=nop             
  nop                         #  41    0x11131a  1      OPC=nop             
  nop                         #  42    0x11131b  1      OPC=nop             
  nop                         #  43    0x11131c  1      OPC=nop             
  nop                         #  44    0x11131d  1      OPC=nop             
  nop                         #  45    0x11131e  1      OPC=nop             
  nop                         #  46    0x11131f  1      OPC=nop             
  nop                         #  47    0x111320  1      OPC=nop             
  nop                         #  48    0x111321  1      OPC=nop             
  nop                         #  49    0x111322  1      OPC=nop             
  nop                         #  50    0x111323  1      OPC=nop             
  nop                         #  51    0x111324  1      OPC=nop             
  nop                         #  52    0x111325  1      OPC=nop             
                                                                            
.size _exit, .-_exit

