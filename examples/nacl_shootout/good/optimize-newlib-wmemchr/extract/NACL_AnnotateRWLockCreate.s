  .text
  .globl NACL_AnnotateRWLockCreate
  .type NACL_AnnotateRWLockCreate, @function

#! file-offset 0x6fc00
#! rip-offset  0x2fc00
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockCreate:  #        0x2fc00  0      OPC=<label>         
  popq %r11                  #  1     0x2fc00  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  2     0x2fc02  7      OPC=andl_r32_imm32  
  nop                        #  3     0x2fc09  1      OPC=nop             
  nop                        #  4     0x2fc0a  1      OPC=nop             
  nop                        #  5     0x2fc0b  1      OPC=nop             
  nop                        #  6     0x2fc0c  1      OPC=nop             
  addq %r15, %r11            #  7     0x2fc0d  3      OPC=addq_r64_r64    
  jmpq %r11                  #  8     0x2fc10  3      OPC=jmpq_r64        
  nop                        #  9     0x2fc13  1      OPC=nop             
  nop                        #  10    0x2fc14  1      OPC=nop             
  nop                        #  11    0x2fc15  1      OPC=nop             
  nop                        #  12    0x2fc16  1      OPC=nop             
  nop                        #  13    0x2fc17  1      OPC=nop             
  nop                        #  14    0x2fc18  1      OPC=nop             
  nop                        #  15    0x2fc19  1      OPC=nop             
  nop                        #  16    0x2fc1a  1      OPC=nop             
  nop                        #  17    0x2fc1b  1      OPC=nop             
  nop                        #  18    0x2fc1c  1      OPC=nop             
  nop                        #  19    0x2fc1d  1      OPC=nop             
  nop                        #  20    0x2fc1e  1      OPC=nop             
  nop                        #  21    0x2fc1f  1      OPC=nop             
  nop                        #  22    0x2fc20  1      OPC=nop             
  nop                        #  23    0x2fc21  1      OPC=nop             
  nop                        #  24    0x2fc22  1      OPC=nop             
  nop                        #  25    0x2fc23  1      OPC=nop             
  nop                        #  26    0x2fc24  1      OPC=nop             
  nop                        #  27    0x2fc25  1      OPC=nop             
  nop                        #  28    0x2fc26  1      OPC=nop             
                                                                          
.size NACL_AnnotateRWLockCreate, .-NACL_AnnotateRWLockCreate

