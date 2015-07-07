  .text
  .globl CollectSatisfiedInputs
  .type CollectSatisfiedInputs, @function

#! file-offset 0x5f88
#! rip-offset  0x405f88
#! capacity    61 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.CollectSatisfiedInputs:      #        0x405f88  0      OPC=0     
  pushq %rbp                  #  1     0x405f88  1      OPC=1861  
  pushq %rbx                  #  2     0x405f89  1      OPC=1861  
  subq $0x8, %rsp             #  3     0x405f8a  4      OPC=2389  
  movq 0x8(%rdi), %rax        #  4     0x405f8e  4      OPC=1161  
  movq (%rax), %rdx           #  5     0x405f92  3      OPC=1161  
  movslq 0xc(%rax), %rcx      #  6     0x405f95  4      OPC=1288  
  leaq (%rdx,%rcx,8), %rbx    #  7     0x405f99  4      OPC=1069  
  movslq 0x10(%rax), %rax     #  8     0x405f9d  4      OPC=1288  
  leaq (%rdx,%rax,8), %rbp    #  9     0x405fa1  4      OPC=1069  
  cmpq %rbp, %rbx             #  10    0x405fa5  3      OPC=477   
  ja .L_405fbe                #  11    0x405fa8  6      OPC=863   
  nop                         #  12    0x405fae  1      OPC=1343  
  nop                         #  13    0x405faf  1      OPC=1343  
.L_405faa:                    #        0x405fb0  0      OPC=0     
  addq $0x8, %rbx             #  14    0x405fb0  4      OPC=70    
  movq -0x8(%rbx), %rdi       #  15    0x405fb4  4      OPC=1161  
  xorl %eax, %eax             #  16    0x405fb8  2      OPC=3758  
  callq .AddIfSatisfiedInput  #  17    0x405fba  5      OPC=260   
  cmpq %rbx, %rbp             #  18    0x405fbf  3      OPC=477   
  jae .L_405faa               #  19    0x405fc2  6      OPC=869   
  nop                         #  20    0x405fc8  1      OPC=1343  
  nop                         #  21    0x405fc9  1      OPC=1343  
.L_405fbe:                    #        0x405fca  0      OPC=0     
  addq $0x8, %rsp             #  22    0x405fca  4      OPC=70    
  popq %rbx                   #  23    0x405fce  1      OPC=1694  
  popq %rbp                   #  24    0x405fcf  1      OPC=1694  
  retq                        #  25    0x405fd0  1      OPC=1978  
                                                                  
.size CollectSatisfiedInputs, .-CollectSatisfiedInputs

