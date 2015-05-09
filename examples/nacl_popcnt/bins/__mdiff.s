  .text
  .globl __mdiff
  .type __mdiff, @function

#! file-offset 0x7f040
#! rip-offset  0x7f040
#! capacity    640 bytes

# Text                           #  Line  RIP      Bytes  
.__mdiff:                        #        0x7f040  0      
  pushq %r13                     #  1     0x7f040  3      
  movl %edx, %r13d               #  2     0x7f043  3      
  movl %edi, %edi                #  3     0x7f046  2      
  pushq %r12                     #  4     0x7f048  3      
  pushq %rbx                     #  5     0x7f04b  2      
  movl %esi, %ebx                #  6     0x7f04d  2      
  movl %r13d, %r13d              #  7     0x7f04f  3      
  movl 0x10(%r15,%r13,1), %edx   #  8     0x7f052  5      
  movl %ebx, %ebx                #  9     0x7f057  2      
  movl 0x10(%r15,%rbx,1), %r12d  #  10    0x7f059  5      
  subl %edx, %r12d               #  11    0x7f05e  3      
  xchgw %ax, %ax                 #  12    0x7f061  3      
  cmpl $0x0, %r12d               #  13    0x7f064  4      
  je .L_7f200                    #  14    0x7f068  6      
  jl .L_7f2a0                    #  15    0x7f06e  6      
  xorl %r12d, %r12d              #  16    0x7f074  3      
  nop                            #  17    0x7f077  1      
.L_7f080:                        #        0x7f078  0      
  movl %ebx, %ebx                #  18    0x7f078  2      
  movl 0x4(%r15,%rbx,1), %esi    #  19    0x7f07a  5      
  nop                            #  20    0x7f07f  1      
  nop                            #  21    0x7f080  1      
  callq ._Balloc                 #  22    0x7f081  5      
  movl %r13d, %r13d              #  23    0x7f086  3      
  movl 0x10(%r15,%r13,1), %ecx   #  24    0x7f089  5      
  movl %ebx, %ebx                #  25    0x7f08e  2      
  movl 0x10(%r15,%rbx,1), %r9d   #  26    0x7f090  5      
  movl %eax, %eax                #  27    0x7f095  2      
  leal 0x14(%rbx), %edx          #  28    0x7f097  3      
  leal 0x14(%r13), %esi          #  29    0x7f09a  4      
  movl %eax, %eax                #  30    0x7f09e  2      
  movl %r12d, 0xc(%r15,%rax,1)   #  31    0x7f0a0  5      
  nop                            #  32    0x7f0a5  1      
  xorl %edi, %edi                #  33    0x7f0a6  2      
  leal 0x14(%r13,%rcx,4), %r13d  #  34    0x7f0a8  5      
  leal 0x14(%rbx,%r9,4), %ebx    #  35    0x7f0ad  5      
  leal 0x14(%rax), %ecx          #  36    0x7f0b2  3      
  xchgw %ax, %ax                 #  37    0x7f0b5  3      
  nop                            #  38    0x7f0b8  1      
.L_7f0e0:                        #        0x7f0b9  0      
  movl %edx, %edx                #  39    0x7f0b9  2      
  movl (%r15,%rdx,1), %r8d       #  40    0x7f0bb  4      
  movl %esi, %esi                #  41    0x7f0bf  2      
  movl (%r15,%rsi,1), %r11d      #  42    0x7f0c1  4      
  addl $0x4, %esi                #  43    0x7f0c5  3      
  addl $0x4, %edx                #  44    0x7f0c8  3      
  movzwl %r8w, %r10d             #  45    0x7f0cb  4      
  movzwl %r11w, %r12d            #  46    0x7f0cf  4      
  shrl $0x10, %r8d               #  47    0x7f0d3  4      
  xchgw %ax, %ax                 #  48    0x7f0d7  3      
  subl %r12d, %r10d              #  49    0x7f0da  3      
  shrl $0x10, %r11d              #  50    0x7f0dd  4      
  addl %edi, %r10d               #  51    0x7f0e1  3      
  subl %r11d, %r8d               #  52    0x7f0e4  3      
  movl %r10d, %edi               #  53    0x7f0e7  3      
  andl $0xffff, %r10d            #  54    0x7f0ea  7      
  sarl $0x10, %edi               #  55    0x7f0f1  3      
  addl %edi, %r8d                #  56    0x7f0f4  3      
  movl %r8d, %edi                #  57    0x7f0f7  3      
  shll $0x10, %r8d               #  58    0x7f0fa  4      
  orl %r10d, %r8d                #  59    0x7f0fe  3      
  sarl $0x10, %edi               #  60    0x7f101  3      
  movl %ecx, %ecx                #  61    0x7f104  2      
  movl %r8d, (%r15,%rcx,1)       #  62    0x7f106  4      
  addl $0x4, %ecx                #  63    0x7f10a  3      
  cmpl %esi, %r13d               #  64    0x7f10d  3      
  ja .L_7f0e0                    #  65    0x7f110  6      
  cmpl %ebx, %edx                #  66    0x7f116  2      
  jae .L_7f1c0                   #  67    0x7f118  6      
.L_7f140:                        #        0x7f11e  0      
  movl %edx, %edx                #  68    0x7f11e  2      
  movl (%r15,%rdx,1), %esi       #  69    0x7f120  4      
  addl $0x4, %edx                #  70    0x7f124  3      
  movzwl %si, %r8d               #  71    0x7f127  4      
  shrl $0x10, %esi               #  72    0x7f12b  3      
  leal (%rdi,%r8,1), %r8d        #  73    0x7f12e  4      
  movl %r8d, %edi                #  74    0x7f132  3      
  andl $0xffff, %r8d             #  75    0x7f135  7      
  xchgw %ax, %ax                 #  76    0x7f13c  3      
  sarl $0x10, %edi               #  77    0x7f13f  3      
  leal (%rdi,%rsi,1), %esi       #  78    0x7f142  3      
  movl %esi, %edi                #  79    0x7f145  2      
  shll $0x10, %esi               #  80    0x7f147  3      
  orl %r8d, %esi                 #  81    0x7f14a  3      
  sarl $0x10, %edi               #  82    0x7f14d  3      
  movl %ecx, %ecx                #  83    0x7f150  2      
  movl %esi, (%r15,%rcx,1)       #  84    0x7f152  4      
  addl $0x4, %ecx                #  85    0x7f156  3      
  cmpl %edx, %ebx                #  86    0x7f159  2      
  nop                            #  87    0x7f15b  1      
  ja .L_7f140                    #  88    0x7f15c  6      
  subl $0x4, %ecx                #  89    0x7f162  3      
  movl %ecx, %ecx                #  90    0x7f165  2      
  movl (%r15,%rcx,1), %ebx       #  91    0x7f167  4      
  testl %ebx, %ebx               #  92    0x7f16b  2      
  jne .L_7f1e0                   #  93    0x7f16d  6      
  xchgw %ax, %ax                 #  94    0x7f173  3      
  nop                            #  95    0x7f176  1      
.L_7f1a0:                        #        0x7f177  0      
  subl $0x1, %r9d                #  96    0x7f177  4      
  nop                            #  97    0x7f17b  1      
  nop                            #  98    0x7f17c  1      
.L_7f1c0:                        #        0x7f17d  0      
  subl $0x4, %ecx                #  99    0x7f17d  3      
  movl %ecx, %ecx                #  100   0x7f180  2      
  movl (%r15,%rcx,1), %ebx       #  101   0x7f182  4      
  testl %ebx, %ebx               #  102   0x7f186  2      
  je .L_7f1a0                    #  103   0x7f188  6      
  nop                            #  104   0x7f18e  1      
  nop                            #  105   0x7f18f  1      
.L_7f1e0:                        #        0x7f190  0      
  movl %eax, %eax                #  106   0x7f190  2      
  movl %r9d, 0x10(%r15,%rax,1)   #  107   0x7f192  5      
  popq %rbx                      #  108   0x7f197  2      
  popq %r12                      #  109   0x7f199  3      
  popq %r13                      #  110   0x7f19c  3      
  popq %r11                      #  111   0x7f19f  3      
  andl $0xffffffe0, %r11d        #  112   0x7f1a2  7      
  addq %r15, %r11                #  113   0x7f1a9  3      
  jmpq %r11                      #  114   0x7f1ac  3      
  nop                            #  115   0x7f1af  1      
.L_7f200:                        #        0x7f1b0  0      
  leal 0x10(,%rdx,4), %edx       #  116   0x7f1b0  7      
  leal 0x14(%rbx), %esi          #  117   0x7f1b7  3      
  leal 0x4(%rdx,%rbx,1), %eax    #  118   0x7f1ba  4      
  leal 0x4(%rdx,%r13,1), %edx    #  119   0x7f1be  5      
  nop                            #  120   0x7f1c3  1      
.L_7f220:                        #        0x7f1c4  0      
  subl $0x4, %edx                #  121   0x7f1c4  3      
  subl $0x4, %eax                #  122   0x7f1c7  3      
  movl %edx, %edx                #  123   0x7f1ca  2      
  movl (%r15,%rdx,1), %ecx       #  124   0x7f1cc  4      
  movl %eax, %eax                #  125   0x7f1d0  2      
  cmpl %ecx, (%r15,%rax,1)       #  126   0x7f1d2  4      
  jne .L_7f280                   #  127   0x7f1d6  6      
  cmpl %eax, %esi                #  128   0x7f1dc  2      
  jb .L_7f220                    #  129   0x7f1de  6      
  xorl %esi, %esi                #  130   0x7f1e4  2      
  nop                            #  131   0x7f1e6  1      
  callq ._Balloc                 #  132   0x7f1e7  5      
  movl %eax, %eax                #  133   0x7f1ec  2      
  movl %eax, %eax                #  134   0x7f1ee  2      
  movl $0x1, 0x10(%r15,%rax,1)   #  135   0x7f1f0  9      
  movl %eax, %eax                #  136   0x7f1f9  2      
  movl $0x0, 0x14(%r15,%rax,1)   #  137   0x7f1fb  9      
  popq %rbx                      #  138   0x7f204  2      
  popq %r12                      #  139   0x7f206  3      
  popq %r13                      #  140   0x7f209  3      
  popq %r11                      #  141   0x7f20c  3      
  nop                            #  142   0x7f20f  1      
  andl $0xffffffe0, %r11d        #  143   0x7f210  7      
  addq %r15, %r11                #  144   0x7f217  3      
  jmpq %r11                      #  145   0x7f21a  3      
  nop                            #  146   0x7f21d  1      
  nop                            #  147   0x7f21e  1      
.L_7f280:                        #        0x7f21f  0      
  jae .L_7f080                   #  148   0x7f21f  6      
  nop                            #  149   0x7f225  1      
  nop                            #  150   0x7f226  1      
.L_7f2a0:                        #        0x7f227  0      
  movq %rbx, %rax                #  151   0x7f227  3      
  movl $0x1, %r12d               #  152   0x7f22a  6      
  movq %r13, %rbx                #  153   0x7f230  3      
  movq %rax, %r13                #  154   0x7f233  3      
  jmpq .L_7f080                  #  155   0x7f236  5      
  nop                            #  156   0x7f23b  1      
                                                          
.size __mdiff, .-__mdiff

