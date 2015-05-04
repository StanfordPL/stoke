  .text
  .globl nc_allocate_memory_block_mu
  .type nc_allocate_memory_block_mu, @function

#! file-offset 0x411e0
#! rip-offset  0x411e0
#! capacity    672 bytes

# Text                                #  Line  RIP      Bytes  
.nc_allocate_memory_block_mu:         #        0x411e0  0      
  movq %rbx, -0x10(%rsp)              #  1     0x411e0  5      
  movq %r12, -0x8(%rsp)               #  2     0x411e5  5      
  xorl %eax, %eax                     #  3     0x411ea  2      
  subl $0x28, %esp                    #  4     0x411ec  3      
  addq %r15, %rsp                     #  5     0x411ef  3      
  cmpl $0x1, %edi                     #  6     0x411f2  3      
  jbe .L_41220                        #  7     0x411f5  6      
  nop                                 #  8     0x411fb  1      
.L_41200:                             #        0x411fc  0      
  movq 0x18(%rsp), %rbx               #  9     0x411fc  5      
  movq 0x20(%rsp), %r12               #  10    0x41201  5      
  addl $0x28, %esp                    #  11    0x41206  3      
  addq %r15, %rsp                     #  12    0x41209  3      
  popq %r11                           #  13    0x4120c  3      
  andl $0xffffffe0, %r11d             #  14    0x4120f  7      
  addq %r15, %r11                     #  15    0x41216  3      
  jmpq %r11                           #  16    0x41219  3      
  nop                                 #  17    0x4121c  1      
.L_41220:                             #        0x4121d  0      
  leal 0x1f(%rsi), %eax               #  18    0x4121d  3      
  leal 0x10036dc0(,%rdi,8), %ebx      #  19    0x41220  7      
  cmpl $0x1, %edi                     #  20    0x41227  3      
  cmovnel %eax, %esi                  #  21    0x4122a  3      
  movl %ebx, %ebx                     #  22    0x4122d  2      
  movl (%r15,%rbx,1), %eax            #  23    0x4122f  4      
  testq %rax, %rax                    #  24    0x41233  3      
  je .L_41300                         #  25    0x41236  6      
  nop                                 #  26    0x4123c  1      
  movl %eax, %eax                     #  27    0x4123d  2      
  movl 0x4(%r15,%rax,1), %ecx         #  28    0x4123f  5      
  testl %ecx, %ecx                    #  29    0x41244  2      
  jne .L_413a0                        #  30    0x41246  6      
  movl %eax, %eax                     #  31    0x4124c  2      
  movl 0x8(%r15,%rax,1), %edx         #  32    0x4124e  5      
  cmpl %edx, %esi                     #  33    0x41253  2      
  jg .L_413a0                         #  34    0x41255  6      
  xchgw %ax, %ax                      #  35    0x4125b  3      
  movl %eax, %eax                     #  36    0x4125e  2      
  movl (%r15,%rax,1), %ecx            #  37    0x41260  4      
  testq %rcx, %rcx                    #  38    0x41264  3      
  movl %ebx, %ebx                     #  39    0x41267  2      
  movl %ecx, (%r15,%rbx,1)            #  40    0x41269  4      
  je .L_41460                         #  41    0x4126d  6      
  nop                                 #  42    0x41273  1      
.L_41280:                             #        0x41274  0      
  leal (,%rdi,4), %ecx                #  43    0x41274  7      
  movslq %ecx, %rcx                   #  44    0x4127b  3      
  movl %ecx, %ecx                     #  45    0x4127e  2      
  subl $0x1, 0x10036db4(%r15,%rcx,1)  #  46    0x41280  9      
  movl %eax, %eax                     #  47    0x41289  2      
  movq $0x0, (%r15,%rax,1)            #  48    0x4128b  8      
  nop                                 #  49    0x41293  1      
  movl %eax, %eax                     #  50    0x41294  2      
  movq $0x0, 0x8(%r15,%rax,1)         #  51    0x41296  9      
  movl %eax, %eax                     #  52    0x4129f  2      
  movq $0x0, 0x10(%r15,%rax,1)        #  53    0x412a1  9      
  nop                                 #  54    0x412aa  1      
  movl %eax, %eax                     #  55    0x412ab  2      
  movq $0x0, 0x18(%r15,%rax,1)        #  56    0x412ad  9      
  movl %eax, %eax                     #  57    0x412b6  2      
  movl %edx, 0x8(%r15,%rax,1)         #  58    0x412b8  5      
  movl %eax, %eax                     #  59    0x412bd  2      
  movl $0x1, 0x4(%r15,%rax,1)         #  60    0x412bf  9      
  nop                                 #  61    0x412c8  1      
  jmpq .L_41200                       #  62    0x412c9  5      
  nop                                 #  63    0x412ce  1      
  nop                                 #  64    0x412cf  1      
.L_41300:                             #        0x412d0  0      
  leal 0x20(%rsi), %edi               #  65    0x412d0  3      
  movl %esi, 0x8(%rsp)                #  66    0x412d3  4      
  nop                                 #  67    0x412d7  1      
  nop                                 #  68    0x412d8  1      
  callq .malloc                       #  69    0x412d9  5      
  movl %eax, %edx                     #  70    0x412de  2      
  xorl %eax, %eax                     #  71    0x412e0  2      
  movl 0x8(%rsp), %esi                #  72    0x412e2  4      
  testq %rdx, %rdx                    #  73    0x412e6  3      
  je .L_41200                         #  74    0x412e9  6      
  movl %edx, %edx                     #  75    0x412ef  2      
  movq $0x0, (%r15,%rdx,1)            #  76    0x412f1  8      
  nop                                 #  77    0x412f9  1      
  movl %edx, %edx                     #  78    0x412fa  2      
  movq $0x0, 0x8(%r15,%rdx,1)         #  79    0x412fc  9      
  movq %rdx, %rax                     #  80    0x41305  3      
  movl %edx, %edx                     #  81    0x41308  2      
  movq $0x0, 0x10(%r15,%rdx,1)        #  82    0x4130a  9      
  nop                                 #  83    0x41313  1      
  movl %edx, %edx                     #  84    0x41314  2      
  movq $0x0, 0x18(%r15,%rdx,1)        #  85    0x41316  9      
  movl %edx, %edx                     #  86    0x4131f  2      
  movl %esi, 0x8(%r15,%rdx,1)         #  87    0x41321  5      
  movl %edx, %edx                     #  88    0x41326  2      
  movl $0x1, 0x4(%r15,%rdx,1)         #  89    0x41328  9      
  nop                                 #  90    0x41331  1      
  jmpq .L_41200                       #  91    0x41332  5      
  nop                                 #  92    0x41337  1      
  nop                                 #  93    0x41338  1      
.L_413a0:                             #        0x41339  0      
  leal (,%rdi,4), %r12d               #  94    0x41339  8      
  movslq %r12d, %r12                  #  95    0x41341  3      
  movl %r12d, %r12d                   #  96    0x41344  3      
  movl 0x10036db4(%r15,%r12,1), %edx  #  97    0x41347  8      
  cmpl $0x32, %edx                    #  98    0x4134f  3      
  jle .L_41300                        #  99    0x41352  6      
  nop                                 #  100   0x41358  1      
  testl %ecx, %ecx                    #  101   0x41359  2      
  movq %rax, %rdi                     #  102   0x4135b  3      
  je .L_41440                         #  103   0x4135e  6      
  jmpq .L_41300                       #  104   0x41364  5      
  nop                                 #  105   0x41369  1      
  nop                                 #  106   0x4136a  1      
.L_413e0:                             #        0x4136b  0      
  subl $0x1, %edx                     #  107   0x4136b  3      
  movl %esi, 0x8(%rsp)                #  108   0x4136e  4      
  movl %r12d, %r12d                   #  109   0x41372  3      
  movl %edx, 0x10036db4(%r15,%r12,1)  #  110   0x41375  8      
  nop                                 #  111   0x4137d  1      
  callq .free                         #  112   0x4137e  5      
  movl %r12d, %r12d                   #  113   0x41383  3      
  movl 0x10036db4(%r15,%r12,1), %edx  #  114   0x41386  8      
  movl 0x8(%rsp), %esi                #  115   0x4138e  4      
  cmpl $0x32, %edx                    #  116   0x41392  3      
  jle .L_41300                        #  117   0x41395  6      
  movl %ebx, %ebx                     #  118   0x4139b  2      
  movl (%r15,%rbx,1), %edi            #  119   0x4139d  4      
  xchgw %ax, %ax                      #  120   0x413a1  3      
  movl %edi, %edi                     #  121   0x413a4  2      
  movl 0x4(%r15,%rdi,1), %eax         #  122   0x413a6  5      
  testl %eax, %eax                    #  123   0x413ab  2      
  jne .L_41300                        #  124   0x413ad  6      
  xchgw %ax, %ax                      #  125   0x413b3  3      
  nop                                 #  126   0x413b6  1      
.L_41440:                             #        0x413b7  0      
  movl %edi, %edi                     #  127   0x413b7  2      
  movl (%r15,%rdi,1), %eax            #  128   0x413b9  4      
  testq %rax, %rax                    #  129   0x413bd  3      
  movl %ebx, %ebx                     #  130   0x413c0  2      
  movl %eax, (%r15,%rbx,1)            #  131   0x413c2  4      
  jne .L_413e0                        #  132   0x413c6  6      
  movl %ebx, %ebx                     #  133   0x413cc  2      
  movl %ebx, 0x4(%r15,%rbx,1)         #  134   0x413ce  5      
  jmpq .L_413e0                       #  135   0x413d3  5      
  nop                                 #  136   0x413d8  1      
.L_41460:                             #        0x413d9  0      
  movl %ebx, %ebx                     #  137   0x413d9  2      
  movl %ebx, 0x4(%r15,%rbx,1)         #  138   0x413db  5      
  jmpq .L_41280                       #  139   0x413e0  5      
  nop                                 #  140   0x413e5  1      
  nop                                 #  141   0x413e6  1      
                                                               
.size nc_allocate_memory_block_mu, .-nc_allocate_memory_block_mu

