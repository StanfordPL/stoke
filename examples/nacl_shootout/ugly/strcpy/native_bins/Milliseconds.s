  .text
  .globl Milliseconds
  .type Milliseconds, @function

#! file-offset 0x695f
#! rip-offset  0x40695f
#! capacity    44 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.Milliseconds:                    #        0x40695f  0      OPC=0     
  subq $0x8, %rsp                 #  1     0x40695f  4      OPC=2389  
  callq .clock_plt                #  2     0x406963  5      OPC=260   
  movq %rax, %rcx                 #  3     0x406968  3      OPC=1162  
  movq $0x20c49ba5e353f7cf, %rdx  #  4     0x40696b  10     OPC=1160  
  imulq %rdx                      #  5     0x406975  3      OPC=824   
  sarq $0x7, %rdx                 #  6     0x406978  4      OPC=2099  
  sarq $0x3f, %rcx                #  7     0x40697c  4      OPC=2099  
  subq %rcx, %rdx                 #  8     0x406980  3      OPC=2391  
  movq %rdx, %rax                 #  9     0x406983  3      OPC=1162  
  addq $0x8, %rsp                 #  10    0x406986  4      OPC=70    
  retq                            #  11    0x40698a  1      OPC=1978  
                                                                      
.size Milliseconds, .-Milliseconds

