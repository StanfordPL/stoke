  .text
  .globl DestroyConstraint
  .type DestroyConstraint, @function

#! file-offset 0x675e
#! rip-offset  0x40675e
#! capacity    71 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.DestroyConstraint:             #        0x40675e  0      OPC=0     
  pushq %rbp                    #  1     0x40675e  1      OPC=1861  
  pushq %rbx                    #  2     0x40675f  1      OPC=1861  
  subq $0x8, %rsp               #  3     0x406760  4      OPC=2389  
  movq %rdi, %rbp               #  4     0x406764  3      OPC=1162  
  cmpb $0xff, 0x10(%rdi)        #  5     0x406767  4      OPC=461   
  je .L_406772                  #  6     0x40676b  6      OPC=893   
  nop                           #  7     0x406771  1      OPC=1343  
  nop                           #  8     0x406772  1      OPC=1343  
  callq .IncrementalRemove      #  9     0x406773  5      OPC=260   
.L_406772:                      #        0x406778  0      OPC=0     
  movsbl 0x12(%rbp), %ebx       #  10    0x406778  4      OPC=1280  
  subl $0x1, %ebx               #  11    0x40677c  3      OPC=2384  
  js .L_406797                  #  12    0x40677f  6      OPC=1043  
  nop                           #  13    0x406785  1      OPC=1343  
  nop                           #  14    0x406786  1      OPC=1343  
.L_40677b:                      #        0x406787  0      OPC=0     
  movslq %ebx, %rax             #  15    0x406787  3      OPC=1289  
  movq 0x20(%rbp,%rax,8), %rax  #  16    0x40678a  5      OPC=1161  
  movq 0x8(%rax), %rdi          #  17    0x40678f  4      OPC=1161  
  movq %rbp, %rsi               #  18    0x406793  3      OPC=1162  
  callq .List_Remove            #  19    0x406796  5      OPC=260   
  subl $0x1, %ebx               #  20    0x40679b  3      OPC=2384  
  cmpl $0xffffffff, %ebx        #  21    0x40679e  6      OPC=469   
  nop                           #  22    0x4067a4  1      OPC=1343  
  nop                           #  23    0x4067a5  1      OPC=1343  
  nop                           #  24    0x4067a6  1      OPC=1343  
  jne .L_40677b                 #  25    0x4067a7  6      OPC=963   
  nop                           #  26    0x4067ad  1      OPC=1343  
  nop                           #  27    0x4067ae  1      OPC=1343  
.L_406797:                      #        0x4067af  0      OPC=0     
  movq %rbp, %rdi               #  28    0x4067af  3      OPC=1162  
  addq $0x8, %rsp               #  29    0x4067b2  4      OPC=70    
  popq %rbx                     #  30    0x4067b6  1      OPC=1694  
  popq %rbp                     #  31    0x4067b7  1      OPC=1694  
  jmpq .Constraint_Destroy      #  32    0x4067b8  5      OPC=930   
                                                                    
.size DestroyConstraint, .-DestroyConstraint

