  .text
  .globl AddPropagate
  .type AddPropagate, @function

#! file-offset 0x64bb
#! rip-offset  0x4064bb
#! capacity    146 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.AddPropagate:                     #        0x4064bb  0      OPC=0     
  pushq %r12                       #  1     0x4064bb  2      OPC=1861  
  pushq %rbp                       #  2     0x4064bd  1      OPC=1861  
  pushq %rbx                       #  3     0x4064be  1      OPC=1861  
  movq %rdi, %r12                  #  4     0x4064bf  3      OPC=1162  
  movl $0x8, %edi                  #  5     0x4064c2  5      OPC=1154  
  callq .List_Create               #  6     0x4064c7  5      OPC=260   
  movq %rax, %rbp                  #  7     0x4064cc  3      OPC=1162  
  testq %r12, %r12                 #  8     0x4064cf  3      OPC=2438  
  je .L_40652c                     #  9     0x4064d2  6      OPC=893   
  nop                              #  10    0x4064d8  1      OPC=1343  
  nop                              #  11    0x4064d9  1      OPC=1343  
  movsbq 0x10(%r12), %rax          #  12    0x4064da  6      OPC=1285  
  movsbq 0x13(%r12,%rax,1), %rax   #  13    0x4064e0  6      OPC=1285  
  movq 0x20(%r12,%rax,8), %rbx     #  14    0x4064e6  5      OPC=1161  
  movq %r12, %rax                  #  15    0x4064eb  3      OPC=1162  
  movq 0x21ef59(%rip), %rsi        #  16    0x4064ee  7      OPC=1161  
  cmpq %rsi, 0x18(%rbx)            #  17    0x4064f5  4      OPC=460   
  jne .L_406514                    #  18    0x4064f9  6      OPC=963   
  nop                              #  19    0x4064ff  1      OPC=1343  
  nop                              #  20    0x406500  1      OPC=1343  
  jmpq .L_40653e                   #  21    0x406501  5      OPC=930   
  nop                              #  22    0x406506  1      OPC=1343  
  nop                              #  23    0x406507  1      OPC=1343  
.L_4064f7:                         #        0x406508  0      OPC=0     
  movsbq 0x10(%rax), %rcx          #  24    0x406508  5      OPC=1285  
  movsbq 0x13(%rax,%rcx,1), %rcx   #  25    0x40650d  6      OPC=1285  
  movq 0x20(%rax,%rcx,8), %rbx     #  26    0x406513  5      OPC=1161  
  movq 0x21ef3a(%rip), %rdx        #  27    0x406518  7      OPC=1161  
  cmpq %rdx, 0x18(%rbx)            #  28    0x40651f  4      OPC=460   
  je .L_40653e                     #  29    0x406523  6      OPC=893   
  nop                              #  30    0x406529  1      OPC=1343  
  nop                              #  31    0x40652a  1      OPC=1343  
.L_406514:                         #        0x40652b  0      OPC=0     
  movq %rax, %rdi                  #  32    0x40652b  3      OPC=1162  
  callq .Recalculate               #  33    0x40652e  5      OPC=260   
  movq %rbx, %rsi                  #  34    0x406533  3      OPC=1162  
  movq %rbp, %rdi                  #  35    0x406536  3      OPC=1162  
  callq .NextDownstreamConstraint  #  36    0x406539  5      OPC=260   
  testq %rax, %rax                 #  37    0x40653e  3      OPC=2438  
  jne .L_4064f7                    #  38    0x406541  6      OPC=963   
  nop                              #  39    0x406547  1      OPC=1343  
  nop                              #  40    0x406548  1      OPC=1343  
.L_40652c:                         #        0x406549  0      OPC=0     
  movq %rbp, %rdi                  #  41    0x406549  3      OPC=1162  
  callq .List_Destroy              #  42    0x40654c  5      OPC=260   
  movl $0x1, %eax                  #  43    0x406551  5      OPC=1154  
  popq %rbx                        #  44    0x406556  1      OPC=1694  
  popq %rbp                        #  45    0x406557  1      OPC=1694  
  popq %r12                        #  46    0x406558  2      OPC=1694  
  retq                             #  47    0x40655a  1      OPC=1978  
.L_40653e:                         #        0x40655b  0      OPC=0     
  movq %r12, %rdi                  #  48    0x40655b  3      OPC=1162  
  callq .IncrementalRemove         #  49    0x40655e  5      OPC=260   
  xorl %eax, %eax                  #  50    0x406563  2      OPC=3758  
  popq %rbx                        #  51    0x406565  1      OPC=1694  
  popq %rbp                        #  52    0x406566  1      OPC=1694  
  popq %r12                        #  53    0x406567  2      OPC=1694  
  retq                             #  54    0x406569  1      OPC=1978  
                                                                       
.size AddPropagate, .-AddPropagate

