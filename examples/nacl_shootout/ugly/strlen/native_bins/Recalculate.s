  .text
  .globl Recalculate
  .type Recalculate, @function

#! file-offset 0x606e
#! rip-offset  0x40606e
#! capacity    145 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.Recalculate:                     #        0x40606e  0      OPC=0     
  movsbq 0x10(%rdi), %rax         #  1     0x40606e  5      OPC=1285  
  movsbl 0x13(%rdi,%rax,1), %esi  #  2     0x406073  5      OPC=1280  
  movslq %esi, %rax               #  3     0x406078  3      OPC=1289  
  movq 0x20(%rdi,%rax,8), %r8     #  4     0x40607b  5      OPC=1161  
  movl 0xc(%rdi), %ecx            #  5     0x406080  3      OPC=1156  
  movsbl 0x11(%rdi), %eax         #  6     0x406083  4      OPC=1280  
  subl $0x1, %eax                 #  7     0x406087  3      OPC=2384  
  js .L_4060ae                    #  8     0x40608a  6      OPC=1043  
  nop                             #  9     0x406090  1      OPC=1343  
  nop                             #  10    0x406091  1      OPC=1343  
.L_40608c:                        #        0x406092  0      OPC=0     
  movslq %eax, %rdx               #  11    0x406092  3      OPC=1289  
  movsbq 0x13(%rdi,%rdx,1), %rdx  #  12    0x406095  6      OPC=1285  
  cmpl %edx, %esi                 #  13    0x40609b  2      OPC=472   
  je .L_4060a6                    #  14    0x40609d  6      OPC=893   
  nop                             #  15    0x4060a3  1      OPC=1343  
  nop                             #  16    0x4060a4  1      OPC=1343  
  movq 0x20(%rdi,%rdx,8), %rdx    #  17    0x4060a5  5      OPC=1161  
  movl 0x20(%rdx), %edx           #  18    0x4060aa  3      OPC=1156  
  cmpl %edx, %ecx                 #  19    0x4060ad  2      OPC=472   
  cmovbl %edx, %ecx               #  20    0x4060af  3      OPC=284   
.L_4060a6:                        #        0x4060b2  0      OPC=0     
  subl $0x1, %eax                 #  21    0x4060b2  3      OPC=2384  
  cmpl $0xffffffff, %eax          #  22    0x4060b5  6      OPC=469   
  nop                             #  23    0x4060bb  1      OPC=1343  
  nop                             #  24    0x4060bc  1      OPC=1343  
  nop                             #  25    0x4060bd  1      OPC=1343  
  jne .L_40608c                   #  26    0x4060be  6      OPC=963   
  nop                             #  27    0x4060c4  1      OPC=1343  
  nop                             #  28    0x4060c5  1      OPC=1343  
.L_4060ae:                        #        0x4060c6  0      OPC=0     
  movl %ecx, 0x20(%r8)            #  29    0x4060c6  4      OPC=1136  
  movl 0x8(%rdi), %ecx            #  30    0x4060ca  3      OPC=1156  
  testl %ecx, %ecx                #  31    0x4060cd  2      OPC=2436  
  jne .L_4060f6                   #  32    0x4060cf  6      OPC=963   
  nop                             #  33    0x4060d5  1      OPC=1343  
  nop                             #  34    0x4060d6  1      OPC=1343  
  movsbq 0x10(%rdi), %rax         #  35    0x4060d7  5      OPC=1285  
  movsbl 0x13(%rdi,%rax,1), %ecx  #  36    0x4060dc  5      OPC=1280  
  movsbl 0x12(%rdi), %eax         #  37    0x4060e1  4      OPC=1280  
  subl $0x1, %eax                 #  38    0x4060e5  3      OPC=2384  
  jns .L_4060e3                   #  39    0x4060e8  6      OPC=1005  
  nop                             #  40    0x4060ee  1      OPC=1343  
  nop                             #  41    0x4060ef  1      OPC=1343  
.L_4060cc:                        #        0x4060f0  0      OPC=0     
  movl $0x1, 0x24(%r8)            #  42    0x4060f0  8      OPC=1135  
  movq (%rdi), %rdx               #  43    0x4060f8  3      OPC=1161  
  xorl %eax, %eax                 #  44    0x4060fb  2      OPC=3758  
  jmpq %rdx                       #  45    0x4060fd  2      OPC=928   
.L_4060db:                        #        0x4060ff  0      OPC=0     
  subl $0x1, %eax                 #  46    0x4060ff  3      OPC=2384  
  cmpl $0xffffffff, %eax          #  47    0x406102  6      OPC=469   
  nop                             #  48    0x406108  1      OPC=1343  
  nop                             #  49    0x406109  1      OPC=1343  
  nop                             #  50    0x40610a  1      OPC=1343  
  je .L_4060cc                    #  51    0x40610b  6      OPC=893   
  nop                             #  52    0x406111  1      OPC=1343  
  nop                             #  53    0x406112  1      OPC=1343  
.L_4060e3:                        #        0x406113  0      OPC=0     
  cmpl %eax, %ecx                 #  54    0x406113  2      OPC=472   
  je .L_4060db                    #  55    0x406115  6      OPC=893   
  nop                             #  56    0x40611b  1      OPC=1343  
  nop                             #  57    0x40611c  1      OPC=1343  
  movslq %eax, %rdx               #  58    0x40611d  3      OPC=1289  
  movq 0x20(%rdi,%rdx,8), %rdx    #  59    0x406120  5      OPC=1161  
  movl 0x24(%rdx), %edx           #  60    0x406125  3      OPC=1156  
  testl %edx, %edx                #  61    0x406128  2      OPC=2436  
  jne .L_4060db                   #  62    0x40612a  6      OPC=963   
  nop                             #  63    0x406130  1      OPC=1343  
  nop                             #  64    0x406131  1      OPC=1343  
.L_4060f6:                        #        0x406132  0      OPC=0     
  movl $0x0, 0x24(%r8)            #  65    0x406132  8      OPC=1135  
  retq                            #  66    0x40613a  1      OPC=1978  
                                                                      
.size Recalculate, .-Recalculate

