  .text
  .globl ExtractPlan
  .type ExtractPlan, @function

#! file-offset 0x62e2
#! rip-offset  0x4062e2
#! capacity    113 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
.ExtractPlan:                    #        0x4062e2  0      OPC=0     
  pushq %rbp                     #  1     0x4062e2  1      OPC=1861  
  pushq %rbx                     #  2     0x4062e3  1      OPC=1861  
  subq $0x8, %rsp                #  3     0x4062e4  4      OPC=2389  
  movq 0x21f151(%rip), %rax      #  4     0x4062e8  7      OPC=1161  
  testq %rax, %rax               #  5     0x4062ef  3      OPC=2438  
  je .L_406340                   #  6     0x4062f2  6      OPC=893   
  nop                            #  7     0x4062f8  1      OPC=1343  
  nop                            #  8     0x4062f9  1      OPC=1343  
.L_4062f4:                       #        0x4062fa  0      OPC=0     
  movl $0x0, 0xc(%rax)           #  9     0x4062fa  7      OPC=1135  
  movl $0xffffffff, 0x10(%rax)   #  10    0x406301  7      OPC=1135  
  movq 0x21f147(%rip), %rax      #  11    0x406308  7      OPC=1161  
  movq (%rax), %rdx              #  12    0x40630f  3      OPC=1161  
  movslq 0xc(%rax), %rcx         #  13    0x406312  4      OPC=1288  
  leaq (%rdx,%rcx,8), %rbx       #  14    0x406316  4      OPC=1069  
  movslq 0x10(%rax), %rax        #  15    0x40631a  4      OPC=1288  
  leaq (%rdx,%rax,8), %rbp       #  16    0x40631e  4      OPC=1069  
  cmpq %rbp, %rbx                #  17    0x406322  3      OPC=477   
  ja .L_406335                   #  18    0x406325  6      OPC=863   
  nop                            #  19    0x40632b  1      OPC=1343  
  nop                            #  20    0x40632c  1      OPC=1343  
.L_406321:                       #        0x40632d  0      OPC=0     
  addq $0x8, %rbx                #  21    0x40632d  4      OPC=70    
  movq -0x8(%rbx), %rdi          #  22    0x406331  4      OPC=1161  
  xorl %eax, %eax                #  23    0x406335  2      OPC=3758  
  callq .CollectSatisfiedInputs  #  24    0x406337  5      OPC=260   
  cmpq %rbx, %rbp                #  25    0x40633c  3      OPC=477   
  jae .L_406321                  #  26    0x40633f  6      OPC=869   
  nop                            #  27    0x406345  1      OPC=1343  
  nop                            #  28    0x406346  1      OPC=1343  
.L_406335:                       #        0x406347  0      OPC=0     
  addq $0x8, %rsp                #  29    0x406347  4      OPC=70    
  popq %rbx                      #  30    0x40634b  1      OPC=1694  
  popq %rbp                      #  31    0x40634c  1      OPC=1694  
  jmpq .MakePlan                 #  32    0x40634d  5      OPC=930   
.L_406340:                       #        0x406352  0      OPC=0     
  movl $0x80, %edi               #  33    0x406352  5      OPC=1154  
  callq .List_Create             #  34    0x406357  5      OPC=260   
  movq %rax, 0x21f0ef(%rip)      #  35    0x40635c  7      OPC=1138  
  jmpq .L_4062f4                 #  36    0x406363  5      OPC=930   
  nop                            #  37    0x406368  1      OPC=1343  
  nop                            #  38    0x406369  1      OPC=1343  
                                                                     
.size ExtractPlan, .-ExtractPlan

