  .text
  .globl SendStringMessageOnMainThread
  .type SendStringMessageOnMainThread, @function

#! file-offset 0x6bf00
#! rip-offset  0x2bf00
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
.SendStringMessageOnMainThread:  #        0x2bf00  0      OPC=0     
  movl $0x2c500, -0x18(%rsp)     #  1     0x2bf00  8      OPC=1135  
  movl %edi, -0x14(%rsp)         #  2     0x2bf08  4      OPC=1136  
  movl $0x0, -0x10(%rsp)         #  3     0x2bf0c  8      OPC=1135  
  movl 0x100456b6(%rip), %eax    #  4     0x2bf14  6      OPC=1156  
  nop                            #  5     0x2bf1a  1      OPC=1343  
  nop                            #  6     0x2bf1b  1      OPC=1343  
  nop                            #  7     0x2bf1c  1      OPC=1343  
  nop                            #  8     0x2bf1d  1      OPC=1343  
  nop                            #  9     0x2bf1e  1      OPC=1343  
  nop                            #  10    0x2bf1f  1      OPC=1343  
  movl %eax, %eax                #  11    0x2bf20  2      OPC=1157  
  movl 0x10(%r15,%rax,1), %eax   #  12    0x2bf22  5      OPC=1156  
  xorl %ecx, %ecx                #  13    0x2bf27  2      OPC=3758  
  movq -0x18(%rsp), %rsi         #  14    0x2bf29  5      OPC=1161  
  xorl %edx, %edx                #  15    0x2bf2e  2      OPC=3758  
  xorl %edi, %edi                #  16    0x2bf30  2      OPC=3758  
  andl $0xffffffe0, %eax         #  17    0x2bf32  6      OPC=131   
  nop                            #  18    0x2bf38  1      OPC=1343  
  nop                            #  19    0x2bf39  1      OPC=1343  
  nop                            #  20    0x2bf3a  1      OPC=1343  
  addq %r15, %rax                #  21    0x2bf3b  3      OPC=72    
  jmpq %rax                      #  22    0x2bf3e  2      OPC=928   
  nop                            #  23    0x2bf40  1      OPC=1343  
  nop                            #  24    0x2bf41  1      OPC=1343  
  nop                            #  25    0x2bf42  1      OPC=1343  
  nop                            #  26    0x2bf43  1      OPC=1343  
  nop                            #  27    0x2bf44  1      OPC=1343  
  nop                            #  28    0x2bf45  1      OPC=1343  
                                                                    
.size SendStringMessageOnMainThread, .-SendStringMessageOnMainThread

