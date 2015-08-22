  .text
  .globl _exit
  .type _exit, @function

#! file-offset 0x151a00
#! rip-offset  0x111a00
#! capacity    64 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
._exit:                       #        0x111a00  0      OPC=<label>         
  subl $0x8, %esp             #  1     0x111a00  3      OPC=subl_r32_imm8   
  addq %r15, %rsp             #  2     0x111a03  3      OPC=addq_r64_r64    
  movl 0xff67844(%rip), %eax  #  3     0x111a06  6      OPC=movl_r32_m32    
  nop                         #  4     0x111a0c  1      OPC=nop             
  nop                         #  5     0x111a0d  1      OPC=nop             
  nop                         #  6     0x111a0e  1      OPC=nop             
  nop                         #  7     0x111a0f  1      OPC=nop             
  nop                         #  8     0x111a10  1      OPC=nop             
  nop                         #  9     0x111a11  1      OPC=nop             
  nop                         #  10    0x111a12  1      OPC=nop             
  nop                         #  11    0x111a13  1      OPC=nop             
  nop                         #  12    0x111a14  1      OPC=nop             
  nop                         #  13    0x111a15  1      OPC=nop             
  nop                         #  14    0x111a16  1      OPC=nop             
  nop                         #  15    0x111a17  1      OPC=nop             
  andl $0xffffffe0, %eax      #  16    0x111a18  6      OPC=andl_r32_imm32  
  nop                         #  17    0x111a1e  1      OPC=nop             
  nop                         #  18    0x111a1f  1      OPC=nop             
  nop                         #  19    0x111a20  1      OPC=nop             
  addq %r15, %rax             #  20    0x111a21  3      OPC=addq_r64_r64    
  callq %rax                  #  21    0x111a24  2      OPC=callq_r64       
  ud2                         #  22    0x111a26  2      OPC=ud2             
  nop                         #  23    0x111a28  1      OPC=nop             
  nop                         #  24    0x111a29  1      OPC=nop             
  nop                         #  25    0x111a2a  1      OPC=nop             
  nop                         #  26    0x111a2b  1      OPC=nop             
  nop                         #  27    0x111a2c  1      OPC=nop             
  nop                         #  28    0x111a2d  1      OPC=nop             
  nop                         #  29    0x111a2e  1      OPC=nop             
  nop                         #  30    0x111a2f  1      OPC=nop             
  nop                         #  31    0x111a30  1      OPC=nop             
  nop                         #  32    0x111a31  1      OPC=nop             
  nop                         #  33    0x111a32  1      OPC=nop             
  nop                         #  34    0x111a33  1      OPC=nop             
  nop                         #  35    0x111a34  1      OPC=nop             
  nop                         #  36    0x111a35  1      OPC=nop             
  nop                         #  37    0x111a36  1      OPC=nop             
  nop                         #  38    0x111a37  1      OPC=nop             
  nop                         #  39    0x111a38  1      OPC=nop             
  nop                         #  40    0x111a39  1      OPC=nop             
  nop                         #  41    0x111a3a  1      OPC=nop             
  nop                         #  42    0x111a3b  1      OPC=nop             
  nop                         #  43    0x111a3c  1      OPC=nop             
  nop                         #  44    0x111a3d  1      OPC=nop             
  nop                         #  45    0x111a3e  1      OPC=nop             
  nop                         #  46    0x111a3f  1      OPC=nop             
  nop                         #  47    0x111a40  1      OPC=nop             
  nop                         #  48    0x111a41  1      OPC=nop             
  nop                         #  49    0x111a42  1      OPC=nop             
  nop                         #  50    0x111a43  1      OPC=nop             
  nop                         #  51    0x111a44  1      OPC=nop             
  nop                         #  52    0x111a45  1      OPC=nop             
                                                                            
.size _exit, .-_exit

