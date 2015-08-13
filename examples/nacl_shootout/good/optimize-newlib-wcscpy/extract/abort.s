  .text
  .globl abort
  .type abort, @function

#! file-offset 0x151020
#! rip-offset  0x111020
#! capacity    64 bytes

# Text                    #  Line  RIP       Bytes  Opcode              
.abort:                   #        0x111020  0      OPC=<label>         
  subl $0x8, %esp         #  1     0x111020  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0x111023  3      OPC=addq_r64_r64    
  movl $0x12, %edx        #  3     0x111026  5      OPC=movl_r32_imm32  
  movl $0x100409b0, %esi  #  4     0x11102b  5      OPC=movl_r32_imm32  
  movl $0x2, %edi         #  5     0x111030  5      OPC=movl_r32_imm32  
  nop                     #  6     0x111035  1      OPC=nop             
  nop                     #  7     0x111036  1      OPC=nop             
  nop                     #  8     0x111037  1      OPC=nop             
  nop                     #  9     0x111038  1      OPC=nop             
  nop                     #  10    0x111039  1      OPC=nop             
  nop                     #  11    0x11103a  1      OPC=nop             
  callq .write            #  12    0x11103b  5      OPC=callq_label     
  ud2                     #  13    0x111040  2      OPC=ud2             
  nop                     #  14    0x111042  1      OPC=nop             
  nop                     #  15    0x111043  1      OPC=nop             
  nop                     #  16    0x111044  1      OPC=nop             
  nop                     #  17    0x111045  1      OPC=nop             
  nop                     #  18    0x111046  1      OPC=nop             
  nop                     #  19    0x111047  1      OPC=nop             
  nop                     #  20    0x111048  1      OPC=nop             
  nop                     #  21    0x111049  1      OPC=nop             
  nop                     #  22    0x11104a  1      OPC=nop             
  nop                     #  23    0x11104b  1      OPC=nop             
  nop                     #  24    0x11104c  1      OPC=nop             
  nop                     #  25    0x11104d  1      OPC=nop             
  nop                     #  26    0x11104e  1      OPC=nop             
  nop                     #  27    0x11104f  1      OPC=nop             
  nop                     #  28    0x111050  1      OPC=nop             
  nop                     #  29    0x111051  1      OPC=nop             
  nop                     #  30    0x111052  1      OPC=nop             
  nop                     #  31    0x111053  1      OPC=nop             
  nop                     #  32    0x111054  1      OPC=nop             
  nop                     #  33    0x111055  1      OPC=nop             
  nop                     #  34    0x111056  1      OPC=nop             
  nop                     #  35    0x111057  1      OPC=nop             
  nop                     #  36    0x111058  1      OPC=nop             
  nop                     #  37    0x111059  1      OPC=nop             
  nop                     #  38    0x11105a  1      OPC=nop             
  nop                     #  39    0x11105b  1      OPC=nop             
  nop                     #  40    0x11105c  1      OPC=nop             
  nop                     #  41    0x11105d  1      OPC=nop             
  nop                     #  42    0x11105e  1      OPC=nop             
  nop                     #  43    0x11105f  1      OPC=nop             
                                                                        
.size abort, .-abort

