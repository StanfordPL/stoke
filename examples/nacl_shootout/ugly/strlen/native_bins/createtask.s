  .text
  .globl createtask
  .type createtask, @function

#! file-offset 0x4ffb
#! rip-offset  0x404ffb
#! capacity    114 bytes

# Text                          #  Line  RIP       Bytes  Opcode    
.createtask:                    #        0x404ffb  0      OPC=0     
  pushq %r15                    #  1     0x404ffb  2      OPC=1861  
  pushq %r14                    #  2     0x404ffd  2      OPC=1861  
  pushq %r13                    #  3     0x404fff  2      OPC=1861  
  pushq %r12                    #  4     0x405001  2      OPC=1861  
  pushq %rbp                    #  5     0x405003  1      OPC=1861  
  pushq %rbx                    #  6     0x405004  1      OPC=1861  
  subq $0x8, %rsp               #  7     0x405005  4      OPC=2389  
  movl %edi, %ebx               #  8     0x405009  2      OPC=1157  
  movl %esi, %ebp               #  9     0x40500b  2      OPC=1157  
  movq %rdx, %r12               #  10    0x40500d  3      OPC=1162  
  movl %ecx, %r13d              #  11    0x405010  3      OPC=1157  
  movq %r8, %r14                #  12    0x405013  3      OPC=1162  
  movq %r9, %r15                #  13    0x405016  3      OPC=1162  
  movl $0x38, %edi              #  14    0x405019  5      OPC=1154  
  callq .malloc_plt             #  15    0x40501e  5      OPC=260   
  movslq %ebx, %rdx             #  16    0x405023  3      OPC=1289  
  movq %rax, 0x625300(,%rdx,8)  #  17    0x405026  8      OPC=1138  
  movq 0x2203fb(%rip), %rdx     #  18    0x40502e  7      OPC=1161  
  movq %rdx, (%rax)             #  19    0x405035  3      OPC=1138  
  movl %ebx, 0x8(%rax)          #  20    0x405038  3      OPC=1136  
  movl %ebp, 0xc(%rax)          #  21    0x40503b  3      OPC=1136  
  movq %r12, 0x10(%rax)         #  22    0x40503e  4      OPC=1138  
  movl %r13d, 0x18(%rax)        #  23    0x405042  4      OPC=1136  
  movq %r14, 0x20(%rax)         #  24    0x405046  4      OPC=1138  
  movq %r15, 0x28(%rax)         #  25    0x40504a  4      OPC=1138  
  movq 0x40(%rsp), %rdx         #  26    0x40504e  5      OPC=1161  
  movq %rdx, 0x30(%rax)         #  27    0x405053  4      OPC=1138  
  movq %rax, 0x2203d2(%rip)     #  28    0x405057  7      OPC=1138  
  addq $0x8, %rsp               #  29    0x40505e  4      OPC=70    
  popq %rbx                     #  30    0x405062  1      OPC=1694  
  popq %rbp                     #  31    0x405063  1      OPC=1694  
  popq %r12                     #  32    0x405064  2      OPC=1694  
  popq %r13                     #  33    0x405066  2      OPC=1694  
  popq %r14                     #  34    0x405068  2      OPC=1694  
  popq %r15                     #  35    0x40506a  2      OPC=1694  
  retq                          #  36    0x40506c  1      OPC=1978  
                                                                    
.size createtask, .-createtask

