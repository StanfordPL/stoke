  .text
  .globl arrayfile_fclose
  .type arrayfile_fclose, @function

#! file-offset 0x7cee
#! rip-offset  0x407cee
#! capacity    112 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.arrayfile_fclose:          #        0x407cee  0      OPC=0     
  pushq %r12                #  1     0x407cee  2      OPC=1861  
  pushq %rbp                #  2     0x407cf0  1      OPC=1861  
  pushq %rbx                #  3     0x407cf1  1      OPC=1861  
  movq %rdi, %rbp           #  4     0x407cf2  3      OPC=1162  
  testq %rdi, %rdi          #  5     0x407cf5  3      OPC=2438  
  je .L_407d57              #  6     0x407cf8  6      OPC=893   
  nop                       #  7     0x407cfe  1      OPC=1343  
  nop                       #  8     0x407cff  1      OPC=1343  
  movl 0x20(%rdi), %eax     #  9     0x407d00  3      OPC=1156  
  testl %eax, %eax          #  10    0x407d03  2      OPC=2436  
  jle .L_407d2d             #  11    0x407d05  6      OPC=919   
  nop                       #  12    0x407d0b  1      OPC=1343  
  nop                       #  13    0x407d0c  1      OPC=1343  
  xorl %ebx, %ebx           #  14    0x407d0d  2      OPC=3758  
  xorl %r12d, %r12d         #  15    0x407d0f  3      OPC=3758  
.L_407d06:                  #        0x407d12  0      OPC=0     
  movq 0x10(%rbp), %rax     #  16    0x407d12  4      OPC=1161  
  movq (%rax,%rbx,1), %rdi  #  17    0x407d16  4      OPC=1161  
  callq .free_plt           #  18    0x407d1a  5      OPC=260   
  movq 0x10(%rbp), %rax     #  19    0x407d1f  4      OPC=1161  
  movq $0x0, (%rax,%rbx,1)  #  20    0x407d23  8      OPC=1137  
  addl $0x1, %r12d          #  21    0x407d2b  4      OPC=65    
  addq $0x8, %rbx           #  22    0x407d2f  4      OPC=70    
  cmpl %r12d, 0x20(%rbp)    #  23    0x407d33  4      OPC=457   
  jg .L_407d06              #  24    0x407d37  6      OPC=901   
  nop                       #  25    0x407d3d  1      OPC=1343  
  nop                       #  26    0x407d3e  1      OPC=1343  
.L_407d2d:                  #        0x407d3f  0      OPC=0     
  movq 0x10(%rbp), %rdi     #  27    0x407d3f  4      OPC=1161  
  callq .free_plt           #  28    0x407d43  5      OPC=260   
  movq 0x8(%rbp), %rdi      #  29    0x407d48  4      OPC=1161  
  callq .free_plt           #  30    0x407d4c  5      OPC=260   
  movq 0x18(%rbp), %rdi     #  31    0x407d51  4      OPC=1161  
  callq .free_plt           #  32    0x407d55  5      OPC=260   
  movq %rbp, %rdi           #  33    0x407d5a  3      OPC=1162  
  callq .free_plt           #  34    0x407d5d  5      OPC=260   
  xorl %eax, %eax           #  35    0x407d62  2      OPC=3758  
.L_407d52:                  #        0x407d64  0      OPC=0     
  popq %rbx                 #  36    0x407d64  1      OPC=1694  
  popq %rbp                 #  37    0x407d65  1      OPC=1694  
  popq %r12                 #  38    0x407d66  2      OPC=1694  
  retq                      #  39    0x407d68  1      OPC=1978  
.L_407d57:                  #        0x407d69  0      OPC=0     
  movl $0xffffffff, %eax    #  40    0x407d69  6      OPC=1155  
  jmpq .L_407d52            #  41    0x407d6f  5      OPC=930   
  nop                       #  42    0x407d74  1      OPC=1343  
  nop                       #  43    0x407d75  1      OPC=1343  
                                                                
.size arrayfile_fclose, .-arrayfile_fclose

