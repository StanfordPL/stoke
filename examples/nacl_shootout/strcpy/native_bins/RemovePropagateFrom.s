  .text
  .globl RemovePropagateFrom
  .type RemovePropagateFrom, @function

#! file-offset 0x641b
#! rip-offset  0x40641b
#! capacity    160 bytes

# Text                             #  Line  RIP       Bytes  Opcode    
.RemovePropagateFrom:              #        0x40641b  0      OPC=0     
  pushq %r13                       #  1     0x40641b  2      OPC=1861  
  pushq %r12                       #  2     0x40641d  2      OPC=1861  
  pushq %rbp                       #  3     0x40641f  1      OPC=1861  
  pushq %rbx                       #  4     0x406420  1      OPC=1861  
  subq $0x8, %rsp                  #  5     0x406421  4      OPC=2389  
  movq %rdi, %r12                  #  6     0x406425  3      OPC=1162  
  movq $0x0, 0x10(%rdi)            #  7     0x406428  8      OPC=1137  
  movl $0x6, 0x20(%rdi)            #  8     0x406430  7      OPC=1135  
  movl $0x1, 0x24(%rdi)            #  9     0x406437  7      OPC=1135  
  movl $0x8, %edi                  #  10    0x40643e  5      OPC=1154  
  callq .List_Create               #  11    0x406443  5      OPC=260   
  movq %rax, %r13                  #  12    0x406448  3      OPC=1162  
.L_40644b:                         #        0x40644b  0      OPC=0     
  movq 0x8(%r12), %rdx             #  13    0x40644b  5      OPC=1161  
  movq (%rdx), %rax                #  14    0x406450  3      OPC=1161  
  movslq 0xc(%rdx), %rcx           #  15    0x406453  4      OPC=1288  
  leaq (%rax,%rcx,8), %rbx         #  16    0x406457  4      OPC=1069  
  movslq 0x10(%rdx), %rdx          #  17    0x40645b  4      OPC=1288  
  leaq (%rax,%rdx,8), %rbp         #  18    0x40645f  4      OPC=1069  
  cmpq %rbp, %rbx                  #  19    0x406463  3      OPC=477   
  ja .L_40647c                     #  20    0x406466  6      OPC=863   
  nop                              #  21    0x40646c  1      OPC=1343  
  nop                              #  22    0x40646d  1      OPC=1343  
.L_406468:                         #        0x40646e  0      OPC=0     
  addq $0x8, %rbx                  #  23    0x40646e  4      OPC=70    
  movq -0x8(%rbx), %rdi            #  24    0x406472  4      OPC=1161  
  xorl %eax, %eax                  #  25    0x406476  2      OPC=3758  
  callq .CollectUnsatisfied        #  26    0x406478  5      OPC=260   
  cmpq %rbx, %rbp                  #  27    0x40647d  3      OPC=477   
  jae .L_406468                    #  28    0x406480  6      OPC=869   
  nop                              #  29    0x406486  1      OPC=1343  
  nop                              #  30    0x406487  1      OPC=1343  
.L_40647c:                         #        0x406488  0      OPC=0     
  movq %r12, %rsi                  #  31    0x406488  3      OPC=1162  
  movq %r13, %rdi                  #  32    0x40648b  3      OPC=1162  
  callq .NextDownstreamConstraint  #  33    0x40648e  5      OPC=260   
  movq %rax, %rbx                  #  34    0x406493  3      OPC=1162  
  testq %rax, %rax                 #  35    0x406496  3      OPC=2438  
  je .L_4064a9                     #  36    0x406499  6      OPC=893   
  nop                              #  37    0x40649f  1      OPC=1343  
  nop                              #  38    0x4064a0  1      OPC=1343  
  movq %rax, %rdi                  #  39    0x4064a1  3      OPC=1162  
  callq .Recalculate               #  40    0x4064a4  5      OPC=260   
  movsbq 0x10(%rbx), %rax          #  41    0x4064a9  5      OPC=1285  
  movsbq 0x13(%rbx,%rax,1), %rax   #  42    0x4064ae  6      OPC=1285  
  movq 0x20(%rbx,%rax,8), %r12     #  43    0x4064b4  5      OPC=1161  
  jmpq .L_40644b                   #  44    0x4064b9  5      OPC=930   
  nop                              #  45    0x4064be  1      OPC=1343  
  nop                              #  46    0x4064bf  1      OPC=1343  
.L_4064a9:                         #        0x4064c0  0      OPC=0     
  movq %r13, %rdi                  #  47    0x4064c0  3      OPC=1162  
  addq $0x8, %rsp                  #  48    0x4064c3  4      OPC=70    
  popq %rbx                        #  49    0x4064c7  1      OPC=1694  
  popq %rbp                        #  50    0x4064c8  1      OPC=1694  
  popq %r12                        #  51    0x4064c9  2      OPC=1694  
  popq %r13                        #  52    0x4064cb  2      OPC=1694  
  jmpq .List_Destroy               #  53    0x4064cd  5      OPC=930   
                                                                       
.size RemovePropagateFrom, .-RemovePropagateFrom

