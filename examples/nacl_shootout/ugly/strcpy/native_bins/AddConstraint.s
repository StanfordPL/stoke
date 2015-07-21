  .text
  .globl AddConstraint
  .type AddConstraint, @function

#! file-offset 0x6653
#! rip-offset  0x406653
#! capacity    64 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.AddConstraint:                 #        0x406653  0      OPC=0     
  pushq %rbp                    #  1     0x406653  1      OPC=1861  
  pushq %rbx                    #  2     0x406654  1      OPC=1861  
  subq $0x8, %rsp               #  3     0x406655  4      OPC=2389  
  movq %rdi, %rbp               #  4     0x406659  3      OPC=1162  
  movsbl 0x12(%rdi), %ebx       #  5     0x40665c  4      OPC=1280  
  subl $0x1, %ebx               #  6     0x406660  3      OPC=2384  
  js .L_406681                  #  7     0x406663  6      OPC=1043  
  nop                           #  8     0x406669  1      OPC=1343  
  nop                           #  9     0x40666a  1      OPC=1343  
.L_406665:                      #        0x40666b  0      OPC=0     
  movslq %ebx, %rax             #  10    0x40666b  3      OPC=1289  
  movq 0x20(%rbp,%rax,8), %rax  #  11    0x40666e  5      OPC=1161  
  movq 0x8(%rax), %rdi          #  12    0x406673  4      OPC=1161  
  movq %rbp, %rsi               #  13    0x406677  3      OPC=1162  
  callq .List_Add               #  14    0x40667a  5      OPC=260   
  subl $0x1, %ebx               #  15    0x40667f  3      OPC=2384  
  cmpl $0xffffffff, %ebx        #  16    0x406682  6      OPC=469   
  nop                           #  17    0x406688  1      OPC=1343  
  nop                           #  18    0x406689  1      OPC=1343  
  nop                           #  19    0x40668a  1      OPC=1343  
  jne .L_406665                 #  20    0x40668b  6      OPC=963   
  nop                           #  21    0x406691  1      OPC=1343  
  nop                           #  22    0x406692  1      OPC=1343  
.L_406681:                      #        0x406693  0      OPC=0     
  movb $0xff, 0x10(%rbp)        #  23    0x406693  4      OPC=1140  
  movq %rbp, %rdi               #  24    0x406697  3      OPC=1162  
  addq $0x8, %rsp               #  25    0x40669a  4      OPC=70    
  popq %rbx                     #  26    0x40669e  1      OPC=1694  
  popq %rbp                     #  27    0x40669f  1      OPC=1694  
  jmpq .IncrementalAdd          #  28    0x4066a0  5      OPC=930   
                                                                    
.size AddConstraint, .-AddConstraint

