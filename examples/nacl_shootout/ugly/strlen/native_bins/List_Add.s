  .text
  .globl List_Add
  .type List_Add, @function

#! file-offset 0x5a99
#! rip-offset  0x405a99
#! capacity    55 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.List_Add:                  #        0x405a99  0      OPC=0     
  pushq %rbp                #  1     0x405a99  1      OPC=1861  
  pushq %rbx                #  2     0x405a9a  1      OPC=1861  
  subq $0x8, %rsp           #  3     0x405a9b  4      OPC=2389  
  movq %rdi, %rbx           #  4     0x405a9f  3      OPC=1162  
  movq %rsi, %rbp           #  5     0x405aa2  3      OPC=1162  
  movl 0x10(%rdi), %eax     #  6     0x405aa5  3      OPC=1156  
  movl 0x8(%rdi), %ecx      #  7     0x405aa8  3      OPC=1156  
  leal -0x1(%rcx), %edx     #  8     0x405aab  3      OPC=1066  
  cmpl %edx, %eax           #  9     0x405aae  2      OPC=472   
  jl .L_405aba              #  10    0x405ab0  6      OPC=913   
  nop                       #  11    0x405ab6  1      OPC=1343  
  nop                       #  12    0x405ab7  1      OPC=1343  
  callq .MakeRoom           #  13    0x405ab8  5      OPC=260   
  movl 0x10(%rbx), %eax     #  14    0x405abd  3      OPC=1156  
.L_405aba:                  #        0x405ac0  0      OPC=0     
  movq (%rbx), %rdx         #  15    0x405ac0  3      OPC=1161  
  addl $0x1, %eax           #  16    0x405ac3  3      OPC=65    
  movl %eax, 0x10(%rbx)     #  17    0x405ac6  3      OPC=1136  
  cltq                      #  18    0x405ac9  2      OPC=263   
  movq %rbp, (%rdx,%rax,8)  #  19    0x405acb  4      OPC=1138  
  addq $0x8, %rsp           #  20    0x405acf  4      OPC=70    
  popq %rbx                 #  21    0x405ad3  1      OPC=1694  
  popq %rbp                 #  22    0x405ad4  1      OPC=1694  
  retq                      #  23    0x405ad5  1      OPC=1978  
                                                                
.size List_Add, .-List_Add

