  .text
  .globl __multadd
  .type __multadd, @function

#! file-offset 0x7f840
#! rip-offset  0x7f840
#! capacity    416 bytes

# Text                           #  Line  RIP      Bytes  
.__multadd:                      #        0x7f840  0      
  pushq %r14                     #  1     0x7f840  3      
  movl %edi, %r14d               #  2     0x7f843  3      
  pushq %r13                     #  3     0x7f846  3      
  movl %esi, %r13d               #  4     0x7f849  3      
  xorl %esi, %esi                #  5     0x7f84c  2      
  leal 0x14(%r13), %eax          #  6     0x7f84e  4      
  pushq %r12                     #  7     0x7f852  3      
  pushq %rbx                     #  8     0x7f855  2      
  subl $0x18, %esp               #  9     0x7f857  3      
  addq %r15, %rsp                #  10    0x7f85a  3      
  nop                            #  11    0x7f85d  1      
  movl %r13d, %r13d              #  12    0x7f85e  3      
  movl 0x10(%r15,%r13,1), %r12d  #  13    0x7f861  5      
  nop                            #  14    0x7f866  1      
  nop                            #  15    0x7f867  1      
.L_7f880:                        #        0x7f868  0      
  movl %eax, %eax                #  16    0x7f868  2      
  movl (%r15,%rax,1), %ebx       #  17    0x7f86a  4      
  addl $0x1, %esi                #  18    0x7f86e  3      
  movzwl %bx, %edi               #  19    0x7f871  3      
  shrl $0x10, %ebx               #  20    0x7f874  3      
  imull %edx, %edi               #  21    0x7f877  3      
  imull %edx, %ebx               #  22    0x7f87a  3      
  leal (%rcx,%rdi,1), %edi       #  23    0x7f87d  3      
  movl %edi, %r8d                #  24    0x7f880  3      
  nop                            #  25    0x7f883  1      
  andl $0xffff, %edi             #  26    0x7f884  6      
  shrl $0x10, %r8d               #  27    0x7f88a  4      
  addl %ebx, %r8d                #  28    0x7f88e  3      
  movl %r8d, %ebx                #  29    0x7f891  3      
  shll $0x10, %r8d               #  30    0x7f894  4      
  leal (%r8,%rdi,1), %edi        #  31    0x7f898  4      
  shrl $0x10, %ebx               #  32    0x7f89c  3      
  movl %ebx, %ecx                #  33    0x7f89f  2      
  nop                            #  34    0x7f8a1  1      
  movl %eax, %eax                #  35    0x7f8a2  2      
  movl %edi, (%r15,%rax,1)       #  36    0x7f8a4  4      
  addl $0x4, %eax                #  37    0x7f8a8  3      
  cmpl %esi, %r12d               #  38    0x7f8ab  3      
  jg .L_7f880                    #  39    0x7f8ae  6      
  testl %ebx, %ebx               #  40    0x7f8b4  2      
  je .L_7f920                    #  41    0x7f8b6  6      
  movl %r13d, %r13d              #  42    0x7f8bc  3      
  cmpl 0x8(%r15,%r13,1), %r12d   #  43    0x7f8bf  5      
  jge .L_7f940                   #  44    0x7f8c4  6      
  nop                            #  45    0x7f8ca  1      
.L_7f8e0:                        #        0x7f8cb  0      
  leal 0x10(,%r12,4), %eax       #  46    0x7f8cb  8      
  addl $0x1, %r12d               #  47    0x7f8d3  4      
  movl %r13d, %r13d              #  48    0x7f8d7  3      
  movl %r12d, 0x10(%r15,%r13,1)  #  49    0x7f8da  5      
  cltq                           #  50    0x7f8df  2      
  leaq (%r13,%rax,1), %rax       #  51    0x7f8e1  5      
  nop                            #  52    0x7f8e6  1      
  movl %eax, %eax                #  53    0x7f8e7  2      
  movl %ebx, 0x4(%r15,%rax,1)    #  54    0x7f8e9  5      
  nop                            #  55    0x7f8ee  1      
  nop                            #  56    0x7f8ef  1      
.L_7f920:                        #        0x7f8f0  0      
  addl $0x18, %esp               #  57    0x7f8f0  3      
  addq %r15, %rsp                #  58    0x7f8f3  3      
  movl %r13d, %eax               #  59    0x7f8f6  3      
  popq %rbx                      #  60    0x7f8f9  2      
  popq %r12                      #  61    0x7f8fb  3      
  popq %r13                      #  62    0x7f8fe  3      
  popq %r14                      #  63    0x7f901  3      
  popq %r11                      #  64    0x7f904  3      
  andl $0xffffffe0, %r11d        #  65    0x7f907  7      
  addq %r15, %r11                #  66    0x7f90e  3      
  jmpq %r11                      #  67    0x7f911  3      
  nop                            #  68    0x7f914  1      
.L_7f940:                        #        0x7f915  0      
  movl %r13d, %r13d              #  69    0x7f915  3      
  movl 0x4(%r15,%r13,1), %esi    #  70    0x7f918  5      
  movl %r14d, %edi               #  71    0x7f91d  3      
  addl $0x1, %esi                #  72    0x7f920  3      
  nop                            #  73    0x7f923  1      
  callq ._Balloc                 #  74    0x7f924  5      
  movl %r13d, %r13d              #  75    0x7f929  3      
  movl 0x10(%r15,%r13,1), %edx   #  76    0x7f92c  5      
  movl %eax, %ecx                #  77    0x7f931  2      
  leal 0xc(%r13), %esi           #  78    0x7f933  4      
  leal 0xc(%rcx), %edi           #  79    0x7f937  3      
  movq %rcx, 0x8(%rsp)           #  80    0x7f93a  5      
  leal 0x8(,%rdx,4), %edx        #  81    0x7f93f  7      
  nop                            #  82    0x7f946  1      
  nop                            #  83    0x7f947  1      
  nop                            #  84    0x7f948  1      
  callq .memcpy                  #  85    0x7f949  5      
  movl %r13d, %r13d              #  86    0x7f94e  3      
  movl 0x4(%r15,%r13,1), %eax    #  87    0x7f951  5      
  movq 0x8(%rsp), %rcx           #  88    0x7f956  5      
  shll $0x2, %eax                #  89    0x7f95b  3      
  movl %r14d, %r14d              #  90    0x7f95e  3      
  addl 0x4c(%r15,%r14,1), %eax   #  91    0x7f961  5      
  movl %eax, %eax                #  92    0x7f966  2      
  movl (%r15,%rax,1), %edx       #  93    0x7f968  4      
  xchgw %ax, %ax                 #  94    0x7f96c  3      
  movl %r13d, %r13d              #  95    0x7f96f  3      
  movl %edx, (%r15,%r13,1)       #  96    0x7f972  4      
  movl %eax, %eax                #  97    0x7f976  2      
  movl %r13d, (%r15,%rax,1)      #  98    0x7f978  4      
  movq %rcx, %r13                #  99    0x7f97c  3      
  jmpq .L_7f8e0                  #  100   0x7f97f  5      
  nop                            #  101   0x7f984  1      
                                                          
.size __multadd, .-__multadd

