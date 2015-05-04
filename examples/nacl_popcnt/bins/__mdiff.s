  .text
  .globl __mdiff
  .type __mdiff, @function

#! file-offset 0x7f0e0
#! rip-offset  0x7f0e0
#! capacity    640 bytes

# Text                           #  Line  RIP      Bytes  
.__mdiff:                        #        0x7f0e0  0      
  pushq %r13                     #  1     0x7f0e0  3      
  movl %edx, %r13d               #  2     0x7f0e3  3      
  movl %edi, %edi                #  3     0x7f0e6  2      
  pushq %r12                     #  4     0x7f0e8  3      
  pushq %rbx                     #  5     0x7f0eb  2      
  movl %esi, %ebx                #  6     0x7f0ed  2      
  movl %r13d, %r13d              #  7     0x7f0ef  3      
  movl 0x10(%r15,%r13,1), %edx   #  8     0x7f0f2  5      
  movl %ebx, %ebx                #  9     0x7f0f7  2      
  movl 0x10(%r15,%rbx,1), %r12d  #  10    0x7f0f9  5      
  subl %edx, %r12d               #  11    0x7f0fe  3      
  xchgw %ax, %ax                 #  12    0x7f101  3      
  cmpl $0x0, %r12d               #  13    0x7f104  4      
  je .L_7f2a0                    #  14    0x7f108  6      
  jl .L_7f340                    #  15    0x7f10e  6      
  xorl %r12d, %r12d              #  16    0x7f114  3      
  nop                            #  17    0x7f117  1      
.L_7f120:                        #        0x7f118  0      
  movl %ebx, %ebx                #  18    0x7f118  2      
  movl 0x4(%r15,%rbx,1), %esi    #  19    0x7f11a  5      
  nop                            #  20    0x7f11f  1      
  nop                            #  21    0x7f120  1      
  callq ._Balloc                 #  22    0x7f121  5      
  movl %r13d, %r13d              #  23    0x7f126  3      
  movl 0x10(%r15,%r13,1), %ecx   #  24    0x7f129  5      
  movl %ebx, %ebx                #  25    0x7f12e  2      
  movl 0x10(%r15,%rbx,1), %r9d   #  26    0x7f130  5      
  movl %eax, %eax                #  27    0x7f135  2      
  leal 0x14(%rbx), %edx          #  28    0x7f137  3      
  leal 0x14(%r13), %esi          #  29    0x7f13a  4      
  movl %eax, %eax                #  30    0x7f13e  2      
  movl %r12d, 0xc(%r15,%rax,1)   #  31    0x7f140  5      
  nop                            #  32    0x7f145  1      
  xorl %edi, %edi                #  33    0x7f146  2      
  leal 0x14(%r13,%rcx,4), %r13d  #  34    0x7f148  5      
  leal 0x14(%rbx,%r9,4), %ebx    #  35    0x7f14d  5      
  leal 0x14(%rax), %ecx          #  36    0x7f152  3      
  xchgw %ax, %ax                 #  37    0x7f155  3      
  nop                            #  38    0x7f158  1      
.L_7f180:                        #        0x7f159  0      
  movl %edx, %edx                #  39    0x7f159  2      
  movl (%r15,%rdx,1), %r8d       #  40    0x7f15b  4      
  movl %esi, %esi                #  41    0x7f15f  2      
  movl (%r15,%rsi,1), %r11d      #  42    0x7f161  4      
  addl $0x4, %esi                #  43    0x7f165  3      
  addl $0x4, %edx                #  44    0x7f168  3      
  movzwl %r8w, %r10d             #  45    0x7f16b  4      
  movzwl %r11w, %r12d            #  46    0x7f16f  4      
  shrl $0x10, %r8d               #  47    0x7f173  4      
  xchgw %ax, %ax                 #  48    0x7f177  3      
  subl %r12d, %r10d              #  49    0x7f17a  3      
  shrl $0x10, %r11d              #  50    0x7f17d  4      
  addl %edi, %r10d               #  51    0x7f181  3      
  subl %r11d, %r8d               #  52    0x7f184  3      
  movl %r10d, %edi               #  53    0x7f187  3      
  andl $0xffff, %r10d            #  54    0x7f18a  7      
  sarl $0x10, %edi               #  55    0x7f191  3      
  addl %edi, %r8d                #  56    0x7f194  3      
  movl %r8d, %edi                #  57    0x7f197  3      
  shll $0x10, %r8d               #  58    0x7f19a  4      
  orl %r10d, %r8d                #  59    0x7f19e  3      
  sarl $0x10, %edi               #  60    0x7f1a1  3      
  movl %ecx, %ecx                #  61    0x7f1a4  2      
  movl %r8d, (%r15,%rcx,1)       #  62    0x7f1a6  4      
  addl $0x4, %ecx                #  63    0x7f1aa  3      
  cmpl %esi, %r13d               #  64    0x7f1ad  3      
  ja .L_7f180                    #  65    0x7f1b0  6      
  cmpl %ebx, %edx                #  66    0x7f1b6  2      
  jae .L_7f260                   #  67    0x7f1b8  6      
.L_7f1e0:                        #        0x7f1be  0      
  movl %edx, %edx                #  68    0x7f1be  2      
  movl (%r15,%rdx,1), %esi       #  69    0x7f1c0  4      
  addl $0x4, %edx                #  70    0x7f1c4  3      
  movzwl %si, %r8d               #  71    0x7f1c7  4      
  shrl $0x10, %esi               #  72    0x7f1cb  3      
  leal (%rdi,%r8,1), %r8d        #  73    0x7f1ce  4      
  movl %r8d, %edi                #  74    0x7f1d2  3      
  andl $0xffff, %r8d             #  75    0x7f1d5  7      
  xchgw %ax, %ax                 #  76    0x7f1dc  3      
  sarl $0x10, %edi               #  77    0x7f1df  3      
  leal (%rdi,%rsi,1), %esi       #  78    0x7f1e2  3      
  movl %esi, %edi                #  79    0x7f1e5  2      
  shll $0x10, %esi               #  80    0x7f1e7  3      
  orl %r8d, %esi                 #  81    0x7f1ea  3      
  sarl $0x10, %edi               #  82    0x7f1ed  3      
  movl %ecx, %ecx                #  83    0x7f1f0  2      
  movl %esi, (%r15,%rcx,1)       #  84    0x7f1f2  4      
  addl $0x4, %ecx                #  85    0x7f1f6  3      
  cmpl %edx, %ebx                #  86    0x7f1f9  2      
  nop                            #  87    0x7f1fb  1      
  ja .L_7f1e0                    #  88    0x7f1fc  6      
  subl $0x4, %ecx                #  89    0x7f202  3      
  movl %ecx, %ecx                #  90    0x7f205  2      
  movl (%r15,%rcx,1), %ebx       #  91    0x7f207  4      
  testl %ebx, %ebx               #  92    0x7f20b  2      
  jne .L_7f280                   #  93    0x7f20d  6      
  xchgw %ax, %ax                 #  94    0x7f213  3      
  nop                            #  95    0x7f216  1      
.L_7f240:                        #        0x7f217  0      
  subl $0x1, %r9d                #  96    0x7f217  4      
  nop                            #  97    0x7f21b  1      
  nop                            #  98    0x7f21c  1      
.L_7f260:                        #        0x7f21d  0      
  subl $0x4, %ecx                #  99    0x7f21d  3      
  movl %ecx, %ecx                #  100   0x7f220  2      
  movl (%r15,%rcx,1), %ebx       #  101   0x7f222  4      
  testl %ebx, %ebx               #  102   0x7f226  2      
  je .L_7f240                    #  103   0x7f228  6      
  nop                            #  104   0x7f22e  1      
  nop                            #  105   0x7f22f  1      
.L_7f280:                        #        0x7f230  0      
  movl %eax, %eax                #  106   0x7f230  2      
  movl %r9d, 0x10(%r15,%rax,1)   #  107   0x7f232  5      
  popq %rbx                      #  108   0x7f237  2      
  popq %r12                      #  109   0x7f239  3      
  popq %r13                      #  110   0x7f23c  3      
  popq %r11                      #  111   0x7f23f  3      
  andl $0xffffffe0, %r11d        #  112   0x7f242  7      
  addq %r15, %r11                #  113   0x7f249  3      
  jmpq %r11                      #  114   0x7f24c  3      
  nop                            #  115   0x7f24f  1      
.L_7f2a0:                        #        0x7f250  0      
  leal 0x10(,%rdx,4), %edx       #  116   0x7f250  7      
  leal 0x14(%rbx), %esi          #  117   0x7f257  3      
  leal 0x4(%rdx,%rbx,1), %eax    #  118   0x7f25a  4      
  leal 0x4(%rdx,%r13,1), %edx    #  119   0x7f25e  5      
  nop                            #  120   0x7f263  1      
.L_7f2c0:                        #        0x7f264  0      
  subl $0x4, %edx                #  121   0x7f264  3      
  subl $0x4, %eax                #  122   0x7f267  3      
  movl %edx, %edx                #  123   0x7f26a  2      
  movl (%r15,%rdx,1), %ecx       #  124   0x7f26c  4      
  movl %eax, %eax                #  125   0x7f270  2      
  cmpl %ecx, (%r15,%rax,1)       #  126   0x7f272  4      
  jne .L_7f320                   #  127   0x7f276  6      
  cmpl %eax, %esi                #  128   0x7f27c  2      
  jb .L_7f2c0                    #  129   0x7f27e  6      
  xorl %esi, %esi                #  130   0x7f284  2      
  nop                            #  131   0x7f286  1      
  callq ._Balloc                 #  132   0x7f287  5      
  movl %eax, %eax                #  133   0x7f28c  2      
  movl %eax, %eax                #  134   0x7f28e  2      
  movl $0x1, 0x10(%r15,%rax,1)   #  135   0x7f290  9      
  movl %eax, %eax                #  136   0x7f299  2      
  movl $0x0, 0x14(%r15,%rax,1)   #  137   0x7f29b  9      
  popq %rbx                      #  138   0x7f2a4  2      
  popq %r12                      #  139   0x7f2a6  3      
  popq %r13                      #  140   0x7f2a9  3      
  popq %r11                      #  141   0x7f2ac  3      
  nop                            #  142   0x7f2af  1      
  andl $0xffffffe0, %r11d        #  143   0x7f2b0  7      
  addq %r15, %r11                #  144   0x7f2b7  3      
  jmpq %r11                      #  145   0x7f2ba  3      
  nop                            #  146   0x7f2bd  1      
  nop                            #  147   0x7f2be  1      
.L_7f320:                        #        0x7f2bf  0      
  jae .L_7f120                   #  148   0x7f2bf  6      
  nop                            #  149   0x7f2c5  1      
  nop                            #  150   0x7f2c6  1      
.L_7f340:                        #        0x7f2c7  0      
  movq %rbx, %rax                #  151   0x7f2c7  3      
  movl $0x1, %r12d               #  152   0x7f2ca  6      
  movq %r13, %rbx                #  153   0x7f2d0  3      
  movq %rax, %r13                #  154   0x7f2d3  3      
  jmpq .L_7f120                  #  155   0x7f2d6  5      
  nop                            #  156   0x7f2db  1      
                                                          
.size __mdiff, .-__mdiff

