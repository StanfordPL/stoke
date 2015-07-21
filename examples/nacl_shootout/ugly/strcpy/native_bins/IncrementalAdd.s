  .text
  .globl IncrementalAdd
  .type IncrementalAdd, @function

#! file-offset 0x662b
#! rip-offset  0x40662b
#! capacity    40 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.IncrementalAdd:             #        0x40662b  0      OPC=0     
  subq $0x8, %rsp            #  1     0x40662b  4      OPC=2389  
  addq $0x1, 0x21ee11(%rip)  #  2     0x40662f  8      OPC=54    
  callq .Satisfy             #  3     0x406637  5      OPC=260   
  testq %rax, %rax           #  4     0x40663c  3      OPC=2438  
  je .L_40664e               #  5     0x40663f  6      OPC=893   
  nop                        #  6     0x406645  1      OPC=1343  
  nop                        #  7     0x406646  1      OPC=1343  
.L_406641:                   #        0x406647  0      OPC=0     
  movq %rax, %rdi            #  8     0x406647  3      OPC=1162  
  callq .Satisfy             #  9     0x40664a  5      OPC=260   
  testq %rax, %rax           #  10    0x40664f  3      OPC=2438  
  jne .L_406641              #  11    0x406652  6      OPC=963   
  nop                        #  12    0x406658  1      OPC=1343  
  nop                        #  13    0x406659  1      OPC=1343  
.L_40664e:                   #        0x40665a  0      OPC=0     
  addq $0x8, %rsp            #  14    0x40665a  4      OPC=70    
  retq                       #  15    0x40665e  1      OPC=1978  
                                                                 
.size IncrementalAdd, .-IncrementalAdd

