  .text
  .globl arrayfile_fclose
  .type arrayfile_fclose, @function

#! file-offset 0x7d4e
#! rip-offset  0x407d4e
#! capacity    112 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.arrayfile_fclose:          #        0x407d4e  0      OPC=0     
  pushq %r12                #  1     0x407d4e  2      OPC=1861  
  pushq %rbp                #  2     0x407d50  1      OPC=1861  
  pushq %rbx                #  3     0x407d51  1      OPC=1861  
  movq %rdi, %rbp           #  4     0x407d52  3      OPC=1162  
  testq %rdi, %rdi          #  5     0x407d55  3      OPC=2438  
  je .L_407db7              #  6     0x407d58  6      OPC=893   
  nop                       #  7     0x407d5e  1      OPC=1343  
  nop                       #  8     0x407d5f  1      OPC=1343  
  movl 0x20(%rdi), %eax     #  9     0x407d60  3      OPC=1156  
  testl %eax, %eax          #  10    0x407d63  2      OPC=2436  
  jle .L_407d8d             #  11    0x407d65  6      OPC=919   
  nop                       #  12    0x407d6b  1      OPC=1343  
  nop                       #  13    0x407d6c  1      OPC=1343  
  xorl %ebx, %ebx           #  14    0x407d6d  2      OPC=3758  
  xorl %r12d, %r12d         #  15    0x407d6f  3      OPC=3758  
.L_407d66:                  #        0x407d72  0      OPC=0     
  movq 0x10(%rbp), %rax     #  16    0x407d72  4      OPC=1161  
  movq (%rax,%rbx,1), %rdi  #  17    0x407d76  4      OPC=1161  
  callq .free_plt           #  18    0x407d7a  5      OPC=260   
  movq 0x10(%rbp), %rax     #  19    0x407d7f  4      OPC=1161  
  movq $0x0, (%rax,%rbx,1)  #  20    0x407d83  8      OPC=1137  
  addl $0x1, %r12d          #  21    0x407d8b  4      OPC=65    
  addq $0x8, %rbx           #  22    0x407d8f  4      OPC=70    
  cmpl %r12d, 0x20(%rbp)    #  23    0x407d93  4      OPC=457   
  jg .L_407d66              #  24    0x407d97  6      OPC=901   
  nop                       #  25    0x407d9d  1      OPC=1343  
  nop                       #  26    0x407d9e  1      OPC=1343  
.L_407d8d:                  #        0x407d9f  0      OPC=0     
  movq 0x10(%rbp), %rdi     #  27    0x407d9f  4      OPC=1161  
  callq .free_plt           #  28    0x407da3  5      OPC=260   
  movq 0x8(%rbp), %rdi      #  29    0x407da8  4      OPC=1161  
  callq .free_plt           #  30    0x407dac  5      OPC=260   
  movq 0x18(%rbp), %rdi     #  31    0x407db1  4      OPC=1161  
  callq .free_plt           #  32    0x407db5  5      OPC=260   
  movq %rbp, %rdi           #  33    0x407dba  3      OPC=1162  
  callq .free_plt           #  34    0x407dbd  5      OPC=260   
  xorl %eax, %eax           #  35    0x407dc2  2      OPC=3758  
.L_407db2:                  #        0x407dc4  0      OPC=0     
  popq %rbx                 #  36    0x407dc4  1      OPC=1694  
  popq %rbp                 #  37    0x407dc5  1      OPC=1694  
  popq %r12                 #  38    0x407dc6  2      OPC=1694  
  retq                      #  39    0x407dc8  1      OPC=1978  
.L_407db7:                  #        0x407dc9  0      OPC=0     
  movl $0xffffffff, %eax    #  40    0x407dc9  6      OPC=1155  
  jmpq .L_407db2            #  41    0x407dcf  5      OPC=930   
  nop                       #  42    0x407dd4  1      OPC=1343  
  nop                       #  43    0x407dd5  1      OPC=1343  
                                                                
.size arrayfile_fclose, .-arrayfile_fclose

