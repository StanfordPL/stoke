  .text
  .globl d_print_mod
  .type d_print_mod, @function

#! file-offset 0x58360
#! rip-offset  0x58360
#! capacity    704 bytes

# Text                                #  Line  RIP      Bytes  
.d_print_mod:                         #        0x58360  0      
  movq %rbx, -0x10(%rsp)              #  1     0x58360  5      
  movl %esi, %ebx                     #  2     0x58365  2      
  movq %r12, -0x8(%rsp)               #  3     0x58367  5      
  subl $0x18, %esp                    #  4     0x5836c  3      
  addq %r15, %rsp                     #  5     0x5836f  3      
  movl %ebx, %ebx                     #  6     0x58372  2      
  movl (%r15,%rbx,1), %eax            #  7     0x58374  4      
  movl %edi, %r12d                    #  8     0x58378  3      
  subl $0x3, %eax                     #  9     0x5837b  3      
  xchgw %ax, %ax                      #  10    0x5837e  3      
  cmpl $0x24, %eax                    #  11    0x58381  3      
  jbe .L_583e0                        #  12    0x58384  6      
  nop                                 #  13    0x5838a  1      
  nop                                 #  14    0x5838b  1      
  movl %ebx, %esi                     #  15    0x5838c  2      
  nop                                 #  16    0x5838e  1      
  nop                                 #  17    0x5838f  1      
.L_583c0:                             #        0x58390  0      
  movl %r12d, %edi                    #  18    0x58390  3      
  movq 0x8(%rsp), %rbx                #  19    0x58393  5      
  movq 0x10(%rsp), %r12               #  20    0x58398  5      
  addl $0x18, %esp                    #  21    0x5839d  3      
  addq %r15, %rsp                     #  22    0x583a0  3      
  jmpq .d_print_comp                  #  23    0x583a3  5      
  nop                                 #  24    0x583a8  1      
.L_583e0:                             #        0x583a9  0      
  movl %eax, %eax                     #  25    0x583a9  2      
  movl %eax, %eax                     #  26    0x583ab  2      
  movq 0x10022050(%r15,%rax,8), %rax  #  27    0x583ad  8      
  andl $0xffffffe0, %eax              #  28    0x583b5  5      
  addq %r15, %rax                     #  29    0x583ba  3      
  jmpq %rax                           #  30    0x583bd  2      
  nop                                 #  31    0x583bf  1      
  movl %ebx, %ebx                     #  32    0x583c0  2      
  movl 0x4(%r15,%rbx,1), %esi         #  33    0x583c2  5      
  jmpq .L_583c0                       #  34    0x583c7  5      
  nop                                 #  35    0x583cc  1      
  nop                                 #  36    0x583cd  1      
  movl $0x100229eb, %esi              #  37    0x583ce  5      
  nop                                 #  38    0x583d3  1      
  nop                                 #  39    0x583d4  1      
.L_58440:                             #        0x583d5  0      
  movl %r12d, %edi                    #  40    0x583d5  3      
  movq 0x8(%rsp), %rbx                #  41    0x583d8  5      
  movq 0x10(%rsp), %r12               #  42    0x583dd  5      
  addl $0x18, %esp                    #  43    0x583e2  3      
  addq %r15, %rsp                     #  44    0x583e5  3      
  jmpq .d_append_string               #  45    0x583e8  5      
  nop                                 #  46    0x583ed  1      
  movl $0x100229f5, %esi              #  47    0x583ee  5      
  jmpq .L_58440                       #  48    0x583f3  5      
  nop                                 #  49    0x583f8  1      
  nop                                 #  50    0x583f9  1      
  movl $0x100229ff, %esi              #  51    0x583fa  5      
  jmpq .L_58440                       #  52    0x583ff  5      
  nop                                 #  53    0x58404  1      
  nop                                 #  54    0x58405  1      
  movl $0x20, %esi                    #  55    0x58406  5      
  movl %r12d, %edi                    #  56    0x5840b  3      
  nop                                 #  57    0x5840e  1      
  nop                                 #  58    0x5840f  1      
  callq .d_append_char                #  59    0x58410  5      
  movl %ebx, %ebx                     #  60    0x58415  2      
  movl 0x8(%r15,%rbx,1), %esi         #  61    0x58417  5      
  jmpq .L_583c0                       #  62    0x5841c  5      
  nop                                 #  63    0x58421  1      
  nop                                 #  64    0x58422  1      
  movl %r12d, %r12d                   #  65    0x58423  3      
  testb $0x4, (%r15,%r12,1)           #  66    0x58426  5      
  movl $0x2a, %esi                    #  67    0x5842b  5      
  je .L_58540                         #  68    0x58430  6      
  movq 0x8(%rsp), %rbx                #  69    0x58436  5      
  movq 0x10(%rsp), %r12               #  70    0x5843b  5      
  addl $0x18, %esp                    #  71    0x58440  3      
  addq %r15, %rsp                     #  72    0x58443  3      
  nop                                 #  73    0x58446  1      
  popq %r11                           #  74    0x58447  3      
  andl $0xffffffe0, %r11d             #  75    0x5844a  7      
  addq %r15, %r11                     #  76    0x58451  3      
  jmpq %r11                           #  77    0x58454  3      
  nop                                 #  78    0x58457  1      
  nop                                 #  79    0x58458  1      
  movl $0x26, %esi                    #  80    0x58459  5      
  nop                                 #  81    0x5845e  1      
  nop                                 #  82    0x5845f  1      
.L_58540:                             #        0x58460  0      
  movl %r12d, %edi                    #  83    0x58460  3      
  movq 0x8(%rsp), %rbx                #  84    0x58463  5      
  movq 0x10(%rsp), %r12               #  85    0x58468  5      
  addl $0x18, %esp                    #  86    0x5846d  3      
  addq %r15, %rsp                     #  87    0x58470  3      
  jmpq .d_append_char                 #  88    0x58473  5      
  nop                                 #  89    0x58478  1      
  movl $0x10022a06, %esi              #  90    0x58479  5      
  jmpq .L_58440                       #  91    0x5847e  5      
  nop                                 #  92    0x58483  1      
  nop                                 #  93    0x58484  1      
  movl $0x10022a09, %esi              #  94    0x58485  5      
  jmpq .L_58440                       #  95    0x5848a  5      
  nop                                 #  96    0x5848f  1      
  nop                                 #  97    0x58490  1      
  movl $0x10022a12, %esi              #  98    0x58491  5      
  jmpq .L_58440                       #  99    0x58496  5      
  nop                                 #  100   0x5849b  1      
  nop                                 #  101   0x5849c  1      
  movl %r12d, %r12d                   #  102   0x5849d  3      
  cmpb $0x28, 0x108(%r15,%r12,1)      #  103   0x584a0  9      
  je .L_585e0                         #  104   0x584a9  6      
  movl $0x20, %esi                    #  105   0x584af  5      
  movl %r12d, %edi                    #  106   0x584b4  3      
  nop                                 #  107   0x584b7  1      
  callq .d_append_char                #  108   0x584b8  5      
.L_585e0:                             #        0x584bd  0      
  movl %ebx, %ebx                     #  109   0x584bd  2      
  movl 0x4(%r15,%rbx,1), %esi         #  110   0x584bf  5      
  movl %r12d, %edi                    #  111   0x584c4  3      
  xchgw %ax, %ax                      #  112   0x584c7  3      
  nop                                 #  113   0x584ca  1      
  callq .d_print_comp                 #  114   0x584cb  5      
  movl $0x10022948, %esi              #  115   0x584d0  5      
  jmpq .L_58440                       #  116   0x584d5  5      
  nop                                 #  117   0x584da  1      
  nop                                 #  118   0x584db  1      
                                                               
.size d_print_mod, .-d_print_mod

