  .text
  .globl ExtractPlanFromConstraint
  .type ExtractPlanFromConstraint, @function

#! file-offset 0x6353
#! rip-offset  0x406353
#! capacity    90 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.ExtractPlanFromConstraint:     #        0x406353  0      OPC=0     
  subq $0x18, %rsp              #  1     0x406353  4      OPC=2389  
  movq %rdi, %rsi               #  2     0x406357  3      OPC=1162  
  movq 0x21f0df(%rip), %rdi     #  3     0x40635a  7      OPC=1161  
  testq %rdi, %rdi              #  4     0x406361  3      OPC=2438  
  je .L_40638f                  #  5     0x406364  6      OPC=893   
  nop                           #  6     0x40636a  1      OPC=1343  
  nop                           #  7     0x40636b  1      OPC=1343  
.L_406366:                      #        0x40636c  0      OPC=0     
  movl $0x0, 0xc(%rdi)          #  8     0x40636c  7      OPC=1135  
  movl $0xffffffff, 0x10(%rdi)  #  9     0x406373  7      OPC=1135  
  movl 0x8(%rsi), %eax          #  10    0x40637a  3      OPC=1156  
  testl %eax, %eax              #  11    0x40637d  2      OPC=2436  
  je .L_406386                  #  12    0x40637f  6      OPC=893   
  nop                           #  13    0x406385  1      OPC=1343  
  nop                           #  14    0x406386  1      OPC=1343  
  cmpb $0xff, 0x10(%rsi)        #  15    0x406387  4      OPC=461   
  je .L_406386                  #  16    0x40638b  6      OPC=893   
  nop                           #  17    0x406391  1      OPC=1343  
  nop                           #  18    0x406392  1      OPC=1343  
  callq .List_Add               #  19    0x406393  5      OPC=260   
.L_406386:                      #        0x406398  0      OPC=0     
  addq $0x18, %rsp              #  20    0x406398  4      OPC=70    
  jmpq .MakePlan                #  21    0x40639c  5      OPC=930   
.L_40638f:                      #        0x4063a1  0      OPC=0     
  movq %rsi, 0x8(%rsp)          #  22    0x4063a1  5      OPC=1138  
  movb $0x80, %dil              #  23    0x4063a6  4      OPC=1166  
  callq .List_Create            #  24    0x4063aa  5      OPC=260   
  movq %rax, 0x21f09d(%rip)     #  25    0x4063af  7      OPC=1138  
  movq %rax, %rdi               #  26    0x4063b6  3      OPC=1162  
  movq 0x8(%rsp), %rsi          #  27    0x4063b9  5      OPC=1161  
  jmpq .L_406366                #  28    0x4063be  5      OPC=930   
  nop                           #  29    0x4063c3  1      OPC=1343  
  nop                           #  30    0x4063c4  1      OPC=1343  
                                                                    
.size ExtractPlanFromConstraint, .-ExtractPlanFromConstraint

