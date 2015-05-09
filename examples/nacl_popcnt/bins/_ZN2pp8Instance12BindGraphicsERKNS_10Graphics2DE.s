  .text
  .globl _ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE
  .type _ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE, @function

#! file-offset 0x227c0
#! rip-offset  0x227c0
#! capacity    672 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE:  #        0x227c0  0      
  pushq %r12                                        #  1     0x227c0  3      
  movl %edi, %r12d                                  #  2     0x227c3  3      
  pushq %rbx                                        #  3     0x227c6  2      
  movl %esi, %ebx                                   #  4     0x227c8  2      
  subl $0x8, %esp                                   #  5     0x227ca  3      
  addq %r15, %rsp                                   #  6     0x227cd  3      
  cmpb $0x0, 0x1000e471(%rip)                       #  7     0x227d0  7      
  je .L_22820                                       #  8     0x227d7  6      
  nop                                               #  9     0x227dd  1      
.L_227e0:                                           #        0x227de  0      
  movl 0x1000e46c(%rip), %edx                       #  10    0x227de  6      
  xorl %eax, %eax                                   #  11    0x227e4  2      
  testq %rdx, %rdx                                  #  12    0x227e6  3      
  jne .L_228c0                                      #  13    0x227e9  6      
  nop                                               #  14    0x227ef  1      
.L_22800:                                           #        0x227f0  0      
  addl $0x8, %esp                                   #  15    0x227f0  3      
  addq %r15, %rsp                                   #  16    0x227f3  3      
  popq %rbx                                         #  17    0x227f6  2      
  popq %r12                                         #  18    0x227f8  3      
  popq %r11                                         #  19    0x227fb  3      
  andl $0xffffffe0, %r11d                           #  20    0x227fe  7      
  addq %r15, %r11                                   #  21    0x22805  3      
  jmpq %r11                                         #  22    0x22808  3      
  nop                                               #  23    0x2280b  1      
.L_22820:                                           #        0x2280c  0      
  movl $0x10030c48, %edi                            #  24    0x2280c  5      
  nop                                               #  25    0x22811  1      
  nop                                               #  26    0x22812  1      
  callq .__cxa_guard_acquire                        #  27    0x22813  5      
  testl %eax, %eax                                  #  28    0x22818  2      
  je .L_227e0                                       #  29    0x2281a  6      
  nop                                               #  30    0x22820  1      
  nop                                               #  31    0x22821  1      
  callq ._ZN2pp6Module3GetEv                        #  32    0x22822  5      
  movl %eax, %edi                                   #  33    0x22827  2      
  movl $0x100202ed, %esi                            #  34    0x22829  5      
  nop                                               #  35    0x2282e  1      
  nop                                               #  36    0x2282f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  37    0x22830  5      
  movl $0x10030c48, %edi                            #  38    0x22835  5      
  movl %eax, 0x1000e410(%rip)                       #  39    0x2283a  6      
  nop                                               #  40    0x22840  1      
  nop                                               #  41    0x22841  1      
  callq .__cxa_guard_release                        #  42    0x22842  5      
  movl 0x1000e403(%rip), %edx                       #  43    0x22847  6      
  xorl %eax, %eax                                   #  44    0x2284d  2      
  testq %rdx, %rdx                                  #  45    0x2284f  3      
  je .L_22800                                       #  46    0x22852  6      
  nop                                               #  47    0x22858  1      
.L_228c0:                                           #        0x22859  0      
  cmpb $0x0, 0x1000e3e8(%rip)                       #  48    0x22859  7      
  je .L_22920                                       #  49    0x22860  6      
  nop                                               #  50    0x22866  1      
  nop                                               #  51    0x22867  1      
.L_228e0:                                           #        0x22868  0      
  movl %edx, %edx                                   #  52    0x22868  2      
  movl (%r15,%rdx,1), %eax                          #  53    0x2286a  4      
  movl %ebx, %ebx                                   #  54    0x2286e  2      
  movl 0x4(%r15,%rbx,1), %esi                       #  55    0x22870  5      
  movl %r12d, %r12d                                 #  56    0x22875  3      
  movl 0x4(%r15,%r12,1), %edi                       #  57    0x22878  5      
  nop                                               #  58    0x2287d  1      
  andl $0xffffffe0, %eax                            #  59    0x2287e  5      
  addq %r15, %rax                                   #  60    0x22883  3      
  callq %rax                                        #  61    0x22886  2      
  testl %eax, %eax                                  #  62    0x22888  2      
  setne %al                                         #  63    0x2288a  3      
  addl $0x8, %esp                                   #  64    0x2288d  3      
  addq %r15, %rsp                                   #  65    0x22890  3      
  popq %rbx                                         #  66    0x22893  2      
  popq %r12                                         #  67    0x22895  3      
  popq %r11                                         #  68    0x22898  3      
  andl $0xffffffe0, %r11d                           #  69    0x2289b  7      
  addq %r15, %r11                                   #  70    0x228a2  3      
  jmpq %r11                                         #  71    0x228a5  3      
  nop                                               #  72    0x228a8  1      
.L_22920:                                           #        0x228a9  0      
  movl $0x10030c48, %edi                            #  73    0x228a9  5      
  nop                                               #  74    0x228ae  1      
  nop                                               #  75    0x228af  1      
  callq .__cxa_guard_acquire                        #  76    0x228b0  5      
  testl %eax, %eax                                  #  77    0x228b5  2      
  jne .L_22980                                      #  78    0x228b7  6      
  nop                                               #  79    0x228bd  1      
  nop                                               #  80    0x228be  1      
.L_22960:                                           #        0x228bf  0      
  movl 0x1000e38b(%rip), %edx                       #  81    0x228bf  6      
  jmpq .L_228e0                                     #  82    0x228c5  5      
  nop                                               #  83    0x228ca  1      
  nop                                               #  84    0x228cb  1      
.L_22980:                                           #        0x228cc  0      
  nop                                               #  85    0x228cc  1      
  nop                                               #  86    0x228cd  1      
  callq ._ZN2pp6Module3GetEv                        #  87    0x228ce  5      
  movl %eax, %edi                                   #  88    0x228d3  2      
  movl $0x100202ed, %esi                            #  89    0x228d5  5      
  nop                                               #  90    0x228da  1      
  nop                                               #  91    0x228db  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  92    0x228dc  5      
  movl $0x10030c48, %edi                            #  93    0x228e1  5      
  movl %eax, 0x1000e364(%rip)                       #  94    0x228e6  6      
  nop                                               #  95    0x228ec  1      
  nop                                               #  96    0x228ed  1      
  callq .__cxa_guard_release                        #  97    0x228ee  5      
  jmpq .L_22960                                     #  98    0x228f3  5      
  nop                                               #  99    0x228f8  1      
  nop                                               #  100   0x228f9  1      
.L_22a00:                                           #        0x228fa  0      
  movl %eax, %ebx                                   #  101   0x228fa  2      
  movl $0x10030c48, %edi                            #  102   0x228fc  5      
  nop                                               #  103   0x22901  1      
  nop                                               #  104   0x22902  1      
  callq .__cxa_guard_abort                          #  105   0x22903  5      
  movl %ebx, %edi                                   #  106   0x22908  2      
  nop                                               #  107   0x2290a  1      
  nop                                               #  108   0x2290b  1      
  callq ._Unwind_Resume                             #  109   0x2290c  5      
  jmpq .L_22a00                                     #  110   0x22911  5      
  nop                                               #  111   0x22916  1      
  nop                                               #  112   0x22917  1      
                                                                             
.size _ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE, .-_ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE

