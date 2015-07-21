  .text
  .globl run_deltablue
  .type run_deltablue, @function

#! file-offset 0x6dbd
#! rip-offset  0x406dbd
#! capacity    65 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.run_deltablue:                   #        0x406dbd  0      OPC=0     
  pushq %rbx                      #  1     0x406dbd  1      OPC=1861  
  movl %edi, %ebx                 #  2     0x406dbe  2      OPC=1157  
  callq .clock_plt                #  3     0x406dc0  5      OPC=260   
  movq %rax, %rcx                 #  4     0x406dc5  3      OPC=1162  
  movq $0x20c49ba5e353f7cf, %rdx  #  5     0x406dc8  10     OPC=1160  
  imulq %rdx                      #  6     0x406dd2  3      OPC=824   
  sarq $0x7, %rdx                 #  7     0x406dd5  4      OPC=2099  
  sarq $0x3f, %rcx                #  8     0x406dd9  4      OPC=2099  
  subq %rcx, %rdx                 #  9     0x406ddd  3      OPC=2391  
  movq %rdx, 0x21ec51(%rip)       #  10    0x406de0  7      OPC=1138  
  movl %ebx, %edi                 #  11    0x406de7  2      OPC=1157  
  callq .ChainTest                #  12    0x406de9  5      OPC=260   
  movl %ebx, %edi                 #  13    0x406dee  2      OPC=1157  
  callq .ProjectionTest           #  14    0x406df0  5      OPC=260   
  callq .clock_plt                #  15    0x406df5  5      OPC=260   
  xorl %eax, %eax                 #  16    0x406dfa  2      OPC=3758  
  popq %rbx                       #  17    0x406dfc  1      OPC=1694  
  retq                            #  18    0x406dfd  1      OPC=1978  
                                                                      
.size run_deltablue, .-run_deltablue

