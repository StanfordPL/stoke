  .text
  .globl AddIfSatisfiedInput
  .type AddIfSatisfiedInput, @function

#! file-offset 0x5f6b
#! rip-offset  0x405f6b
#! capacity    29 bytes

# Text                       #  Line  RIP       Bytes  Opcode    
.AddIfSatisfiedInput:        #        0x405f6b  0      OPC=0     
  movl 0x8(%rdi), %eax       #  1     0x405f6b  3      OPC=1156  
  testl %eax, %eax           #  2     0x405f6e  2      OPC=2436  
  je .L_405f87               #  3     0x405f70  6      OPC=893   
  nop                        #  4     0x405f76  1      OPC=1343  
  nop                        #  5     0x405f77  1      OPC=1343  
  cmpb $0xff, 0x10(%rdi)     #  6     0x405f78  4      OPC=461   
  je .L_405f87               #  7     0x405f7c  6      OPC=893   
  nop                        #  8     0x405f82  1      OPC=1343  
  nop                        #  9     0x405f83  1      OPC=1343  
  movq %rdi, %rsi            #  10    0x405f84  3      OPC=1162  
  movq 0x21f4be(%rip), %rdi  #  11    0x405f87  7      OPC=1161  
  jmpq .List_Add             #  12    0x405f8e  5      OPC=930   
.L_405f87:                   #        0x405f93  0      OPC=0     
  retq                       #  13    0x405f93  1      OPC=1978  
                                                                 
.size AddIfSatisfiedInput, .-AddIfSatisfiedInput

