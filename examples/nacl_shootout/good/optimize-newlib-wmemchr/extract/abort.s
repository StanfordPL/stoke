  .text
  .globl abort
  .type abort, @function

#! file-offset 0x151320
#! rip-offset  0x111320
#! capacity    64 bytes

# Text                    #  Line  RIP       Bytes  Opcode              
.abort:                   #        0x111320  0      OPC=<label>         
  subl $0x8, %esp         #  1     0x111320  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0x111323  3      OPC=addq_r64_r64    
  movl $0x12, %edx        #  3     0x111326  5      OPC=movl_r32_imm32  
  movl $0x100409b0, %esi  #  4     0x11132b  5      OPC=movl_r32_imm32  
  movl $0x2, %edi         #  5     0x111330  5      OPC=movl_r32_imm32  
  nop                     #  6     0x111335  1      OPC=nop             
  nop                     #  7     0x111336  1      OPC=nop             
  nop                     #  8     0x111337  1      OPC=nop             
  nop                     #  9     0x111338  1      OPC=nop             
  nop                     #  10    0x111339  1      OPC=nop             
  nop                     #  11    0x11133a  1      OPC=nop             
  callq .write            #  12    0x11133b  5      OPC=callq_label     
  ud2                     #  13    0x111340  2      OPC=ud2             
  nop                     #  14    0x111342  1      OPC=nop             
  nop                     #  15    0x111343  1      OPC=nop             
  nop                     #  16    0x111344  1      OPC=nop             
  nop                     #  17    0x111345  1      OPC=nop             
  nop                     #  18    0x111346  1      OPC=nop             
  nop                     #  19    0x111347  1      OPC=nop             
  nop                     #  20    0x111348  1      OPC=nop             
  nop                     #  21    0x111349  1      OPC=nop             
  nop                     #  22    0x11134a  1      OPC=nop             
  nop                     #  23    0x11134b  1      OPC=nop             
  nop                     #  24    0x11134c  1      OPC=nop             
  nop                     #  25    0x11134d  1      OPC=nop             
  nop                     #  26    0x11134e  1      OPC=nop             
  nop                     #  27    0x11134f  1      OPC=nop             
  nop                     #  28    0x111350  1      OPC=nop             
  nop                     #  29    0x111351  1      OPC=nop             
  nop                     #  30    0x111352  1      OPC=nop             
  nop                     #  31    0x111353  1      OPC=nop             
  nop                     #  32    0x111354  1      OPC=nop             
  nop                     #  33    0x111355  1      OPC=nop             
  nop                     #  34    0x111356  1      OPC=nop             
  nop                     #  35    0x111357  1      OPC=nop             
  nop                     #  36    0x111358  1      OPC=nop             
  nop                     #  37    0x111359  1      OPC=nop             
  nop                     #  38    0x11135a  1      OPC=nop             
  nop                     #  39    0x11135b  1      OPC=nop             
  nop                     #  40    0x11135c  1      OPC=nop             
  nop                     #  41    0x11135d  1      OPC=nop             
  nop                     #  42    0x11135e  1      OPC=nop             
  nop                     #  43    0x11135f  1      OPC=nop             
                                                                        
.size abort, .-abort

