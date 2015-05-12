  .text
  .globl nc_allocate_memory_block_mu
  .type nc_allocate_memory_block_mu, @function

#! file-offset 0x41160
#! rip-offset  0x41160
#! capacity    672 bytes

# Text                                #  Line  RIP      Bytes  
.nc_allocate_memory_block_mu:         #        0x41160  0      
  movq %rbx, -0x10(%rsp)              #  1     0x41160  5      
  movq %r12, -0x8(%rsp)               #  2     0x41165  5      
  xorl %eax, %eax                     #  3     0x4116a  2      
  subl $0x28, %esp                    #  4     0x4116c  3      
  addq %r15, %rsp                     #  5     0x4116f  3      
  cmpl $0x1, %edi                     #  6     0x41172  3      
  jbe .L_411a0                        #  7     0x41175  6      
  nop                                 #  8     0x4117b  1      
.L_41180:                             #        0x4117c  0      
  movq 0x18(%rsp), %rbx               #  9     0x4117c  5      
  movq 0x20(%rsp), %r12               #  10    0x41181  5      
  addl $0x28, %esp                    #  11    0x41186  3      
  addq %r15, %rsp                     #  12    0x41189  3      
  popq %r11                           #  13    0x4118c  3      
  andl $0xffffffe0, %r11d             #  14    0x4118f  7      
  addq %r15, %r11                     #  15    0x41196  3      
  jmpq %r11                           #  16    0x41199  3      
  nop                                 #  17    0x4119c  1      
.L_411a0:                             #        0x4119d  0      
  leal 0x1f(%rsi), %eax               #  18    0x4119d  3      
  leal 0x10036dc0(,%rdi,8), %ebx      #  19    0x411a0  7      
  cmpl $0x1, %edi                     #  20    0x411a7  3      
  cmovnel %eax, %esi                  #  21    0x411aa  3      
  movl %ebx, %ebx                     #  22    0x411ad  2      
  movl (%r15,%rbx,1), %eax            #  23    0x411af  4      
  testq %rax, %rax                    #  24    0x411b3  3      
  je .L_41280                         #  25    0x411b6  6      
  nop                                 #  26    0x411bc  1      
  movl %eax, %eax                     #  27    0x411bd  2      
  movl 0x4(%r15,%rax,1), %ecx         #  28    0x411bf  5      
  testl %ecx, %ecx                    #  29    0x411c4  2      
  jne .L_41320                        #  30    0x411c6  6      
  movl %eax, %eax                     #  31    0x411cc  2      
  movl 0x8(%r15,%rax,1), %edx         #  32    0x411ce  5      
  cmpl %edx, %esi                     #  33    0x411d3  2      
  jg .L_41320                         #  34    0x411d5  6      
  xchgw %ax, %ax                      #  35    0x411db  3      
  movl %eax, %eax                     #  36    0x411de  2      
  movl (%r15,%rax,1), %ecx            #  37    0x411e0  4      
  testq %rcx, %rcx                    #  38    0x411e4  3      
  movl %ebx, %ebx                     #  39    0x411e7  2      
  movl %ecx, (%r15,%rbx,1)            #  40    0x411e9  4      
  je .L_413e0                         #  41    0x411ed  6      
  nop                                 #  42    0x411f3  1      
.L_41200:                             #        0x411f4  0      
  leal (,%rdi,4), %ecx                #  43    0x411f4  7      
  movslq %ecx, %rcx                   #  44    0x411fb  3      
  movl %ecx, %ecx                     #  45    0x411fe  2      
  subl $0x1, 0x10036db4(%r15,%rcx,1)  #  46    0x41200  9      
  movl %eax, %eax                     #  47    0x41209  2      
  movq $0x0, (%r15,%rax,1)            #  48    0x4120b  8      
  nop                                 #  49    0x41213  1      
  movl %eax, %eax                     #  50    0x41214  2      
  movq $0x0, 0x8(%r15,%rax,1)         #  51    0x41216  9      
  movl %eax, %eax                     #  52    0x4121f  2      
  movq $0x0, 0x10(%r15,%rax,1)        #  53    0x41221  9      
  nop                                 #  54    0x4122a  1      
  movl %eax, %eax                     #  55    0x4122b  2      
  movq $0x0, 0x18(%r15,%rax,1)        #  56    0x4122d  9      
  movl %eax, %eax                     #  57    0x41236  2      
  movl %edx, 0x8(%r15,%rax,1)         #  58    0x41238  5      
  movl %eax, %eax                     #  59    0x4123d  2      
  movl $0x1, 0x4(%r15,%rax,1)         #  60    0x4123f  9      
  nop                                 #  61    0x41248  1      
  jmpq .L_41180                       #  62    0x41249  5      
  nop                                 #  63    0x4124e  1      
  nop                                 #  64    0x4124f  1      
.L_41280:                             #        0x41250  0      
  leal 0x20(%rsi), %edi               #  65    0x41250  3      
  movl %esi, 0x8(%rsp)                #  66    0x41253  4      
  nop                                 #  67    0x41257  1      
  nop                                 #  68    0x41258  1      
  callq .malloc                       #  69    0x41259  5      
  movl %eax, %edx                     #  70    0x4125e  2      
  xorl %eax, %eax                     #  71    0x41260  2      
  movl 0x8(%rsp), %esi                #  72    0x41262  4      
  testq %rdx, %rdx                    #  73    0x41266  3      
  je .L_41180                         #  74    0x41269  6      
  movl %edx, %edx                     #  75    0x4126f  2      
  movq $0x0, (%r15,%rdx,1)            #  76    0x41271  8      
  nop                                 #  77    0x41279  1      
  movl %edx, %edx                     #  78    0x4127a  2      
  movq $0x0, 0x8(%r15,%rdx,1)         #  79    0x4127c  9      
  movq %rdx, %rax                     #  80    0x41285  3      
  movl %edx, %edx                     #  81    0x41288  2      
  movq $0x0, 0x10(%r15,%rdx,1)        #  82    0x4128a  9      
  nop                                 #  83    0x41293  1      
  movl %edx, %edx                     #  84    0x41294  2      
  movq $0x0, 0x18(%r15,%rdx,1)        #  85    0x41296  9      
  movl %edx, %edx                     #  86    0x4129f  2      
  movl %esi, 0x8(%r15,%rdx,1)         #  87    0x412a1  5      
  movl %edx, %edx                     #  88    0x412a6  2      
  movl $0x1, 0x4(%r15,%rdx,1)         #  89    0x412a8  9      
  nop                                 #  90    0x412b1  1      
  jmpq .L_41180                       #  91    0x412b2  5      
  nop                                 #  92    0x412b7  1      
  nop                                 #  93    0x412b8  1      
.L_41320:                             #        0x412b9  0      
  leal (,%rdi,4), %r12d               #  94    0x412b9  8      
  movslq %r12d, %r12                  #  95    0x412c1  3      
  movl %r12d, %r12d                   #  96    0x412c4  3      
  movl 0x10036db4(%r15,%r12,1), %edx  #  97    0x412c7  8      
  cmpl $0x32, %edx                    #  98    0x412cf  3      
  jle .L_41280                        #  99    0x412d2  6      
  nop                                 #  100   0x412d8  1      
  testl %ecx, %ecx                    #  101   0x412d9  2      
  movq %rax, %rdi                     #  102   0x412db  3      
  je .L_413c0                         #  103   0x412de  6      
  jmpq .L_41280                       #  104   0x412e4  5      
  nop                                 #  105   0x412e9  1      
  nop                                 #  106   0x412ea  1      
.L_41360:                             #        0x412eb  0      
  subl $0x1, %edx                     #  107   0x412eb  3      
  movl %esi, 0x8(%rsp)                #  108   0x412ee  4      
  movl %r12d, %r12d                   #  109   0x412f2  3      
  movl %edx, 0x10036db4(%r15,%r12,1)  #  110   0x412f5  8      
  nop                                 #  111   0x412fd  1      
  callq .free                         #  112   0x412fe  5      
  movl %r12d, %r12d                   #  113   0x41303  3      
  movl 0x10036db4(%r15,%r12,1), %edx  #  114   0x41306  8      
  movl 0x8(%rsp), %esi                #  115   0x4130e  4      
  cmpl $0x32, %edx                    #  116   0x41312  3      
  jle .L_41280                        #  117   0x41315  6      
  movl %ebx, %ebx                     #  118   0x4131b  2      
  movl (%r15,%rbx,1), %edi            #  119   0x4131d  4      
  xchgw %ax, %ax                      #  120   0x41321  3      
  movl %edi, %edi                     #  121   0x41324  2      
  movl 0x4(%r15,%rdi,1), %eax         #  122   0x41326  5      
  testl %eax, %eax                    #  123   0x4132b  2      
  jne .L_41280                        #  124   0x4132d  6      
  xchgw %ax, %ax                      #  125   0x41333  3      
  nop                                 #  126   0x41336  1      
.L_413c0:                             #        0x41337  0      
  movl %edi, %edi                     #  127   0x41337  2      
  movl (%r15,%rdi,1), %eax            #  128   0x41339  4      
  testq %rax, %rax                    #  129   0x4133d  3      
  movl %ebx, %ebx                     #  130   0x41340  2      
  movl %eax, (%r15,%rbx,1)            #  131   0x41342  4      
  jne .L_41360                        #  132   0x41346  6      
  movl %ebx, %ebx                     #  133   0x4134c  2      
  movl %ebx, 0x4(%r15,%rbx,1)         #  134   0x4134e  5      
  jmpq .L_41360                       #  135   0x41353  5      
  nop                                 #  136   0x41358  1      
.L_413e0:                             #        0x41359  0      
  movl %ebx, %ebx                     #  137   0x41359  2      
  movl %ebx, 0x4(%r15,%rbx,1)         #  138   0x4135b  5      
  jmpq .L_41200                       #  139   0x41360  5      
  nop                                 #  140   0x41365  1      
  nop                                 #  141   0x41366  1      
                                                               
.size nc_allocate_memory_block_mu, .-nc_allocate_memory_block_mu

