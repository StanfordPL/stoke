  .text
  .globl _ZSt9terminatev
  .type _ZSt9terminatev, @function

#! file-offset 0x121ee0
#! rip-offset  0xe1ee0
#! capacity    32 bytes

# Text                                       #  Line  RIP      Bytes  Opcode    
._ZSt9terminatev:                            #        0xe1ee0  0      OPC=0     
  subl $0x8, %esp                            #  1     0xe1ee0  3      OPC=2384  
  addq %r15, %rsp                            #  2     0xe1ee3  3      OPC=72    
  movl 0xff8ea3c(%rip), %edi                 #  3     0xe1ee6  6      OPC=1156  
  nop                                        #  4     0xe1eec  1      OPC=1343  
  nop                                        #  5     0xe1eed  1      OPC=1343  
  nop                                        #  6     0xe1eee  1      OPC=1343  
  nop                                        #  7     0xe1eef  1      OPC=1343  
  nop                                        #  8     0xe1ef0  1      OPC=1343  
  nop                                        #  9     0xe1ef1  1      OPC=1343  
  nop                                        #  10    0xe1ef2  1      OPC=1343  
  nop                                        #  11    0xe1ef3  1      OPC=1343  
  nop                                        #  12    0xe1ef4  1      OPC=1343  
  nop                                        #  13    0xe1ef5  1      OPC=1343  
  nop                                        #  14    0xe1ef6  1      OPC=1343  
  nop                                        #  15    0xe1ef7  1      OPC=1343  
  nop                                        #  16    0xe1ef8  1      OPC=1343  
  nop                                        #  17    0xe1ef9  1      OPC=1343  
  nop                                        #  18    0xe1efa  1      OPC=1343  
  callq ._ZN10__cxxabiv111__terminateEPFvvE  #  19    0xe1efb  5      OPC=260   
                                                                                
.size _ZSt9terminatev, .-_ZSt9terminatev

