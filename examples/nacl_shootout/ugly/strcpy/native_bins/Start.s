  .text
  .globl Start
  .type Start, @function

#! file-offset 0x698b
#! rip-offset  0x40698b
#! capacity    48 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.Start:                           #        0x40698b  0      OPC=0     
  subq $0x8, %rsp                 #  1     0x40698b  4      OPC=2389  
  callq .clock_plt                #  2     0x40698f  5      OPC=260   
  movq %rax, %rcx                 #  3     0x406994  3      OPC=1162  
  movq $0x20c49ba5e353f7cf, %rdx  #  4     0x406997  10     OPC=1160  
  imulq %rdx                      #  5     0x4069a1  3      OPC=824   
  sarq $0x7, %rdx                 #  6     0x4069a4  4      OPC=2099  
  sarq $0x3f, %rcx                #  7     0x4069a8  4      OPC=2099  
  subq %rcx, %rdx                 #  8     0x4069ac  3      OPC=2391  
  movq %rdx, 0x21f082(%rip)       #  9     0x4069af  7      OPC=1138  
  addq $0x8, %rsp                 #  10    0x4069b6  4      OPC=70    
  retq                            #  11    0x4069ba  1      OPC=1978  
                                                                      
.size Start, .-Start

