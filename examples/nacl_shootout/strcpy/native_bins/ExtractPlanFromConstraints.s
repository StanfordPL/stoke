  .text
  .globl ExtractPlanFromConstraints
  .type ExtractPlanFromConstraints, @function

#! file-offset 0x63ad
#! rip-offset  0x4063ad
#! capacity    110 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.ExtractPlanFromConstraints:    #        0x4063ad  0      OPC=0     
  pushq %rbp                    #  1     0x4063ad  1      OPC=1861  
  pushq %rbx                    #  2     0x4063ae  1      OPC=1861  
  subq $0x8, %rsp               #  3     0x4063af  4      OPC=2389  
  movq %rdi, %rbp               #  4     0x4063b3  3      OPC=1162  
  movq 0x21f083(%rip), %rax     #  5     0x4063b6  7      OPC=1161  
  testq %rax, %rax              #  6     0x4063bd  3      OPC=2438  
  je .L_406408                  #  7     0x4063c0  6      OPC=893   
  nop                           #  8     0x4063c6  1      OPC=1343  
  nop                           #  9     0x4063c7  1      OPC=1343  
.L_4063c2:                      #        0x4063c8  0      OPC=0     
  movl $0x0, 0xc(%rax)          #  10    0x4063c8  7      OPC=1135  
  movl $0xffffffff, 0x10(%rax)  #  11    0x4063cf  7      OPC=1135  
  movq (%rbp), %rax             #  12    0x4063d6  4      OPC=1161  
  movslq 0xc(%rbp), %rdx        #  13    0x4063da  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbx      #  14    0x4063de  4      OPC=1069  
  movslq 0x10(%rbp), %rdx       #  15    0x4063e2  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbp      #  16    0x4063e6  4      OPC=1069  
  cmpq %rbp, %rbx               #  17    0x4063ea  3      OPC=477   
  ja .L_4063fd                  #  18    0x4063ed  6      OPC=863   
  nop                           #  19    0x4063f3  1      OPC=1343  
  nop                           #  20    0x4063f4  1      OPC=1343  
.L_4063e9:                      #        0x4063f5  0      OPC=0     
  addq $0x8, %rbx               #  21    0x4063f5  4      OPC=70    
  movq -0x8(%rbx), %rdi         #  22    0x4063f9  4      OPC=1161  
  xorl %eax, %eax               #  23    0x4063fd  2      OPC=3758  
  callq .AddIfSatisfiedInput    #  24    0x4063ff  5      OPC=260   
  cmpq %rbx, %rbp               #  25    0x406404  3      OPC=477   
  jae .L_4063e9                 #  26    0x406407  6      OPC=869   
  nop                           #  27    0x40640d  1      OPC=1343  
  nop                           #  28    0x40640e  1      OPC=1343  
.L_4063fd:                      #        0x40640f  0      OPC=0     
  addq $0x8, %rsp               #  29    0x40640f  4      OPC=70    
  popq %rbx                     #  30    0x406413  1      OPC=1694  
  popq %rbp                     #  31    0x406414  1      OPC=1694  
  jmpq .MakePlan                #  32    0x406415  5      OPC=930   
.L_406408:                      #        0x40641a  0      OPC=0     
  movl $0x80, %edi              #  33    0x40641a  5      OPC=1154  
  callq .List_Create            #  34    0x40641f  5      OPC=260   
  movq %rax, 0x21f027(%rip)     #  35    0x406424  7      OPC=1138  
  jmpq .L_4063c2                #  36    0x40642b  5      OPC=930   
  nop                           #  37    0x406430  1      OPC=1343  
  nop                           #  38    0x406431  1      OPC=1343  
                                                                    
.size ExtractPlanFromConstraints, .-ExtractPlanFromConstraints

