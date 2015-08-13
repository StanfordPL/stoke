  .text
  .globl NACL_AnnotateRWLockCreate
  .type NACL_AnnotateRWLockCreate, @function

#! file-offset 0x6f900
#! rip-offset  0x2f900
#! capacity    32 bytes

# Text                       #  Line  RIP      Bytes  Opcode              
.NACL_AnnotateRWLockCreate:  #        0x2f900  0      OPC=<label>         
  popq %r11                  #  1     0x2f900  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d    #  2     0x2f902  7      OPC=andl_r32_imm32  
  nop                        #  3     0x2f909  1      OPC=nop             
  nop                        #  4     0x2f90a  1      OPC=nop             
  nop                        #  5     0x2f90b  1      OPC=nop             
  nop                        #  6     0x2f90c  1      OPC=nop             
  addq %r15, %r11            #  7     0x2f90d  3      OPC=addq_r64_r64    
  jmpq %r11                  #  8     0x2f910  3      OPC=jmpq_r64        
  nop                        #  9     0x2f913  1      OPC=nop             
  nop                        #  10    0x2f914  1      OPC=nop             
  nop                        #  11    0x2f915  1      OPC=nop             
  nop                        #  12    0x2f916  1      OPC=nop             
  nop                        #  13    0x2f917  1      OPC=nop             
  nop                        #  14    0x2f918  1      OPC=nop             
  nop                        #  15    0x2f919  1      OPC=nop             
  nop                        #  16    0x2f91a  1      OPC=nop             
  nop                        #  17    0x2f91b  1      OPC=nop             
  nop                        #  18    0x2f91c  1      OPC=nop             
  nop                        #  19    0x2f91d  1      OPC=nop             
  nop                        #  20    0x2f91e  1      OPC=nop             
  nop                        #  21    0x2f91f  1      OPC=nop             
  nop                        #  22    0x2f920  1      OPC=nop             
  nop                        #  23    0x2f921  1      OPC=nop             
  nop                        #  24    0x2f922  1      OPC=nop             
  nop                        #  25    0x2f923  1      OPC=nop             
  nop                        #  26    0x2f924  1      OPC=nop             
  nop                        #  27    0x2f925  1      OPC=nop             
  nop                        #  28    0x2f926  1      OPC=nop             
                                                                          
.size NACL_AnnotateRWLockCreate, .-NACL_AnnotateRWLockCreate

