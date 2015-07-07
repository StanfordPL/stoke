  .text
  .globl handlerfn
  .type handlerfn, @function

#! file-offset 0x5406
#! rip-offset  0x405406
#! capacity    143 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.handlerfn:                       #        0x405406  0      OPC=0     
  testq %rdi, %rdi                #  1     0x405406  3      OPC=2438  
  je .L_405437                    #  2     0x405409  6      OPC=893   
  nop                             #  3     0x40540f  1      OPC=1343  
  nop                             #  4     0x405410  1      OPC=1343  
  movl $0x625a10, %edx            #  5     0x405411  5      OPC=1154  
  cmpl $0x3e9, 0xc(%rdi)          #  6     0x405416  7      OPC=455   
  movl $0x625a20, %eax            #  7     0x40541d  5      OPC=1154  
  cmovneq %rax, %rdx              #  8     0x405422  4      OPC=364   
  movq $0x0, (%rdi)               #  9     0x405426  7      OPC=1137  
  jmpq .L_40542c                  #  10    0x40542d  5      OPC=930   
  nop                             #  11    0x405432  1      OPC=1343  
  nop                             #  12    0x405433  1      OPC=1343  
.L_405429:                        #        0x405434  0      OPC=0     
  movq %rax, %rdx                 #  13    0x405434  3      OPC=1162  
.L_40542c:                        #        0x405437  0      OPC=0     
  movq (%rdx), %rax               #  14    0x405437  3      OPC=1161  
  testq %rax, %rax                #  15    0x40543a  3      OPC=2438  
  jne .L_405429                   #  16    0x40543d  6      OPC=963   
  nop                             #  17    0x405443  1      OPC=1343  
  nop                             #  18    0x405444  1      OPC=1343  
  movq %rdi, (%rdx)               #  19    0x405445  3      OPC=1138  
.L_405437:                        #        0x405448  0      OPC=0     
  movq 0x2205d2(%rip), %rax       #  20    0x405448  7      OPC=1161  
  testq %rax, %rax                #  21    0x40544f  3      OPC=2438  
  je .L_405457                    #  22    0x405452  6      OPC=893   
  nop                             #  23    0x405458  1      OPC=1343  
  nop                             #  24    0x405459  1      OPC=1343  
  movl 0x10(%rax), %edx           #  25    0x40545a  3      OPC=1156  
  cmpl $0x3, %edx                 #  26    0x40545d  3      OPC=470   
  jg .L_405463                    #  27    0x405460  6      OPC=901   
  nop                             #  28    0x405466  1      OPC=1343  
  nop                             #  29    0x405467  1      OPC=1343  
  movq 0x2205ce(%rip), %rdi       #  30    0x405468  7      OPC=1161  
  testq %rdi, %rdi                #  31    0x40546f  3      OPC=2438  
  jne .L_405475                   #  32    0x405472  6      OPC=963   
  nop                             #  33    0x405478  1      OPC=1343  
  nop                             #  34    0x405479  1      OPC=1343  
.L_405457:                        #        0x40547a  0      OPC=0     
  movq 0x2205aa(%rip), %rax       #  35    0x40547a  7      OPC=1161  
  orl $0x2, 0x18(%rax)            #  36    0x405481  4      OPC=1364  
  retq                            #  37    0x405485  1      OPC=1978  
.L_405463:                        #        0x405486  0      OPC=0     
  movq (%rax), %rdx               #  38    0x405486  3      OPC=1161  
  movq %rdx, 0x2205a3(%rip)       #  39    0x405489  7      OPC=1138  
  movq %rax, %rdi                 #  40    0x405490  3      OPC=1162  
  jmpq .qpkt                      #  41    0x405493  5      OPC=930   
.L_405475:                        #        0x405498  0      OPC=0     
  movq (%rdi), %rcx               #  42    0x405498  3      OPC=1161  
  movq %rcx, 0x2205a1(%rip)       #  43    0x40549b  7      OPC=1138  
  movslq %edx, %rcx               #  44    0x4054a2  3      OPC=1289  
  movsbl 0x14(%rax,%rcx,1), %ecx  #  45    0x4054a5  5      OPC=1280  
  movl %ecx, 0x10(%rdi)           #  46    0x4054aa  3      OPC=1136  
  addl $0x1, %edx                 #  47    0x4054ad  3      OPC=65    
  movl %edx, 0x10(%rax)           #  48    0x4054b0  3      OPC=1136  
  jmpq .qpkt                      #  49    0x4054b3  5      OPC=930   
                                                                      
.size handlerfn, .-handlerfn

