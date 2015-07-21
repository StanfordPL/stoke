  .text
  .globl my_memcpy
  .type my_memcpy, @function

#! file-offset 0x6e82
#! rip-offset  0x406e82
#! capacity    29 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.my_memcpy:                   #        0x406e82  0      OPC=0     
  movq %rdi, %rax             #  1     0x406e82  3      OPC=1162  
  xorl %ecx, %ecx             #  2     0x406e85  2      OPC=3758  
  testq %rdx, %rdx            #  3     0x406e87  3      OPC=2438  
  je .L_406e9e                #  4     0x406e8a  6      OPC=893   
.L_406e8c:                    #        0x406e92  0      OPC=0     
  movzbl (%rsi,%rcx,1), %r8d  #  7     0x406e92  5      OPC=1302  
  movb %r8b, (%rax,%rcx,1)    #  8     0x406e97  4      OPC=1141  
  addq $0x1, %rcx             #  9     0x406e9b  4      OPC=70    
  cmpq %rdx, %rcx             #  10    0x406e9f  3      OPC=477   
  jne .L_406e8c               #  11    0x406ea2  6      OPC=963   
.L_406e9e:                    #        0x406eaa  0      OPC=0     
  retq                        #  14    0x406eaa  1      OPC=1978  
                                                                  
.size my_memcpy, .-my_memcpy

