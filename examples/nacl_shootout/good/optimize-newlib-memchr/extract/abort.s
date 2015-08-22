  .text
  .globl abort
  .type abort, @function

#! file-offset 0x151a40
#! rip-offset  0x111a40
#! capacity    64 bytes

# Text                    #  Line  RIP       Bytes  Opcode              
.abort:                   #        0x111a40  0      OPC=<label>         
  subl $0x8, %esp         #  1     0x111a40  3      OPC=subl_r32_imm8   
  addq %r15, %rsp         #  2     0x111a43  3      OPC=addq_r64_r64    
  movl $0x12, %edx        #  3     0x111a46  5      OPC=movl_r32_imm32  
  movl $0x100409b0, %esi  #  4     0x111a4b  5      OPC=movl_r32_imm32  
  movl $0x2, %edi         #  5     0x111a50  5      OPC=movl_r32_imm32  
  nop                     #  6     0x111a55  1      OPC=nop             
  nop                     #  7     0x111a56  1      OPC=nop             
  nop                     #  8     0x111a57  1      OPC=nop             
  nop                     #  9     0x111a58  1      OPC=nop             
  nop                     #  10    0x111a59  1      OPC=nop             
  nop                     #  11    0x111a5a  1      OPC=nop             
  callq .write            #  12    0x111a5b  5      OPC=callq_label     
  ud2                     #  13    0x111a60  2      OPC=ud2             
  nop                     #  14    0x111a62  1      OPC=nop             
  nop                     #  15    0x111a63  1      OPC=nop             
  nop                     #  16    0x111a64  1      OPC=nop             
  nop                     #  17    0x111a65  1      OPC=nop             
  nop                     #  18    0x111a66  1      OPC=nop             
  nop                     #  19    0x111a67  1      OPC=nop             
  nop                     #  20    0x111a68  1      OPC=nop             
  nop                     #  21    0x111a69  1      OPC=nop             
  nop                     #  22    0x111a6a  1      OPC=nop             
  nop                     #  23    0x111a6b  1      OPC=nop             
  nop                     #  24    0x111a6c  1      OPC=nop             
  nop                     #  25    0x111a6d  1      OPC=nop             
  nop                     #  26    0x111a6e  1      OPC=nop             
  nop                     #  27    0x111a6f  1      OPC=nop             
  nop                     #  28    0x111a70  1      OPC=nop             
  nop                     #  29    0x111a71  1      OPC=nop             
  nop                     #  30    0x111a72  1      OPC=nop             
  nop                     #  31    0x111a73  1      OPC=nop             
  nop                     #  32    0x111a74  1      OPC=nop             
  nop                     #  33    0x111a75  1      OPC=nop             
  nop                     #  34    0x111a76  1      OPC=nop             
  nop                     #  35    0x111a77  1      OPC=nop             
  nop                     #  36    0x111a78  1      OPC=nop             
  nop                     #  37    0x111a79  1      OPC=nop             
  nop                     #  38    0x111a7a  1      OPC=nop             
  nop                     #  39    0x111a7b  1      OPC=nop             
  nop                     #  40    0x111a7c  1      OPC=nop             
  nop                     #  41    0x111a7d  1      OPC=nop             
  nop                     #  42    0x111a7e  1      OPC=nop             
  nop                     #  43    0x111a7f  1      OPC=nop             
                                                                        
.size abort, .-abort

