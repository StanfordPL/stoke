  .text
  .globl __mdiff
  .type __mdiff, @function

#! file-offset 0x7f060
#! rip-offset  0x7f060
#! capacity    640 bytes

# Text                           #  Line  RIP      Bytes  
.__mdiff:                        #        0x7f060  0      
  pushq %r13                     #  1     0x7f060  3      
  movl %edx, %r13d               #  2     0x7f063  3      
  movl %edi, %edi                #  3     0x7f066  2      
  pushq %r12                     #  4     0x7f068  3      
  pushq %rbx                     #  5     0x7f06b  2      
  movl %esi, %ebx                #  6     0x7f06d  2      
  movl %r13d, %r13d              #  7     0x7f06f  3      
  movl 0x10(%r15,%r13,1), %edx   #  8     0x7f072  5      
  movl %ebx, %ebx                #  9     0x7f077  2      
  movl 0x10(%r15,%rbx,1), %r12d  #  10    0x7f079  5      
  subl %edx, %r12d               #  11    0x7f07e  3      
  xchgw %ax, %ax                 #  12    0x7f081  3      
  cmpl $0x0, %r12d               #  13    0x7f084  4      
  je .L_7f220                    #  14    0x7f088  6      
  jl .L_7f2c0                    #  15    0x7f08e  6      
  xorl %r12d, %r12d              #  16    0x7f094  3      
  nop                            #  17    0x7f097  1      
.L_7f0a0:                        #        0x7f098  0      
  movl %ebx, %ebx                #  18    0x7f098  2      
  movl 0x4(%r15,%rbx,1), %esi    #  19    0x7f09a  5      
  nop                            #  20    0x7f09f  1      
  nop                            #  21    0x7f0a0  1      
  callq ._Balloc                 #  22    0x7f0a1  5      
  movl %r13d, %r13d              #  23    0x7f0a6  3      
  movl 0x10(%r15,%r13,1), %ecx   #  24    0x7f0a9  5      
  movl %ebx, %ebx                #  25    0x7f0ae  2      
  movl 0x10(%r15,%rbx,1), %r9d   #  26    0x7f0b0  5      
  movl %eax, %eax                #  27    0x7f0b5  2      
  leal 0x14(%rbx), %edx          #  28    0x7f0b7  3      
  leal 0x14(%r13), %esi          #  29    0x7f0ba  4      
  movl %eax, %eax                #  30    0x7f0be  2      
  movl %r12d, 0xc(%r15,%rax,1)   #  31    0x7f0c0  5      
  nop                            #  32    0x7f0c5  1      
  xorl %edi, %edi                #  33    0x7f0c6  2      
  leal 0x14(%r13,%rcx,4), %r13d  #  34    0x7f0c8  5      
  leal 0x14(%rbx,%r9,4), %ebx    #  35    0x7f0cd  5      
  leal 0x14(%rax), %ecx          #  36    0x7f0d2  3      
  xchgw %ax, %ax                 #  37    0x7f0d5  3      
  nop                            #  38    0x7f0d8  1      
.L_7f100:                        #        0x7f0d9  0      
  movl %edx, %edx                #  39    0x7f0d9  2      
  movl (%r15,%rdx,1), %r8d       #  40    0x7f0db  4      
  movl %esi, %esi                #  41    0x7f0df  2      
  movl (%r15,%rsi,1), %r11d      #  42    0x7f0e1  4      
  addl $0x4, %esi                #  43    0x7f0e5  3      
  addl $0x4, %edx                #  44    0x7f0e8  3      
  movzwl %r8w, %r10d             #  45    0x7f0eb  4      
  movzwl %r11w, %r12d            #  46    0x7f0ef  4      
  shrl $0x10, %r8d               #  47    0x7f0f3  4      
  xchgw %ax, %ax                 #  48    0x7f0f7  3      
  subl %r12d, %r10d              #  49    0x7f0fa  3      
  shrl $0x10, %r11d              #  50    0x7f0fd  4      
  addl %edi, %r10d               #  51    0x7f101  3      
  subl %r11d, %r8d               #  52    0x7f104  3      
  movl %r10d, %edi               #  53    0x7f107  3      
  andl $0xffff, %r10d            #  54    0x7f10a  7      
  sarl $0x10, %edi               #  55    0x7f111  3      
  addl %edi, %r8d                #  56    0x7f114  3      
  movl %r8d, %edi                #  57    0x7f117  3      
  shll $0x10, %r8d               #  58    0x7f11a  4      
  orl %r10d, %r8d                #  59    0x7f11e  3      
  sarl $0x10, %edi               #  60    0x7f121  3      
  movl %ecx, %ecx                #  61    0x7f124  2      
  movl %r8d, (%r15,%rcx,1)       #  62    0x7f126  4      
  addl $0x4, %ecx                #  63    0x7f12a  3      
  cmpl %esi, %r13d               #  64    0x7f12d  3      
  ja .L_7f100                    #  65    0x7f130  6      
  cmpl %ebx, %edx                #  66    0x7f136  2      
  jae .L_7f1e0                   #  67    0x7f138  6      
.L_7f160:                        #        0x7f13e  0      
  movl %edx, %edx                #  68    0x7f13e  2      
  movl (%r15,%rdx,1), %esi       #  69    0x7f140  4      
  addl $0x4, %edx                #  70    0x7f144  3      
  movzwl %si, %r8d               #  71    0x7f147  4      
  shrl $0x10, %esi               #  72    0x7f14b  3      
  leal (%rdi,%r8,1), %r8d        #  73    0x7f14e  4      
  movl %r8d, %edi                #  74    0x7f152  3      
  andl $0xffff, %r8d             #  75    0x7f155  7      
  xchgw %ax, %ax                 #  76    0x7f15c  3      
  sarl $0x10, %edi               #  77    0x7f15f  3      
  leal (%rdi,%rsi,1), %esi       #  78    0x7f162  3      
  movl %esi, %edi                #  79    0x7f165  2      
  shll $0x10, %esi               #  80    0x7f167  3      
  orl %r8d, %esi                 #  81    0x7f16a  3      
  sarl $0x10, %edi               #  82    0x7f16d  3      
  movl %ecx, %ecx                #  83    0x7f170  2      
  movl %esi, (%r15,%rcx,1)       #  84    0x7f172  4      
  addl $0x4, %ecx                #  85    0x7f176  3      
  cmpl %edx, %ebx                #  86    0x7f179  2      
  nop                            #  87    0x7f17b  1      
  ja .L_7f160                    #  88    0x7f17c  6      
  subl $0x4, %ecx                #  89    0x7f182  3      
  movl %ecx, %ecx                #  90    0x7f185  2      
  movl (%r15,%rcx,1), %ebx       #  91    0x7f187  4      
  testl %ebx, %ebx               #  92    0x7f18b  2      
  jne .L_7f200                   #  93    0x7f18d  6      
  xchgw %ax, %ax                 #  94    0x7f193  3      
  nop                            #  95    0x7f196  1      
.L_7f1c0:                        #        0x7f197  0      
  subl $0x1, %r9d                #  96    0x7f197  4      
  nop                            #  97    0x7f19b  1      
  nop                            #  98    0x7f19c  1      
.L_7f1e0:                        #        0x7f19d  0      
  subl $0x4, %ecx                #  99    0x7f19d  3      
  movl %ecx, %ecx                #  100   0x7f1a0  2      
  movl (%r15,%rcx,1), %ebx       #  101   0x7f1a2  4      
  testl %ebx, %ebx               #  102   0x7f1a6  2      
  je .L_7f1c0                    #  103   0x7f1a8  6      
  nop                            #  104   0x7f1ae  1      
  nop                            #  105   0x7f1af  1      
.L_7f200:                        #        0x7f1b0  0      
  movl %eax, %eax                #  106   0x7f1b0  2      
  movl %r9d, 0x10(%r15,%rax,1)   #  107   0x7f1b2  5      
  popq %rbx                      #  108   0x7f1b7  2      
  popq %r12                      #  109   0x7f1b9  3      
  popq %r13                      #  110   0x7f1bc  3      
  popq %r11                      #  111   0x7f1bf  3      
  andl $0xffffffe0, %r11d        #  112   0x7f1c2  7      
  addq %r15, %r11                #  113   0x7f1c9  3      
  jmpq %r11                      #  114   0x7f1cc  3      
  nop                            #  115   0x7f1cf  1      
.L_7f220:                        #        0x7f1d0  0      
  leal 0x10(,%rdx,4), %edx       #  116   0x7f1d0  7      
  leal 0x14(%rbx), %esi          #  117   0x7f1d7  3      
  leal 0x4(%rdx,%rbx,1), %eax    #  118   0x7f1da  4      
  leal 0x4(%rdx,%r13,1), %edx    #  119   0x7f1de  5      
  nop                            #  120   0x7f1e3  1      
.L_7f240:                        #        0x7f1e4  0      
  subl $0x4, %edx                #  121   0x7f1e4  3      
  subl $0x4, %eax                #  122   0x7f1e7  3      
  movl %edx, %edx                #  123   0x7f1ea  2      
  movl (%r15,%rdx,1), %ecx       #  124   0x7f1ec  4      
  movl %eax, %eax                #  125   0x7f1f0  2      
  cmpl %ecx, (%r15,%rax,1)       #  126   0x7f1f2  4      
  jne .L_7f2a0                   #  127   0x7f1f6  6      
  cmpl %eax, %esi                #  128   0x7f1fc  2      
  jb .L_7f240                    #  129   0x7f1fe  6      
  xorl %esi, %esi                #  130   0x7f204  2      
  nop                            #  131   0x7f206  1      
  callq ._Balloc                 #  132   0x7f207  5      
  movl %eax, %eax                #  133   0x7f20c  2      
  movl %eax, %eax                #  134   0x7f20e  2      
  movl $0x1, 0x10(%r15,%rax,1)   #  135   0x7f210  9      
  movl %eax, %eax                #  136   0x7f219  2      
  movl $0x0, 0x14(%r15,%rax,1)   #  137   0x7f21b  9      
  popq %rbx                      #  138   0x7f224  2      
  popq %r12                      #  139   0x7f226  3      
  popq %r13                      #  140   0x7f229  3      
  popq %r11                      #  141   0x7f22c  3      
  nop                            #  142   0x7f22f  1      
  andl $0xffffffe0, %r11d        #  143   0x7f230  7      
  addq %r15, %r11                #  144   0x7f237  3      
  jmpq %r11                      #  145   0x7f23a  3      
  nop                            #  146   0x7f23d  1      
  nop                            #  147   0x7f23e  1      
.L_7f2a0:                        #        0x7f23f  0      
  jae .L_7f0a0                   #  148   0x7f23f  6      
  nop                            #  149   0x7f245  1      
  nop                            #  150   0x7f246  1      
.L_7f2c0:                        #        0x7f247  0      
  movq %rbx, %rax                #  151   0x7f247  3      
  movl $0x1, %r12d               #  152   0x7f24a  6      
  movq %r13, %rbx                #  153   0x7f250  3      
  movq %rax, %r13                #  154   0x7f253  3      
  jmpq .L_7f0a0                  #  155   0x7f256  5      
  nop                            #  156   0x7f25b  1      
                                                          
.size __mdiff, .-__mdiff

