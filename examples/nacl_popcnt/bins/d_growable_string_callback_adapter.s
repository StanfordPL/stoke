  .text
  .globl d_growable_string_callback_adapter
  .type d_growable_string_callback_adapter, @function

#! file-offset 0x545e0
#! rip-offset  0x545e0
#! capacity    512 bytes

# Text                                #  Line  RIP      Bytes  
.d_growable_string_callback_adapter:  #        0x545e0  0      
  movq %rbx, -0x20(%rsp)              #  1     0x545e0  5      
  movl %edx, %ebx                     #  2     0x545e5  2      
  movq %r12, -0x18(%rsp)              #  3     0x545e7  5      
  movq %r13, -0x10(%rsp)              #  4     0x545ec  5      
  movq %r14, -0x8(%rsp)               #  5     0x545f1  5      
  subl $0x28, %esp                    #  6     0x545f6  3      
  addq %r15, %rsp                     #  7     0x545f9  3      
  nop                                 #  8     0x545fc  1      
  movl %ebx, %ebx                     #  9     0x545fd  2      
  movl 0x4(%r15,%rbx,1), %eax         #  10    0x545ff  5      
  movl %esi, %r12d                    #  11    0x54604  3      
  movl %ebx, %ebx                     #  12    0x54607  2      
  movl 0x8(%r15,%rbx,1), %r14d        #  13    0x54609  5      
  movl %edi, %r13d                    #  14    0x5460e  3      
  leal 0x1(%r12,%rax,1), %eax         #  15    0x54611  5      
  cmpl %r14d, %eax                    #  16    0x54616  3      
  nop                                 #  17    0x54619  1      
  ja .L_54700                         #  18    0x5461a  6      
  nop                                 #  19    0x54620  1      
  nop                                 #  20    0x54621  1      
.L_54640:                             #        0x54622  0      
  movl %ebx, %ebx                     #  21    0x54622  2      
  movl 0xc(%r15,%rbx,1), %ecx         #  22    0x54624  5      
  testl %ecx, %ecx                    #  23    0x54629  2      
  je .L_546a0                         #  24    0x5462b  6      
  nop                                 #  25    0x54631  1      
  nop                                 #  26    0x54632  1      
.L_54660:                             #        0x54633  0      
  movq 0x8(%rsp), %rbx                #  27    0x54633  5      
  movq 0x10(%rsp), %r12               #  28    0x54638  5      
  movq 0x18(%rsp), %r13               #  29    0x5463d  5      
  movq 0x20(%rsp), %r14               #  30    0x54642  5      
  addl $0x28, %esp                    #  31    0x54647  3      
  addq %r15, %rsp                     #  32    0x5464a  3      
  popq %r11                           #  33    0x5464d  3      
  nop                                 #  34    0x54650  1      
  andl $0xffffffe0, %r11d             #  35    0x54651  7      
  addq %r15, %r11                     #  36    0x54658  3      
  jmpq %r11                           #  37    0x5465b  3      
  nop                                 #  38    0x5465e  1      
  nop                                 #  39    0x5465f  1      
.L_546a0:                             #        0x54660  0      
  movl %ebx, %ebx                     #  40    0x54660  2      
  movl (%r15,%rbx,1), %edi            #  41    0x54662  4      
  movl %ebx, %ebx                     #  42    0x54666  2      
  addl 0x4(%r15,%rbx,1), %edi         #  43    0x54668  5      
  movl %r12d, %edx                    #  44    0x5466d  3      
  movl %r13d, %esi                    #  45    0x54670  3      
  nop                                 #  46    0x54673  1      
  callq .memcpy                       #  47    0x54674  5      
  movl %ebx, %ebx                     #  48    0x54679  2      
  movl (%r15,%rbx,1), %eax            #  49    0x5467b  4      
  addl %r12d, %eax                    #  50    0x5467f  3      
  movl %ebx, %ebx                     #  51    0x54682  2      
  addl 0x4(%r15,%rbx,1), %eax         #  52    0x54684  5      
  movl %eax, %eax                     #  53    0x54689  2      
  movb $0x0, (%r15,%rax,1)            #  54    0x5468b  5      
  movl %ebx, %ebx                     #  55    0x54690  2      
  addl %r12d, 0x4(%r15,%rbx,1)        #  56    0x54692  5      
  xchgw %ax, %ax                      #  57    0x54697  3      
  jmpq .L_54660                       #  58    0x5469a  5      
  nop                                 #  59    0x5469f  1      
  nop                                 #  60    0x546a0  1      
.L_54700:                             #        0x546a1  0      
  movl %ebx, %ebx                     #  61    0x546a1  2      
  movl 0xc(%r15,%rbx,1), %esi         #  62    0x546a3  5      
  testl %esi, %esi                    #  63    0x546a8  2      
  jne .L_54660                        #  64    0x546aa  6      
  testl %r14d, %r14d                  #  65    0x546b0  3      
  jne .L_54720                        #  66    0x546b3  6      
  cmpl $0x2, %eax                     #  67    0x546b9  3      
  movb $0x2, %r14b                    #  68    0x546bc  3      
  jbe .L_54740                        #  69    0x546bf  6      
  nop                                 #  70    0x546c5  1      
.L_54720:                             #        0x546c6  0      
  addl %r14d, %r14d                   #  71    0x546c6  3      
  cmpl %r14d, %eax                    #  72    0x546c9  3      
  ja .L_54720                         #  73    0x546cc  6      
  nop                                 #  74    0x546d2  1      
  nop                                 #  75    0x546d3  1      
.L_54740:                             #        0x546d4  0      
  movl %ebx, %ebx                     #  76    0x546d4  2      
  movl (%r15,%rbx,1), %edi            #  77    0x546d6  4      
  movl %r14d, %esi                    #  78    0x546da  3      
  nop                                 #  79    0x546dd  1      
  nop                                 #  80    0x546de  1      
  callq .realloc                      #  81    0x546df  5      
  movl %eax, %eax                     #  82    0x546e4  2      
  testq %rax, %rax                    #  83    0x546e6  3      
  je .L_54780                         #  84    0x546e9  6      
  movl %ebx, %ebx                     #  85    0x546ef  2      
  movl %eax, (%r15,%rbx,1)            #  86    0x546f1  4      
  movl %ebx, %ebx                     #  87    0x546f5  2      
  movl %r14d, 0x8(%r15,%rbx,1)        #  88    0x546f7  5      
  jmpq .L_54640                       #  89    0x546fc  5      
  nop                                 #  90    0x54701  1      
.L_54780:                             #        0x54702  0      
  movl %ebx, %ebx                     #  91    0x54702  2      
  movl (%r15,%rbx,1), %edi            #  92    0x54704  4      
  nop                                 #  93    0x54708  1      
  nop                                 #  94    0x54709  1      
  callq .free                         #  95    0x5470a  5      
  movl %ebx, %ebx                     #  96    0x5470f  2      
  movl $0x0, (%r15,%rbx,1)            #  97    0x54711  8      
  movl %ebx, %ebx                     #  98    0x54719  2      
  movl $0x0, 0x4(%r15,%rbx,1)         #  99    0x5471b  9      
  movl %ebx, %ebx                     #  100   0x54724  2      
  movl $0x0, 0x8(%r15,%rbx,1)         #  101   0x54726  9      
  movl %ebx, %ebx                     #  102   0x5472f  2      
  movl $0x1, 0xc(%r15,%rbx,1)         #  103   0x54731  9      
  jmpq .L_54660                       #  104   0x5473a  5      
  nop                                 #  105   0x5473f  1      
  nop                                 #  106   0x54740  1      
                                                               
.size d_growable_string_callback_adapter, .-d_growable_string_callback_adapter

