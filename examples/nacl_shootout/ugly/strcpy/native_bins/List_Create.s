  .text
  .globl List_Create
  .type List_Create, @function

#! file-offset 0x591b
#! rip-offset  0x40591b
#! capacity    83 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.List_Create:                   #        0x40591b  0      OPC=0     
  pushq %rbp                    #  1     0x40591b  1      OPC=1861  
  pushq %rbx                    #  2     0x40591c  1      OPC=1861  
  subq $0x8, %rsp               #  3     0x40591d  4      OPC=2389  
  movl %edi, %ebp               #  4     0x405921  2      OPC=1157  
  movl $0x18, %edi              #  5     0x405923  5      OPC=1154  
  callq .malloc_plt             #  6     0x405928  5      OPC=260   
  movq %rax, %rbx               #  7     0x40592d  3      OPC=1162  
  testq %rax, %rax              #  8     0x405930  3      OPC=2438  
  je .L_405964                  #  9     0x405933  6      OPC=893   
  nop                           #  10    0x405939  1      OPC=1343  
  nop                           #  11    0x40593a  1      OPC=1343  
  movslq %ebp, %rdi             #  12    0x40593b  3      OPC=1289  
  shlq $0x3, %rdi               #  13    0x40593e  4      OPC=2272  
  callq .malloc_plt             #  14    0x405942  5      OPC=260   
  movq %rax, (%rbx)             #  15    0x405947  3      OPC=1138  
  testq %rax, %rax              #  16    0x40594a  3      OPC=2438  
  je .L_405964                  #  17    0x40594d  6      OPC=893   
  nop                           #  18    0x405953  1      OPC=1343  
  nop                           #  19    0x405954  1      OPC=1343  
  movl %ebp, 0x8(%rbx)          #  20    0x405955  3      OPC=1136  
  movl $0x0, 0xc(%rbx)          #  21    0x405958  7      OPC=1135  
  movl $0xffffffff, 0x10(%rbx)  #  22    0x40595f  7      OPC=1135  
  movq %rbx, %rax               #  23    0x405966  3      OPC=1162  
  addq $0x8, %rsp               #  24    0x405969  4      OPC=70    
  popq %rbx                     #  25    0x40596d  1      OPC=1694  
  popq %rbp                     #  26    0x40596e  1      OPC=1694  
  retq                          #  27    0x40596f  1      OPC=1978  
.L_405964:                      #        0x405970  0      OPC=0     
  movl $0x408aa1, %edi          #  28    0x405970  5      OPC=1154  
  callq .Error                  #  29    0x405975  5      OPC=260   
                                                                    
.size List_Create, .-List_Create

