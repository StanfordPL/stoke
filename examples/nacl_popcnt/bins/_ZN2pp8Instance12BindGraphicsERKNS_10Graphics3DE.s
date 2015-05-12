  .text
  .globl _ZN2pp8Instance12BindGraphicsERKNS_10Graphics3DE
  .type _ZN2pp8Instance12BindGraphicsERKNS_10Graphics3DE, @function

#! file-offset 0x22fc0
#! rip-offset  0x22fc0
#! capacity    672 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp8Instance12BindGraphicsERKNS_10Graphics3DE:  #        0x22fc0  0      
  pushq %r12                                        #  1     0x22fc0  3      
  movl %edi, %r12d                                  #  2     0x22fc3  3      
  pushq %rbx                                        #  3     0x22fc6  2      
  movl %esi, %ebx                                   #  4     0x22fc8  2      
  subl $0x8, %esp                                   #  5     0x22fca  3      
  addq %r15, %rsp                                   #  6     0x22fcd  3      
  cmpb $0x0, 0x1000dc71(%rip)                       #  7     0x22fd0  7      
  je .L_23020                                       #  8     0x22fd7  6      
  nop                                               #  9     0x22fdd  1      
.L_22fe0:                                           #        0x22fde  0      
  movl 0x1000dc6c(%rip), %edx                       #  10    0x22fde  6      
  xorl %eax, %eax                                   #  11    0x22fe4  2      
  testq %rdx, %rdx                                  #  12    0x22fe6  3      
  jne .L_230c0                                      #  13    0x22fe9  6      
  nop                                               #  14    0x22fef  1      
.L_23000:                                           #        0x22ff0  0      
  addl $0x8, %esp                                   #  15    0x22ff0  3      
  addq %r15, %rsp                                   #  16    0x22ff3  3      
  popq %rbx                                         #  17    0x22ff6  2      
  popq %r12                                         #  18    0x22ff8  3      
  popq %r11                                         #  19    0x22ffb  3      
  andl $0xffffffe0, %r11d                           #  20    0x22ffe  7      
  addq %r15, %r11                                   #  21    0x23005  3      
  jmpq %r11                                         #  22    0x23008  3      
  nop                                               #  23    0x2300b  1      
.L_23020:                                           #        0x2300c  0      
  movl $0x10030c48, %edi                            #  24    0x2300c  5      
  nop                                               #  25    0x23011  1      
  nop                                               #  26    0x23012  1      
  callq .__cxa_guard_acquire                        #  27    0x23013  5      
  testl %eax, %eax                                  #  28    0x23018  2      
  je .L_22fe0                                       #  29    0x2301a  6      
  nop                                               #  30    0x23020  1      
  nop                                               #  31    0x23021  1      
  callq ._ZN2pp6Module3GetEv                        #  32    0x23022  5      
  movl %eax, %edi                                   #  33    0x23027  2      
  movl $0x100202ed, %esi                            #  34    0x23029  5      
  nop                                               #  35    0x2302e  1      
  nop                                               #  36    0x2302f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  37    0x23030  5      
  movl $0x10030c48, %edi                            #  38    0x23035  5      
  movl %eax, 0x1000dc10(%rip)                       #  39    0x2303a  6      
  nop                                               #  40    0x23040  1      
  nop                                               #  41    0x23041  1      
  callq .__cxa_guard_release                        #  42    0x23042  5      
  movl 0x1000dc03(%rip), %edx                       #  43    0x23047  6      
  xorl %eax, %eax                                   #  44    0x2304d  2      
  testq %rdx, %rdx                                  #  45    0x2304f  3      
  je .L_23000                                       #  46    0x23052  6      
  nop                                               #  47    0x23058  1      
.L_230c0:                                           #        0x23059  0      
  cmpb $0x0, 0x1000dbe8(%rip)                       #  48    0x23059  7      
  je .L_23120                                       #  49    0x23060  6      
  nop                                               #  50    0x23066  1      
  nop                                               #  51    0x23067  1      
.L_230e0:                                           #        0x23068  0      
  movl %edx, %edx                                   #  52    0x23068  2      
  movl (%r15,%rdx,1), %eax                          #  53    0x2306a  4      
  movl %ebx, %ebx                                   #  54    0x2306e  2      
  movl 0x4(%r15,%rbx,1), %esi                       #  55    0x23070  5      
  movl %r12d, %r12d                                 #  56    0x23075  3      
  movl 0x4(%r15,%r12,1), %edi                       #  57    0x23078  5      
  nop                                               #  58    0x2307d  1      
  andl $0xffffffe0, %eax                            #  59    0x2307e  5      
  addq %r15, %rax                                   #  60    0x23083  3      
  callq %rax                                        #  61    0x23086  2      
  testl %eax, %eax                                  #  62    0x23088  2      
  setne %al                                         #  63    0x2308a  3      
  addl $0x8, %esp                                   #  64    0x2308d  3      
  addq %r15, %rsp                                   #  65    0x23090  3      
  popq %rbx                                         #  66    0x23093  2      
  popq %r12                                         #  67    0x23095  3      
  popq %r11                                         #  68    0x23098  3      
  andl $0xffffffe0, %r11d                           #  69    0x2309b  7      
  addq %r15, %r11                                   #  70    0x230a2  3      
  jmpq %r11                                         #  71    0x230a5  3      
  nop                                               #  72    0x230a8  1      
.L_23120:                                           #        0x230a9  0      
  movl $0x10030c48, %edi                            #  73    0x230a9  5      
  nop                                               #  74    0x230ae  1      
  nop                                               #  75    0x230af  1      
  callq .__cxa_guard_acquire                        #  76    0x230b0  5      
  testl %eax, %eax                                  #  77    0x230b5  2      
  jne .L_23180                                      #  78    0x230b7  6      
  nop                                               #  79    0x230bd  1      
  nop                                               #  80    0x230be  1      
.L_23160:                                           #        0x230bf  0      
  movl 0x1000db8b(%rip), %edx                       #  81    0x230bf  6      
  jmpq .L_230e0                                     #  82    0x230c5  5      
  nop                                               #  83    0x230ca  1      
  nop                                               #  84    0x230cb  1      
.L_23180:                                           #        0x230cc  0      
  nop                                               #  85    0x230cc  1      
  nop                                               #  86    0x230cd  1      
  callq ._ZN2pp6Module3GetEv                        #  87    0x230ce  5      
  movl %eax, %edi                                   #  88    0x230d3  2      
  movl $0x100202ed, %esi                            #  89    0x230d5  5      
  nop                                               #  90    0x230da  1      
  nop                                               #  91    0x230db  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  92    0x230dc  5      
  movl $0x10030c48, %edi                            #  93    0x230e1  5      
  movl %eax, 0x1000db64(%rip)                       #  94    0x230e6  6      
  nop                                               #  95    0x230ec  1      
  nop                                               #  96    0x230ed  1      
  callq .__cxa_guard_release                        #  97    0x230ee  5      
  jmpq .L_23160                                     #  98    0x230f3  5      
  nop                                               #  99    0x230f8  1      
  nop                                               #  100   0x230f9  1      
.L_23200:                                           #        0x230fa  0      
  movl %eax, %ebx                                   #  101   0x230fa  2      
  movl $0x10030c48, %edi                            #  102   0x230fc  5      
  nop                                               #  103   0x23101  1      
  nop                                               #  104   0x23102  1      
  callq .__cxa_guard_abort                          #  105   0x23103  5      
  movl %ebx, %edi                                   #  106   0x23108  2      
  nop                                               #  107   0x2310a  1      
  nop                                               #  108   0x2310b  1      
  callq ._Unwind_Resume                             #  109   0x2310c  5      
  jmpq .L_23200                                     #  110   0x23111  5      
  nop                                               #  111   0x23116  1      
  nop                                               #  112   0x23117  1      
                                                                             
.size _ZN2pp8Instance12BindGraphicsERKNS_10Graphics3DE, .-_ZN2pp8Instance12BindGraphicsERKNS_10Graphics3DE

