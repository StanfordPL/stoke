  .text
  .globl d_find_pack
  .type d_find_pack, @function

#! file-offset 0x50680
#! rip-offset  0x50680
#! capacity    480 bytes

# Text                                #  Line  RIP      Bytes  
.d_find_pack:                         #        0x50680  0      
  pushq %r12                          #  1     0x50680  3      
  movl %edi, %r12d                    #  2     0x50683  3      
  pushq %rbx                          #  3     0x50686  2      
  movl %esi, %ebx                     #  4     0x50688  2      
  subl $0x8, %esp                     #  5     0x5068a  3      
  addq %r15, %rsp                     #  6     0x5068d  3      
  testq %rbx, %rbx                    #  7     0x50690  3      
  je .L_50720                         #  8     0x50693  6      
  nop                                 #  9     0x50699  1      
.L_506a0:                             #        0x5069a  0      
  movl %ebx, %ebx                     #  10    0x5069a  2      
  cmpl $0x3a, (%r15,%rbx,1)           #  11    0x5069c  5      
  jbe .L_50760                        #  12    0x506a1  6      
  nop                                 #  13    0x506a7  1      
  nop                                 #  14    0x506a8  1      
  movl %ebx, %ebx                     #  15    0x506a9  2      
  movl 0x4(%r15,%rbx,1), %esi         #  16    0x506ab  5      
  movl %r12d, %edi                    #  17    0x506b0  3      
  xchgw %ax, %ax                      #  18    0x506b3  3      
  nop                                 #  19    0x506b6  1      
  callq .d_find_pack                  #  20    0x506b7  5      
  movl %eax, %eax                     #  21    0x506bc  2      
  testq %rax, %rax                    #  22    0x506be  3      
  jne .L_50740                        #  23    0x506c1  6      
  nop                                 #  24    0x506c7  1      
  nop                                 #  25    0x506c8  1      
  movl %ebx, %ebx                     #  26    0x506c9  2      
  movl 0x8(%r15,%rbx,1), %ebx         #  27    0x506cb  5      
  testq %rbx, %rbx                    #  28    0x506d0  3      
  jne .L_506a0                        #  29    0x506d3  6      
  nop                                 #  30    0x506d9  1      
  nop                                 #  31    0x506da  1      
.L_50720:                             #        0x506db  0      
  xorl %eax, %eax                     #  32    0x506db  2      
  nop                                 #  33    0x506dd  1      
  nop                                 #  34    0x506de  1      
.L_50740:                             #        0x506df  0      
  addl $0x8, %esp                     #  35    0x506df  3      
  addq %r15, %rsp                     #  36    0x506e2  3      
  popq %rbx                           #  37    0x506e5  2      
  popq %r12                           #  38    0x506e7  3      
  popq %r11                           #  39    0x506ea  3      
  andl $0xffffffe0, %r11d             #  40    0x506ed  7      
  addq %r15, %r11                     #  41    0x506f4  3      
  jmpq %r11                           #  42    0x506f7  3      
  nop                                 #  43    0x506fa  1      
.L_50760:                             #        0x506fb  0      
  movl %ebx, %ebx                     #  44    0x506fb  2      
  movl (%r15,%rbx,1), %eax            #  45    0x506fd  4      
  movl %eax, %eax                     #  46    0x50701  2      
  movq 0x100216f8(%r15,%rax,8), %rax  #  47    0x50703  8      
  andl $0xffffffe0, %eax              #  48    0x5070b  5      
  addq %r15, %rax                     #  49    0x50710  3      
  jmpq %rax                           #  50    0x50713  2      
  nop                                 #  51    0x50715  1      
  movl %r12d, %r12d                   #  52    0x50716  3      
  movl 0x114(%r15,%r12,1), %eax       #  53    0x50719  8      
  testq %rax, %rax                    #  54    0x50721  3      
  je .L_50840                         #  55    0x50724  6      
  movl %eax, %eax                     #  56    0x5072a  2      
  movl 0x4(%r15,%rax,1), %eax         #  57    0x5072c  5      
  nop                                 #  58    0x50731  1      
  movl %ebx, %ebx                     #  59    0x50732  2      
  movl 0x4(%r15,%rbx,1), %edx         #  60    0x50734  5      
  movl %eax, %eax                     #  61    0x50739  2      
  movl 0x8(%r15,%rax,1), %eax         #  62    0x5073b  5      
  testq %rax, %rax                    #  63    0x50740  3      
  jne .L_507e0                        #  64    0x50743  6      
  jmpq .L_50720                       #  65    0x50749  5      
  nop                                 #  66    0x5074e  1      
.L_507c0:                             #        0x5074f  0      
  testl %edx, %edx                    #  67    0x5074f  2      
  jle .L_50800                        #  68    0x50751  6      
  movl %eax, %eax                     #  69    0x50757  2      
  movl 0x8(%r15,%rax,1), %eax         #  70    0x50759  5      
  subl $0x1, %edx                     #  71    0x5075e  3      
  testq %rax, %rax                    #  72    0x50761  3      
  je .L_50720                         #  73    0x50764  6      
  nop                                 #  74    0x5076a  1      
.L_507e0:                             #        0x5076b  0      
  movl %eax, %eax                     #  75    0x5076b  2      
  cmpl $0x2a, (%r15,%rax,1)           #  76    0x5076d  5      
  je .L_507c0                         #  77    0x50772  6      
  jmpq .L_50720                       #  78    0x50778  5      
  nop                                 #  79    0x5077d  1      
  nop                                 #  80    0x5077e  1      
.L_50800:                             #        0x5077f  0      
  testq %rax, %rax                    #  81    0x5077f  3      
  je .L_50720                         #  82    0x50782  6      
  testl %edx, %edx                    #  83    0x50788  2      
  jne .L_50720                        #  84    0x5078a  6      
  movl %eax, %eax                     #  85    0x50790  2      
  movl 0x4(%r15,%rax,1), %eax         #  86    0x50792  5      
  testq %rax, %rax                    #  87    0x50797  3      
  nop                                 #  88    0x5079a  1      
  je .L_50740                         #  89    0x5079b  6      
  movl %eax, %eax                     #  90    0x507a1  2      
  cmpl $0x2a, (%r15,%rax,1)           #  91    0x507a3  5      
  jne .L_50720                        #  92    0x507a8  6      
  jmpq .L_50740                       #  93    0x507ae  5      
  nop                                 #  94    0x507b3  1      
.L_50840:                             #        0x507b4  0      
  movl %r12d, %r12d                   #  95    0x507b4  3      
  movl $0x1, 0x11c(%r15,%r12,1)       #  96    0x507b7  12     
  jmpq .L_50740                       #  97    0x507c3  5      
  nop                                 #  98    0x507c8  1      
                                                               
.size d_find_pack, .-d_find_pack

