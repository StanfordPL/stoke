  .text
  .globl nc_allocate_memory_block_mu
  .type nc_allocate_memory_block_mu, @function

#! file-offset 0x41140
#! rip-offset  0x41140
#! capacity    672 bytes

# Text                                #  Line  RIP      Bytes  
.nc_allocate_memory_block_mu:         #        0x41140  0      
  movq %rbx, -0x10(%rsp)              #  1     0x41140  5      
  movq %r12, -0x8(%rsp)               #  2     0x41145  5      
  xorl %eax, %eax                     #  3     0x4114a  2      
  subl $0x28, %esp                    #  4     0x4114c  3      
  addq %r15, %rsp                     #  5     0x4114f  3      
  cmpl $0x1, %edi                     #  6     0x41152  3      
  jbe .L_41180                        #  7     0x41155  6      
  nop                                 #  8     0x4115b  1      
.L_41160:                             #        0x4115c  0      
  movq 0x18(%rsp), %rbx               #  9     0x4115c  5      
  movq 0x20(%rsp), %r12               #  10    0x41161  5      
  addl $0x28, %esp                    #  11    0x41166  3      
  addq %r15, %rsp                     #  12    0x41169  3      
  popq %r11                           #  13    0x4116c  3      
  andl $0xffffffe0, %r11d             #  14    0x4116f  7      
  addq %r15, %r11                     #  15    0x41176  3      
  jmpq %r11                           #  16    0x41179  3      
  nop                                 #  17    0x4117c  1      
.L_41180:                             #        0x4117d  0      
  leal 0x1f(%rsi), %eax               #  18    0x4117d  3      
  leal 0x10036dc0(,%rdi,8), %ebx      #  19    0x41180  7      
  cmpl $0x1, %edi                     #  20    0x41187  3      
  cmovnel %eax, %esi                  #  21    0x4118a  3      
  movl %ebx, %ebx                     #  22    0x4118d  2      
  movl (%r15,%rbx,1), %eax            #  23    0x4118f  4      
  testq %rax, %rax                    #  24    0x41193  3      
  je .L_41260                         #  25    0x41196  6      
  nop                                 #  26    0x4119c  1      
  movl %eax, %eax                     #  27    0x4119d  2      
  movl 0x4(%r15,%rax,1), %ecx         #  28    0x4119f  5      
  testl %ecx, %ecx                    #  29    0x411a4  2      
  jne .L_41300                        #  30    0x411a6  6      
  movl %eax, %eax                     #  31    0x411ac  2      
  movl 0x8(%r15,%rax,1), %edx         #  32    0x411ae  5      
  cmpl %edx, %esi                     #  33    0x411b3  2      
  jg .L_41300                         #  34    0x411b5  6      
  xchgw %ax, %ax                      #  35    0x411bb  3      
  movl %eax, %eax                     #  36    0x411be  2      
  movl (%r15,%rax,1), %ecx            #  37    0x411c0  4      
  testq %rcx, %rcx                    #  38    0x411c4  3      
  movl %ebx, %ebx                     #  39    0x411c7  2      
  movl %ecx, (%r15,%rbx,1)            #  40    0x411c9  4      
  je .L_413c0                         #  41    0x411cd  6      
  nop                                 #  42    0x411d3  1      
.L_411e0:                             #        0x411d4  0      
  leal (,%rdi,4), %ecx                #  43    0x411d4  7      
  movslq %ecx, %rcx                   #  44    0x411db  3      
  movl %ecx, %ecx                     #  45    0x411de  2      
  subl $0x1, 0x10036db4(%r15,%rcx,1)  #  46    0x411e0  9      
  movl %eax, %eax                     #  47    0x411e9  2      
  movq $0x0, (%r15,%rax,1)            #  48    0x411eb  8      
  nop                                 #  49    0x411f3  1      
  movl %eax, %eax                     #  50    0x411f4  2      
  movq $0x0, 0x8(%r15,%rax,1)         #  51    0x411f6  9      
  movl %eax, %eax                     #  52    0x411ff  2      
  movq $0x0, 0x10(%r15,%rax,1)        #  53    0x41201  9      
  nop                                 #  54    0x4120a  1      
  movl %eax, %eax                     #  55    0x4120b  2      
  movq $0x0, 0x18(%r15,%rax,1)        #  56    0x4120d  9      
  movl %eax, %eax                     #  57    0x41216  2      
  movl %edx, 0x8(%r15,%rax,1)         #  58    0x41218  5      
  movl %eax, %eax                     #  59    0x4121d  2      
  movl $0x1, 0x4(%r15,%rax,1)         #  60    0x4121f  9      
  nop                                 #  61    0x41228  1      
  jmpq .L_41160                       #  62    0x41229  5      
  nop                                 #  63    0x4122e  1      
  nop                                 #  64    0x4122f  1      
.L_41260:                             #        0x41230  0      
  leal 0x20(%rsi), %edi               #  65    0x41230  3      
  movl %esi, 0x8(%rsp)                #  66    0x41233  4      
  nop                                 #  67    0x41237  1      
  nop                                 #  68    0x41238  1      
  callq .malloc                       #  69    0x41239  5      
  movl %eax, %edx                     #  70    0x4123e  2      
  xorl %eax, %eax                     #  71    0x41240  2      
  movl 0x8(%rsp), %esi                #  72    0x41242  4      
  testq %rdx, %rdx                    #  73    0x41246  3      
  je .L_41160                         #  74    0x41249  6      
  movl %edx, %edx                     #  75    0x4124f  2      
  movq $0x0, (%r15,%rdx,1)            #  76    0x41251  8      
  nop                                 #  77    0x41259  1      
  movl %edx, %edx                     #  78    0x4125a  2      
  movq $0x0, 0x8(%r15,%rdx,1)         #  79    0x4125c  9      
  movq %rdx, %rax                     #  80    0x41265  3      
  movl %edx, %edx                     #  81    0x41268  2      
  movq $0x0, 0x10(%r15,%rdx,1)        #  82    0x4126a  9      
  nop                                 #  83    0x41273  1      
  movl %edx, %edx                     #  84    0x41274  2      
  movq $0x0, 0x18(%r15,%rdx,1)        #  85    0x41276  9      
  movl %edx, %edx                     #  86    0x4127f  2      
  movl %esi, 0x8(%r15,%rdx,1)         #  87    0x41281  5      
  movl %edx, %edx                     #  88    0x41286  2      
  movl $0x1, 0x4(%r15,%rdx,1)         #  89    0x41288  9      
  nop                                 #  90    0x41291  1      
  jmpq .L_41160                       #  91    0x41292  5      
  nop                                 #  92    0x41297  1      
  nop                                 #  93    0x41298  1      
.L_41300:                             #        0x41299  0      
  leal (,%rdi,4), %r12d               #  94    0x41299  8      
  movslq %r12d, %r12                  #  95    0x412a1  3      
  movl %r12d, %r12d                   #  96    0x412a4  3      
  movl 0x10036db4(%r15,%r12,1), %edx  #  97    0x412a7  8      
  cmpl $0x32, %edx                    #  98    0x412af  3      
  jle .L_41260                        #  99    0x412b2  6      
  nop                                 #  100   0x412b8  1      
  testl %ecx, %ecx                    #  101   0x412b9  2      
  movq %rax, %rdi                     #  102   0x412bb  3      
  je .L_413a0                         #  103   0x412be  6      
  jmpq .L_41260                       #  104   0x412c4  5      
  nop                                 #  105   0x412c9  1      
  nop                                 #  106   0x412ca  1      
.L_41340:                             #        0x412cb  0      
  subl $0x1, %edx                     #  107   0x412cb  3      
  movl %esi, 0x8(%rsp)                #  108   0x412ce  4      
  movl %r12d, %r12d                   #  109   0x412d2  3      
  movl %edx, 0x10036db4(%r15,%r12,1)  #  110   0x412d5  8      
  nop                                 #  111   0x412dd  1      
  callq .free                         #  112   0x412de  5      
  movl %r12d, %r12d                   #  113   0x412e3  3      
  movl 0x10036db4(%r15,%r12,1), %edx  #  114   0x412e6  8      
  movl 0x8(%rsp), %esi                #  115   0x412ee  4      
  cmpl $0x32, %edx                    #  116   0x412f2  3      
  jle .L_41260                        #  117   0x412f5  6      
  movl %ebx, %ebx                     #  118   0x412fb  2      
  movl (%r15,%rbx,1), %edi            #  119   0x412fd  4      
  xchgw %ax, %ax                      #  120   0x41301  3      
  movl %edi, %edi                     #  121   0x41304  2      
  movl 0x4(%r15,%rdi,1), %eax         #  122   0x41306  5      
  testl %eax, %eax                    #  123   0x4130b  2      
  jne .L_41260                        #  124   0x4130d  6      
  xchgw %ax, %ax                      #  125   0x41313  3      
  nop                                 #  126   0x41316  1      
.L_413a0:                             #        0x41317  0      
  movl %edi, %edi                     #  127   0x41317  2      
  movl (%r15,%rdi,1), %eax            #  128   0x41319  4      
  testq %rax, %rax                    #  129   0x4131d  3      
  movl %ebx, %ebx                     #  130   0x41320  2      
  movl %eax, (%r15,%rbx,1)            #  131   0x41322  4      
  jne .L_41340                        #  132   0x41326  6      
  movl %ebx, %ebx                     #  133   0x4132c  2      
  movl %ebx, 0x4(%r15,%rbx,1)         #  134   0x4132e  5      
  jmpq .L_41340                       #  135   0x41333  5      
  nop                                 #  136   0x41338  1      
.L_413c0:                             #        0x41339  0      
  movl %ebx, %ebx                     #  137   0x41339  2      
  movl %ebx, 0x4(%r15,%rbx,1)         #  138   0x4133b  5      
  jmpq .L_411e0                       #  139   0x41340  5      
  nop                                 #  140   0x41345  1      
  nop                                 #  141   0x41346  1      
                                                               
.size nc_allocate_memory_block_mu, .-nc_allocate_memory_block_mu

