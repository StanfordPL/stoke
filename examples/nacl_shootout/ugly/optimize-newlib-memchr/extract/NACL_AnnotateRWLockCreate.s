  .text
  .globl NACL_AnnotateRWLockCreate
  .type NACL_AnnotateRWLockCreate, @function

#! file-offset 0x70320
#! rip-offset  0x30320
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockCreate:  #        0x30320  0      OPC=<label>         
  popq %r11                  #  1     0x30320  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  2     0x30322  7      OPC=andl_r32_imm32  
  nop                        #  3     0x30329  1      OPC=nop             
  nop                        #  4     0x3032a  1      OPC=nop             
  nop                        #  5     0x3032b  1      OPC=nop             
  nop                        #  6     0x3032c  1      OPC=nop             
  addq %r15, %r11            #  7     0x3032d  3      OPC=addq_r64_r64    
  jmpq %r11                  #  8     0x30330  3      OPC=jmpq_r64        
  nop                        #  9     0x30333  1      OPC=nop             
  nop                        #  10    0x30334  1      OPC=nop             
  nop                        #  11    0x30335  1      OPC=nop             
  nop                        #  12    0x30336  1      OPC=nop             
  nop                        #  13    0x30337  1      OPC=nop             
  nop                        #  14    0x30338  1      OPC=nop             
  nop                        #  15    0x30339  1      OPC=nop             
  nop                        #  16    0x3033a  1      OPC=nop             
  nop                        #  17    0x3033b  1      OPC=nop             
  nop                        #  18    0x3033c  1      OPC=nop             
  nop                        #  19    0x3033d  1      OPC=nop             
  nop                        #  20    0x3033e  1      OPC=nop             
  nop                        #  21    0x3033f  1      OPC=nop             
  nop                        #  22    0x30340  1      OPC=nop             
  nop                        #  23    0x30341  1      OPC=nop             
  nop                        #  24    0x30342  1      OPC=nop             
  nop                        #  25    0x30343  1      OPC=nop             
  nop                        #  26    0x30344  1      OPC=nop             
  nop                        #  27    0x30345  1      OPC=nop             
  nop                        #  28    0x30346  1      OPC=nop             
                                                                          
.size NACL_AnnotateRWLockCreate, .-NACL_AnnotateRWLockCreate

