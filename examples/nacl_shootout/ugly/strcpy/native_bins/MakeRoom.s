  .text
  .globl MakeRoom
  .type MakeRoom, @function

#! file-offset 0x5a2b
#! rip-offset  0x405a2b
#! capacity    110 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.MakeRoom:                  #        0x405a2b  0      OPC=0     
  pushq %r13                #  1     0x405a2b  2      OPC=1861  
  pushq %r12                #  2     0x405a2d  2      OPC=1861  
  pushq %rbp                #  3     0x405a2f  1      OPC=1861  
  pushq %rbx                #  4     0x405a30  1      OPC=1861  
  subq $0x8, %rsp           #  5     0x405a31  4      OPC=2389  
  movq %rdi, %rbp           #  6     0x405a35  3      OPC=1162  
  movq (%rdi), %rbx         #  7     0x405a38  3      OPC=1161  
  movslq 0xc(%rdi), %r12    #  8     0x405a3b  4      OPC=1288  
  movslq 0x10(%rdi), %r13   #  9     0x405a3f  4      OPC=1288  
  movl %r13d, %eax          #  10    0x405a43  3      OPC=1157  
  subl %r12d, %eax          #  11    0x405a46  3      OPC=2386  
  addl $0x1, %eax           #  12    0x405a49  3      OPC=65    
  cmpl 0x8(%rdi), %eax      #  13    0x405a4c  3      OPC=471   
  jge .L_405a8f             #  14    0x405a4f  6      OPC=907   
  nop                       #  15    0x405a55  1      OPC=1343  
  nop                       #  16    0x405a56  1      OPC=1343  
  movl %r12d, %esi          #  17    0x405a57  3      OPC=1157  
.L_405a54:                  #        0x405a5a  0      OPC=0     
  testl %esi, %esi          #  18    0x405a5a  2      OPC=2436  
  je .L_405a84              #  19    0x405a5c  6      OPC=893   
  nop                       #  20    0x405a62  1      OPC=1343  
  nop                       #  21    0x405a63  1      OPC=1343  
  leaq (%rbx,%r12,8), %rax  #  22    0x405a64  4      OPC=1069  
  leaq (%rbx,%r13,8), %rcx  #  23    0x405a68  4      OPC=1069  
  cmpq %rcx, %rax           #  24    0x405a6c  3      OPC=477   
  ja .L_405a7a              #  25    0x405a6f  6      OPC=863   
  nop                       #  26    0x405a75  1      OPC=1343  
  nop                       #  27    0x405a76  1      OPC=1343  
.L_405a65:                  #        0x405a77  0      OPC=0     
  addq $0x8, %rbx           #  28    0x405a77  4      OPC=70    
  addq $0x8, %rax           #  29    0x405a7b  4      OPC=70    
  movq -0x8(%rax), %rdx     #  30    0x405a7f  4      OPC=1161  
  movq %rdx, -0x8(%rbx)     #  31    0x405a83  4      OPC=1138  
  cmpq %rax, %rcx           #  32    0x405a87  3      OPC=477   
  jae .L_405a65             #  33    0x405a8a  6      OPC=869   
  nop                       #  34    0x405a90  1      OPC=1343  
  nop                       #  35    0x405a91  1      OPC=1343  
.L_405a7a:                  #        0x405a92  0      OPC=0     
  subl %esi, 0x10(%rbp)     #  36    0x405a92  3      OPC=2371  
  movl $0x0, 0xc(%rbp)      #  37    0x405a95  7      OPC=1135  
.L_405a84:                  #        0x405a9c  0      OPC=0     
  addq $0x8, %rsp           #  38    0x405a9c  4      OPC=70    
  popq %rbx                 #  39    0x405aa0  1      OPC=1694  
  popq %rbp                 #  40    0x405aa1  1      OPC=1694  
  popq %r12                 #  41    0x405aa2  2      OPC=1694  
  popq %r13                 #  42    0x405aa4  2      OPC=1694  
  retq                      #  43    0x405aa6  1      OPC=1978  
.L_405a8f:                  #        0x405aa7  0      OPC=0     
  callq .Grow               #  44    0x405aa7  5      OPC=260   
  movl 0xc(%rbp), %esi      #  45    0x405aac  3      OPC=1156  
  jmpq .L_405a54            #  46    0x405aaf  5      OPC=930   
  nop                       #  47    0x405ab4  1      OPC=1343  
  nop                       #  48    0x405ab5  1      OPC=1343  
                                                                
.size MakeRoom, .-MakeRoom

