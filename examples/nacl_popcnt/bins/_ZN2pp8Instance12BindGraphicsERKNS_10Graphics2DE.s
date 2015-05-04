  .text
  .globl _ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE
  .type _ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE, @function

#! file-offset 0x22860
#! rip-offset  0x22860
#! capacity    672 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE:  #        0x22860  0      
  pushq %r12                                        #  1     0x22860  3      
  movl %edi, %r12d                                  #  2     0x22863  3      
  pushq %rbx                                        #  3     0x22866  2      
  movl %esi, %ebx                                   #  4     0x22868  2      
  subl $0x8, %esp                                   #  5     0x2286a  3      
  addq %r15, %rsp                                   #  6     0x2286d  3      
  cmpb $0x0, 0x1000e3d1(%rip)                       #  7     0x22870  7      
  je .L_228c0                                       #  8     0x22877  6      
  nop                                               #  9     0x2287d  1      
.L_22880:                                           #        0x2287e  0      
  movl 0x1000e3cc(%rip), %edx                       #  10    0x2287e  6      
  xorl %eax, %eax                                   #  11    0x22884  2      
  testq %rdx, %rdx                                  #  12    0x22886  3      
  jne .L_22960                                      #  13    0x22889  6      
  nop                                               #  14    0x2288f  1      
.L_228a0:                                           #        0x22890  0      
  addl $0x8, %esp                                   #  15    0x22890  3      
  addq %r15, %rsp                                   #  16    0x22893  3      
  popq %rbx                                         #  17    0x22896  2      
  popq %r12                                         #  18    0x22898  3      
  popq %r11                                         #  19    0x2289b  3      
  andl $0xffffffe0, %r11d                           #  20    0x2289e  7      
  addq %r15, %r11                                   #  21    0x228a5  3      
  jmpq %r11                                         #  22    0x228a8  3      
  nop                                               #  23    0x228ab  1      
.L_228c0:                                           #        0x228ac  0      
  movl $0x10030c48, %edi                            #  24    0x228ac  5      
  nop                                               #  25    0x228b1  1      
  nop                                               #  26    0x228b2  1      
  callq .__cxa_guard_acquire                        #  27    0x228b3  5      
  testl %eax, %eax                                  #  28    0x228b8  2      
  je .L_22880                                       #  29    0x228ba  6      
  nop                                               #  30    0x228c0  1      
  nop                                               #  31    0x228c1  1      
  callq ._ZN2pp6Module3GetEv                        #  32    0x228c2  5      
  movl %eax, %edi                                   #  33    0x228c7  2      
  movl $0x100202ed, %esi                            #  34    0x228c9  5      
  nop                                               #  35    0x228ce  1      
  nop                                               #  36    0x228cf  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  37    0x228d0  5      
  movl $0x10030c48, %edi                            #  38    0x228d5  5      
  movl %eax, 0x1000e370(%rip)                       #  39    0x228da  6      
  nop                                               #  40    0x228e0  1      
  nop                                               #  41    0x228e1  1      
  callq .__cxa_guard_release                        #  42    0x228e2  5      
  movl 0x1000e363(%rip), %edx                       #  43    0x228e7  6      
  xorl %eax, %eax                                   #  44    0x228ed  2      
  testq %rdx, %rdx                                  #  45    0x228ef  3      
  je .L_228a0                                       #  46    0x228f2  6      
  nop                                               #  47    0x228f8  1      
.L_22960:                                           #        0x228f9  0      
  cmpb $0x0, 0x1000e348(%rip)                       #  48    0x228f9  7      
  je .L_229c0                                       #  49    0x22900  6      
  nop                                               #  50    0x22906  1      
  nop                                               #  51    0x22907  1      
.L_22980:                                           #        0x22908  0      
  movl %edx, %edx                                   #  52    0x22908  2      
  movl (%r15,%rdx,1), %eax                          #  53    0x2290a  4      
  movl %ebx, %ebx                                   #  54    0x2290e  2      
  movl 0x4(%r15,%rbx,1), %esi                       #  55    0x22910  5      
  movl %r12d, %r12d                                 #  56    0x22915  3      
  movl 0x4(%r15,%r12,1), %edi                       #  57    0x22918  5      
  nop                                               #  58    0x2291d  1      
  andl $0xffffffe0, %eax                            #  59    0x2291e  5      
  addq %r15, %rax                                   #  60    0x22923  3      
  callq %rax                                        #  61    0x22926  2      
  testl %eax, %eax                                  #  62    0x22928  2      
  setne %al                                         #  63    0x2292a  3      
  addl $0x8, %esp                                   #  64    0x2292d  3      
  addq %r15, %rsp                                   #  65    0x22930  3      
  popq %rbx                                         #  66    0x22933  2      
  popq %r12                                         #  67    0x22935  3      
  popq %r11                                         #  68    0x22938  3      
  andl $0xffffffe0, %r11d                           #  69    0x2293b  7      
  addq %r15, %r11                                   #  70    0x22942  3      
  jmpq %r11                                         #  71    0x22945  3      
  nop                                               #  72    0x22948  1      
.L_229c0:                                           #        0x22949  0      
  movl $0x10030c48, %edi                            #  73    0x22949  5      
  nop                                               #  74    0x2294e  1      
  nop                                               #  75    0x2294f  1      
  callq .__cxa_guard_acquire                        #  76    0x22950  5      
  testl %eax, %eax                                  #  77    0x22955  2      
  jne .L_22a20                                      #  78    0x22957  6      
  nop                                               #  79    0x2295d  1      
  nop                                               #  80    0x2295e  1      
.L_22a00:                                           #        0x2295f  0      
  movl 0x1000e2eb(%rip), %edx                       #  81    0x2295f  6      
  jmpq .L_22980                                     #  82    0x22965  5      
  nop                                               #  83    0x2296a  1      
  nop                                               #  84    0x2296b  1      
.L_22a20:                                           #        0x2296c  0      
  nop                                               #  85    0x2296c  1      
  nop                                               #  86    0x2296d  1      
  callq ._ZN2pp6Module3GetEv                        #  87    0x2296e  5      
  movl %eax, %edi                                   #  88    0x22973  2      
  movl $0x100202ed, %esi                            #  89    0x22975  5      
  nop                                               #  90    0x2297a  1      
  nop                                               #  91    0x2297b  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  92    0x2297c  5      
  movl $0x10030c48, %edi                            #  93    0x22981  5      
  movl %eax, 0x1000e2c4(%rip)                       #  94    0x22986  6      
  nop                                               #  95    0x2298c  1      
  nop                                               #  96    0x2298d  1      
  callq .__cxa_guard_release                        #  97    0x2298e  5      
  jmpq .L_22a00                                     #  98    0x22993  5      
  nop                                               #  99    0x22998  1      
  nop                                               #  100   0x22999  1      
.L_22aa0:                                           #        0x2299a  0      
  movl %eax, %ebx                                   #  101   0x2299a  2      
  movl $0x10030c48, %edi                            #  102   0x2299c  5      
  nop                                               #  103   0x229a1  1      
  nop                                               #  104   0x229a2  1      
  callq .__cxa_guard_abort                          #  105   0x229a3  5      
  movl %ebx, %edi                                   #  106   0x229a8  2      
  nop                                               #  107   0x229aa  1      
  nop                                               #  108   0x229ab  1      
  callq ._Unwind_Resume                             #  109   0x229ac  5      
  jmpq .L_22aa0                                     #  110   0x229b1  5      
  nop                                               #  111   0x229b6  1      
  nop                                               #  112   0x229b7  1      
                                                                             
.size _ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE, .-_ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE

