  .text
  .globl d_find_pack
  .type d_find_pack, @function

#! file-offset 0x505e0
#! rip-offset  0x505e0
#! capacity    480 bytes

# Text                                #  Line  RIP      Bytes  
.d_find_pack:                         #        0x505e0  0      
  pushq %r12                          #  1     0x505e0  3      
  movl %edi, %r12d                    #  2     0x505e3  3      
  pushq %rbx                          #  3     0x505e6  2      
  movl %esi, %ebx                     #  4     0x505e8  2      
  subl $0x8, %esp                     #  5     0x505ea  3      
  addq %r15, %rsp                     #  6     0x505ed  3      
  testq %rbx, %rbx                    #  7     0x505f0  3      
  je .L_50680                         #  8     0x505f3  6      
  nop                                 #  9     0x505f9  1      
.L_50600:                             #        0x505fa  0      
  movl %ebx, %ebx                     #  10    0x505fa  2      
  cmpl $0x3a, (%r15,%rbx,1)           #  11    0x505fc  5      
  jbe .L_506c0                        #  12    0x50601  6      
  nop                                 #  13    0x50607  1      
  nop                                 #  14    0x50608  1      
  movl %ebx, %ebx                     #  15    0x50609  2      
  movl 0x4(%r15,%rbx,1), %esi         #  16    0x5060b  5      
  movl %r12d, %edi                    #  17    0x50610  3      
  xchgw %ax, %ax                      #  18    0x50613  3      
  nop                                 #  19    0x50616  1      
  callq .d_find_pack                  #  20    0x50617  5      
  movl %eax, %eax                     #  21    0x5061c  2      
  testq %rax, %rax                    #  22    0x5061e  3      
  jne .L_506a0                        #  23    0x50621  6      
  nop                                 #  24    0x50627  1      
  nop                                 #  25    0x50628  1      
  movl %ebx, %ebx                     #  26    0x50629  2      
  movl 0x8(%r15,%rbx,1), %ebx         #  27    0x5062b  5      
  testq %rbx, %rbx                    #  28    0x50630  3      
  jne .L_50600                        #  29    0x50633  6      
  nop                                 #  30    0x50639  1      
  nop                                 #  31    0x5063a  1      
.L_50680:                             #        0x5063b  0      
  xorl %eax, %eax                     #  32    0x5063b  2      
  nop                                 #  33    0x5063d  1      
  nop                                 #  34    0x5063e  1      
.L_506a0:                             #        0x5063f  0      
  addl $0x8, %esp                     #  35    0x5063f  3      
  addq %r15, %rsp                     #  36    0x50642  3      
  popq %rbx                           #  37    0x50645  2      
  popq %r12                           #  38    0x50647  3      
  popq %r11                           #  39    0x5064a  3      
  andl $0xffffffe0, %r11d             #  40    0x5064d  7      
  addq %r15, %r11                     #  41    0x50654  3      
  jmpq %r11                           #  42    0x50657  3      
  nop                                 #  43    0x5065a  1      
.L_506c0:                             #        0x5065b  0      
  movl %ebx, %ebx                     #  44    0x5065b  2      
  movl (%r15,%rbx,1), %eax            #  45    0x5065d  4      
  movl %eax, %eax                     #  46    0x50661  2      
  movq 0x100216f8(%r15,%rax,8), %rax  #  47    0x50663  8      
  andl $0xffffffe0, %eax              #  48    0x5066b  5      
  addq %r15, %rax                     #  49    0x50670  3      
  jmpq %rax                           #  50    0x50673  2      
  nop                                 #  51    0x50675  1      
  movl %r12d, %r12d                   #  52    0x50676  3      
  movl 0x114(%r15,%r12,1), %eax       #  53    0x50679  8      
  testq %rax, %rax                    #  54    0x50681  3      
  je .L_507a0                         #  55    0x50684  6      
  movl %eax, %eax                     #  56    0x5068a  2      
  movl 0x4(%r15,%rax,1), %eax         #  57    0x5068c  5      
  nop                                 #  58    0x50691  1      
  movl %ebx, %ebx                     #  59    0x50692  2      
  movl 0x4(%r15,%rbx,1), %edx         #  60    0x50694  5      
  movl %eax, %eax                     #  61    0x50699  2      
  movl 0x8(%r15,%rax,1), %eax         #  62    0x5069b  5      
  testq %rax, %rax                    #  63    0x506a0  3      
  jne .L_50740                        #  64    0x506a3  6      
  jmpq .L_50680                       #  65    0x506a9  5      
  nop                                 #  66    0x506ae  1      
.L_50720:                             #        0x506af  0      
  testl %edx, %edx                    #  67    0x506af  2      
  jle .L_50760                        #  68    0x506b1  6      
  movl %eax, %eax                     #  69    0x506b7  2      
  movl 0x8(%r15,%rax,1), %eax         #  70    0x506b9  5      
  subl $0x1, %edx                     #  71    0x506be  3      
  testq %rax, %rax                    #  72    0x506c1  3      
  je .L_50680                         #  73    0x506c4  6      
  nop                                 #  74    0x506ca  1      
.L_50740:                             #        0x506cb  0      
  movl %eax, %eax                     #  75    0x506cb  2      
  cmpl $0x2a, (%r15,%rax,1)           #  76    0x506cd  5      
  je .L_50720                         #  77    0x506d2  6      
  jmpq .L_50680                       #  78    0x506d8  5      
  nop                                 #  79    0x506dd  1      
  nop                                 #  80    0x506de  1      
.L_50760:                             #        0x506df  0      
  testq %rax, %rax                    #  81    0x506df  3      
  je .L_50680                         #  82    0x506e2  6      
  testl %edx, %edx                    #  83    0x506e8  2      
  jne .L_50680                        #  84    0x506ea  6      
  movl %eax, %eax                     #  85    0x506f0  2      
  movl 0x4(%r15,%rax,1), %eax         #  86    0x506f2  5      
  testq %rax, %rax                    #  87    0x506f7  3      
  nop                                 #  88    0x506fa  1      
  je .L_506a0                         #  89    0x506fb  6      
  movl %eax, %eax                     #  90    0x50701  2      
  cmpl $0x2a, (%r15,%rax,1)           #  91    0x50703  5      
  jne .L_50680                        #  92    0x50708  6      
  jmpq .L_506a0                       #  93    0x5070e  5      
  nop                                 #  94    0x50713  1      
.L_507a0:                             #        0x50714  0      
  movl %r12d, %r12d                   #  95    0x50714  3      
  movl $0x1, 0x11c(%r15,%r12,1)       #  96    0x50717  12     
  jmpq .L_506a0                       #  97    0x50723  5      
  nop                                 #  98    0x50728  1      
                                                               
.size d_find_pack, .-d_find_pack

