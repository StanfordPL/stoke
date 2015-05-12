  .text
  .globl d_find_pack
  .type d_find_pack, @function

#! file-offset 0x50600
#! rip-offset  0x50600
#! capacity    480 bytes

# Text                                #  Line  RIP      Bytes  
.d_find_pack:                         #        0x50600  0      
  pushq %r12                          #  1     0x50600  3      
  movl %edi, %r12d                    #  2     0x50603  3      
  pushq %rbx                          #  3     0x50606  2      
  movl %esi, %ebx                     #  4     0x50608  2      
  subl $0x8, %esp                     #  5     0x5060a  3      
  addq %r15, %rsp                     #  6     0x5060d  3      
  testq %rbx, %rbx                    #  7     0x50610  3      
  je .L_506a0                         #  8     0x50613  6      
  nop                                 #  9     0x50619  1      
.L_50620:                             #        0x5061a  0      
  movl %ebx, %ebx                     #  10    0x5061a  2      
  cmpl $0x3a, (%r15,%rbx,1)           #  11    0x5061c  5      
  jbe .L_506e0                        #  12    0x50621  6      
  nop                                 #  13    0x50627  1      
  nop                                 #  14    0x50628  1      
  movl %ebx, %ebx                     #  15    0x50629  2      
  movl 0x4(%r15,%rbx,1), %esi         #  16    0x5062b  5      
  movl %r12d, %edi                    #  17    0x50630  3      
  xchgw %ax, %ax                      #  18    0x50633  3      
  nop                                 #  19    0x50636  1      
  callq .d_find_pack                  #  20    0x50637  5      
  movl %eax, %eax                     #  21    0x5063c  2      
  testq %rax, %rax                    #  22    0x5063e  3      
  jne .L_506c0                        #  23    0x50641  6      
  nop                                 #  24    0x50647  1      
  nop                                 #  25    0x50648  1      
  movl %ebx, %ebx                     #  26    0x50649  2      
  movl 0x8(%r15,%rbx,1), %ebx         #  27    0x5064b  5      
  testq %rbx, %rbx                    #  28    0x50650  3      
  jne .L_50620                        #  29    0x50653  6      
  nop                                 #  30    0x50659  1      
  nop                                 #  31    0x5065a  1      
.L_506a0:                             #        0x5065b  0      
  xorl %eax, %eax                     #  32    0x5065b  2      
  nop                                 #  33    0x5065d  1      
  nop                                 #  34    0x5065e  1      
.L_506c0:                             #        0x5065f  0      
  addl $0x8, %esp                     #  35    0x5065f  3      
  addq %r15, %rsp                     #  36    0x50662  3      
  popq %rbx                           #  37    0x50665  2      
  popq %r12                           #  38    0x50667  3      
  popq %r11                           #  39    0x5066a  3      
  andl $0xffffffe0, %r11d             #  40    0x5066d  7      
  addq %r15, %r11                     #  41    0x50674  3      
  jmpq %r11                           #  42    0x50677  3      
  nop                                 #  43    0x5067a  1      
.L_506e0:                             #        0x5067b  0      
  movl %ebx, %ebx                     #  44    0x5067b  2      
  movl (%r15,%rbx,1), %eax            #  45    0x5067d  4      
  movl %eax, %eax                     #  46    0x50681  2      
  movq 0x100216f8(%r15,%rax,8), %rax  #  47    0x50683  8      
  andl $0xffffffe0, %eax              #  48    0x5068b  5      
  addq %r15, %rax                     #  49    0x50690  3      
  jmpq %rax                           #  50    0x50693  2      
  nop                                 #  51    0x50695  1      
  movl %r12d, %r12d                   #  52    0x50696  3      
  movl 0x114(%r15,%r12,1), %eax       #  53    0x50699  8      
  testq %rax, %rax                    #  54    0x506a1  3      
  je .L_507c0                         #  55    0x506a4  6      
  movl %eax, %eax                     #  56    0x506aa  2      
  movl 0x4(%r15,%rax,1), %eax         #  57    0x506ac  5      
  nop                                 #  58    0x506b1  1      
  movl %ebx, %ebx                     #  59    0x506b2  2      
  movl 0x4(%r15,%rbx,1), %edx         #  60    0x506b4  5      
  movl %eax, %eax                     #  61    0x506b9  2      
  movl 0x8(%r15,%rax,1), %eax         #  62    0x506bb  5      
  testq %rax, %rax                    #  63    0x506c0  3      
  jne .L_50760                        #  64    0x506c3  6      
  jmpq .L_506a0                       #  65    0x506c9  5      
  nop                                 #  66    0x506ce  1      
.L_50740:                             #        0x506cf  0      
  testl %edx, %edx                    #  67    0x506cf  2      
  jle .L_50780                        #  68    0x506d1  6      
  movl %eax, %eax                     #  69    0x506d7  2      
  movl 0x8(%r15,%rax,1), %eax         #  70    0x506d9  5      
  subl $0x1, %edx                     #  71    0x506de  3      
  testq %rax, %rax                    #  72    0x506e1  3      
  je .L_506a0                         #  73    0x506e4  6      
  nop                                 #  74    0x506ea  1      
.L_50760:                             #        0x506eb  0      
  movl %eax, %eax                     #  75    0x506eb  2      
  cmpl $0x2a, (%r15,%rax,1)           #  76    0x506ed  5      
  je .L_50740                         #  77    0x506f2  6      
  jmpq .L_506a0                       #  78    0x506f8  5      
  nop                                 #  79    0x506fd  1      
  nop                                 #  80    0x506fe  1      
.L_50780:                             #        0x506ff  0      
  testq %rax, %rax                    #  81    0x506ff  3      
  je .L_506a0                         #  82    0x50702  6      
  testl %edx, %edx                    #  83    0x50708  2      
  jne .L_506a0                        #  84    0x5070a  6      
  movl %eax, %eax                     #  85    0x50710  2      
  movl 0x4(%r15,%rax,1), %eax         #  86    0x50712  5      
  testq %rax, %rax                    #  87    0x50717  3      
  nop                                 #  88    0x5071a  1      
  je .L_506c0                         #  89    0x5071b  6      
  movl %eax, %eax                     #  90    0x50721  2      
  cmpl $0x2a, (%r15,%rax,1)           #  91    0x50723  5      
  jne .L_506a0                        #  92    0x50728  6      
  jmpq .L_506c0                       #  93    0x5072e  5      
  nop                                 #  94    0x50733  1      
.L_507c0:                             #        0x50734  0      
  movl %r12d, %r12d                   #  95    0x50734  3      
  movl $0x1, 0x11c(%r15,%r12,1)       #  96    0x50737  12     
  jmpq .L_506c0                       #  97    0x50743  5      
  nop                                 #  98    0x50748  1      
                                                               
.size d_find_pack, .-d_find_pack

