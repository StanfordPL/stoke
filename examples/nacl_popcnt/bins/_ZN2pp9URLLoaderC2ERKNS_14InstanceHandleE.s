  .text
  .globl _ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE
  .type _ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE, @function

#! file-offset 0x28220
#! rip-offset  0x28220
#! capacity    800 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE:         #        0x28220  0      
  pushq %r12                                        #  1     0x28220  3      
  movl %esi, %r12d                                  #  2     0x28223  3      
  pushq %rbx                                        #  3     0x28226  2      
  movl %edi, %ebx                                   #  4     0x28228  2      
  movl %ebx, %edi                                   #  5     0x2822a  2      
  subl $0x8, %esp                                   #  6     0x2822c  3      
  addq %r15, %rsp                                   #  7     0x2822f  3      
  nop                                               #  8     0x28232  1      
  callq ._ZN2pp8ResourceC2Ev                        #  9     0x28233  5      
  movl %ebx, %ebx                                   #  10    0x28238  2      
  movl $0x100203f8, (%r15,%rbx,1)                   #  11    0x2823a  8      
  cmpb $0x0, 0x10008a17(%rip)                       #  12    0x28242  7      
  je .L_282a0                                       #  13    0x28249  6      
  nop                                               #  14    0x2824f  1      
.L_28260:                                           #        0x28250  0      
  movl 0x10008a12(%rip), %eax                       #  15    0x28250  6      
  testq %rax, %rax                                  #  16    0x28256  3      
  jne .L_28340                                      #  17    0x28259  6      
  xchgw %ax, %ax                                    #  18    0x2825f  3      
  nop                                               #  19    0x28262  1      
.L_28280:                                           #        0x28263  0      
  addl $0x8, %esp                                   #  20    0x28263  3      
  addq %r15, %rsp                                   #  21    0x28266  3      
  popq %rbx                                         #  22    0x28269  2      
  popq %r12                                         #  23    0x2826b  3      
  popq %r11                                         #  24    0x2826e  3      
  andl $0xffffffe0, %r11d                           #  25    0x28271  7      
  addq %r15, %r11                                   #  26    0x28278  3      
  jmpq %r11                                         #  27    0x2827b  3      
  nop                                               #  28    0x2827e  1      
.L_282a0:                                           #        0x2827f  0      
  movl $0x10030c60, %edi                            #  29    0x2827f  5      
  nop                                               #  30    0x28284  1      
  nop                                               #  31    0x28285  1      
  callq .__cxa_guard_acquire                        #  32    0x28286  5      
  testl %eax, %eax                                  #  33    0x2828b  2      
  je .L_28260                                       #  34    0x2828d  6      
  nop                                               #  35    0x28293  1      
  nop                                               #  36    0x28294  1      
  callq ._ZN2pp6Module3GetEv                        #  37    0x28295  5      
  movl %eax, %edi                                   #  38    0x2829a  2      
  movl $0x10020478, %esi                            #  39    0x2829c  5      
  nop                                               #  40    0x282a1  1      
  nop                                               #  41    0x282a2  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  42    0x282a3  5      
  movl $0x10030c60, %edi                            #  43    0x282a8  5      
  movl %eax, 0x100089b5(%rip)                       #  44    0x282ad  6      
  nop                                               #  45    0x282b3  1      
  nop                                               #  46    0x282b4  1      
  callq .__cxa_guard_release                        #  47    0x282b5  5      
  movl 0x100089a8(%rip), %eax                       #  48    0x282ba  6      
  testq %rax, %rax                                  #  49    0x282c0  3      
  je .L_28280                                       #  50    0x282c3  6      
  xchgw %ax, %ax                                    #  51    0x282c9  3      
  nop                                               #  52    0x282cc  1      
.L_28340:                                           #        0x282cd  0      
  cmpb $0x0, 0x1000898c(%rip)                       #  53    0x282cd  7      
  je .L_283c0                                       #  54    0x282d4  6      
  nop                                               #  55    0x282da  1      
  nop                                               #  56    0x282db  1      
.L_28360:                                           #        0x282dc  0      
  movl %eax, %eax                                   #  57    0x282dc  2      
  movl (%r15,%rax,1), %eax                          #  58    0x282de  4      
  movl %r12d, %r12d                                 #  59    0x282e2  3      
  movl (%r15,%r12,1), %edi                          #  60    0x282e5  4      
  nop                                               #  61    0x282e9  1      
  andl $0xffffffe0, %eax                            #  62    0x282ea  5      
  addq %r15, %rax                                   #  63    0x282ef  3      
  callq %rax                                        #  64    0x282f2  2      
  movl %eax, %esi                                   #  65    0x282f4  2      
  movl %ebx, %edi                                   #  66    0x282f6  2      
  nop                                               #  67    0x282f8  1      
  nop                                               #  68    0x282f9  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi  #  69    0x282fa  5      
  addl $0x8, %esp                                   #  70    0x282ff  3      
  addq %r15, %rsp                                   #  71    0x28302  3      
  popq %rbx                                         #  72    0x28305  2      
  popq %r12                                         #  73    0x28307  3      
  popq %r11                                         #  74    0x2830a  3      
  andl $0xffffffe0, %r11d                           #  75    0x2830d  7      
  addq %r15, %r11                                   #  76    0x28314  3      
  jmpq %r11                                         #  77    0x28317  3      
  nop                                               #  78    0x2831a  1      
.L_283c0:                                           #        0x2831b  0      
  movl $0x10030c60, %edi                            #  79    0x2831b  5      
  nop                                               #  80    0x28320  1      
  nop                                               #  81    0x28321  1      
  callq .__cxa_guard_acquire                        #  82    0x28322  5      
  testl %eax, %eax                                  #  83    0x28327  2      
  jne .L_28420                                      #  84    0x28329  6      
  nop                                               #  85    0x2832f  1      
  nop                                               #  86    0x28330  1      
.L_28400:                                           #        0x28331  0      
  movl 0x10008931(%rip), %eax                       #  87    0x28331  6      
  jmpq .L_28360                                     #  88    0x28337  5      
  nop                                               #  89    0x2833c  1      
  nop                                               #  90    0x2833d  1      
.L_28420:                                           #        0x2833e  0      
  nop                                               #  91    0x2833e  1      
  nop                                               #  92    0x2833f  1      
  callq ._ZN2pp6Module3GetEv                        #  93    0x28340  5      
  movl %eax, %edi                                   #  94    0x28345  2      
  movl $0x10020478, %esi                            #  95    0x28347  5      
  nop                                               #  96    0x2834c  1      
  nop                                               #  97    0x2834d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  98    0x2834e  5      
  movl $0x10030c60, %edi                            #  99    0x28353  5      
  movl %eax, 0x1000890a(%rip)                       #  100   0x28358  6      
  nop                                               #  101   0x2835e  1      
  nop                                               #  102   0x2835f  1      
  callq .__cxa_guard_release                        #  103   0x28360  5      
  jmpq .L_28400                                     #  104   0x28365  5      
  nop                                               #  105   0x2836a  1      
  nop                                               #  106   0x2836b  1      
.L_284a0:                                           #        0x2836c  0      
  movl $0x10030c60, %edi                            #  107   0x2836c  5      
  movl %eax, %r12d                                  #  108   0x28371  3      
  nop                                               #  109   0x28374  1      
  nop                                               #  110   0x28375  1      
  callq .__cxa_guard_abort                          #  111   0x28376  5      
.L_284c0:                                           #        0x2837b  0      
  movl %ebx, %edi                                   #  112   0x2837b  2      
  nop                                               #  113   0x2837d  1      
  nop                                               #  114   0x2837e  1      
  callq ._ZN2pp8ResourceD2Ev                        #  115   0x2837f  5      
  movl %r12d, %edi                                  #  116   0x28384  3      
  nop                                               #  117   0x28387  1      
  nop                                               #  118   0x28388  1      
  callq ._Unwind_Resume                             #  119   0x28389  5      
  movl %eax, %r12d                                  #  120   0x2838e  3      
  jmpq .L_284c0                                     #  121   0x28391  5      
  nop                                               #  122   0x28396  1      
  nop                                               #  123   0x28397  1      
  jmpq .L_284a0                                     #  124   0x28398  5      
  nop                                               #  125   0x2839d  1      
  nop                                               #  126   0x2839e  1      
  nop                                               #  127   0x2839f  1      
                                                                             
.size _ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE, .-_ZN2pp9URLLoaderC2ERKNS_14InstanceHandleE

