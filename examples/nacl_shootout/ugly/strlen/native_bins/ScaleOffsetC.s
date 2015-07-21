  .text
  .globl ScaleOffsetC
  .type ScaleOffsetC, @function

#! file-offset 0x6904
#! rip-offset  0x406904
#! capacity    91 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.ScaleOffsetC:              #        0x406904  0      OPC=0     
  pushq %r14                #  1     0x406904  2      OPC=1861  
  pushq %r13                #  2     0x406906  2      OPC=1861  
  pushq %r12                #  3     0x406908  2      OPC=1861  
  pushq %rbp                #  4     0x40690a  1      OPC=1861  
  pushq %rbx                #  5     0x40690b  1      OPC=1861  
  movq %rdi, %r12           #  6     0x40690c  3      OPC=1162  
  movq %rsi, %rbp           #  7     0x40690f  3      OPC=1162  
  movq %rdx, %r13           #  8     0x406912  3      OPC=1162  
  movq %rcx, %r14           #  9     0x406915  3      OPC=1162  
  movl %r8d, %esi           #  10    0x406918  3      OPC=1157  
  movl $0x4, %edi           #  11    0x40691b  5      OPC=1154  
  callq .Constraint_Create  #  12    0x406920  5      OPC=260   
  movq %rax, %rbx           #  13    0x406925  3      OPC=1162  
  movq $0x4057f3, (%rax)    #  14    0x406928  7      OPC=1137  
  movq %r12, 0x20(%rax)     #  15    0x40692f  4      OPC=1138  
  movq %rbp, 0x28(%rax)     #  16    0x406933  4      OPC=1138  
  movq %r13, 0x30(%rax)     #  17    0x406937  4      OPC=1138  
  movq %r14, 0x38(%rax)     #  18    0x40693b  4      OPC=1138  
  movb $0x2, 0x11(%rax)     #  19    0x40693f  4      OPC=1140  
  movb $0x3, 0x13(%rax)     #  20    0x406943  4      OPC=1140  
  movb $0x0, 0x14(%rax)     #  21    0x406947  4      OPC=1140  
  movq %rax, %rdi           #  22    0x40694b  3      OPC=1162  
  callq .AddConstraint      #  23    0x40694e  5      OPC=260   
  movq %rbx, %rax           #  24    0x406953  3      OPC=1162  
  popq %rbx                 #  25    0x406956  1      OPC=1694  
  popq %rbp                 #  26    0x406957  1      OPC=1694  
  popq %r12                 #  27    0x406958  2      OPC=1694  
  popq %r13                 #  28    0x40695a  2      OPC=1694  
  popq %r14                 #  29    0x40695c  2      OPC=1694  
  retq                      #  30    0x40695e  1      OPC=1978  
                                                                
.size ScaleOffsetC, .-ScaleOffsetC

