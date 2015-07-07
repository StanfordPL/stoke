  .text
  .globl CollectUnsatisfied
  .type CollectUnsatisfied, @function

#! file-offset 0x6058
#! rip-offset  0x406058
#! capacity    22 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.CollectUnsatisfied:         #        0x406058  0      OPC=0     
  cmpb $0xff, 0x10(%rdi)     #  1     0x406058  4      OPC=461   
  je .L_40605f               #  2     0x40605c  6      OPC=893   
  nop                        #  3     0x406062  1      OPC=1343  
  nop                        #  4     0x406063  1      OPC=1343  
  retq                       #  5     0x406064  1      OPC=1978  
.L_40605f:                   #        0x406065  0      OPC=0     
  movq %rdi, %rsi            #  6     0x406065  3      OPC=1162  
  movq 0x21f9df(%rip), %rdi  #  7     0x406068  7      OPC=1161  
  jmpq .List_Add             #  8     0x40606f  5      OPC=930   
                                                                 
.size CollectUnsatisfied, .-CollectUnsatisfied

