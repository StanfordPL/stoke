  .text
  .globl _ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE
  .type _ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE, @function

#! file-offset 0x227e0
#! rip-offset  0x227e0
#! capacity    672 bytes

# Text                                              #  Line  RIP      Bytes  
._ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE:  #        0x227e0  0      
  pushq %r12                                        #  1     0x227e0  3      
  movl %edi, %r12d                                  #  2     0x227e3  3      
  pushq %rbx                                        #  3     0x227e6  2      
  movl %esi, %ebx                                   #  4     0x227e8  2      
  subl $0x8, %esp                                   #  5     0x227ea  3      
  addq %r15, %rsp                                   #  6     0x227ed  3      
  cmpb $0x0, 0x1000e451(%rip)                       #  7     0x227f0  7      
  je .L_22840                                       #  8     0x227f7  6      
  nop                                               #  9     0x227fd  1      
.L_22800:                                           #        0x227fe  0      
  movl 0x1000e44c(%rip), %edx                       #  10    0x227fe  6      
  xorl %eax, %eax                                   #  11    0x22804  2      
  testq %rdx, %rdx                                  #  12    0x22806  3      
  jne .L_228e0                                      #  13    0x22809  6      
  nop                                               #  14    0x2280f  1      
.L_22820:                                           #        0x22810  0      
  addl $0x8, %esp                                   #  15    0x22810  3      
  addq %r15, %rsp                                   #  16    0x22813  3      
  popq %rbx                                         #  17    0x22816  2      
  popq %r12                                         #  18    0x22818  3      
  popq %r11                                         #  19    0x2281b  3      
  andl $0xffffffe0, %r11d                           #  20    0x2281e  7      
  addq %r15, %r11                                   #  21    0x22825  3      
  jmpq %r11                                         #  22    0x22828  3      
  nop                                               #  23    0x2282b  1      
.L_22840:                                           #        0x2282c  0      
  movl $0x10030c48, %edi                            #  24    0x2282c  5      
  nop                                               #  25    0x22831  1      
  nop                                               #  26    0x22832  1      
  callq .__cxa_guard_acquire                        #  27    0x22833  5      
  testl %eax, %eax                                  #  28    0x22838  2      
  je .L_22800                                       #  29    0x2283a  6      
  nop                                               #  30    0x22840  1      
  nop                                               #  31    0x22841  1      
  callq ._ZN2pp6Module3GetEv                        #  32    0x22842  5      
  movl %eax, %edi                                   #  33    0x22847  2      
  movl $0x100202ed, %esi                            #  34    0x22849  5      
  nop                                               #  35    0x2284e  1      
  nop                                               #  36    0x2284f  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  37    0x22850  5      
  movl $0x10030c48, %edi                            #  38    0x22855  5      
  movl %eax, 0x1000e3f0(%rip)                       #  39    0x2285a  6      
  nop                                               #  40    0x22860  1      
  nop                                               #  41    0x22861  1      
  callq .__cxa_guard_release                        #  42    0x22862  5      
  movl 0x1000e3e3(%rip), %edx                       #  43    0x22867  6      
  xorl %eax, %eax                                   #  44    0x2286d  2      
  testq %rdx, %rdx                                  #  45    0x2286f  3      
  je .L_22820                                       #  46    0x22872  6      
  nop                                               #  47    0x22878  1      
.L_228e0:                                           #        0x22879  0      
  cmpb $0x0, 0x1000e3c8(%rip)                       #  48    0x22879  7      
  je .L_22940                                       #  49    0x22880  6      
  nop                                               #  50    0x22886  1      
  nop                                               #  51    0x22887  1      
.L_22900:                                           #        0x22888  0      
  movl %edx, %edx                                   #  52    0x22888  2      
  movl (%r15,%rdx,1), %eax                          #  53    0x2288a  4      
  movl %ebx, %ebx                                   #  54    0x2288e  2      
  movl 0x4(%r15,%rbx,1), %esi                       #  55    0x22890  5      
  movl %r12d, %r12d                                 #  56    0x22895  3      
  movl 0x4(%r15,%r12,1), %edi                       #  57    0x22898  5      
  nop                                               #  58    0x2289d  1      
  andl $0xffffffe0, %eax                            #  59    0x2289e  5      
  addq %r15, %rax                                   #  60    0x228a3  3      
  callq %rax                                        #  61    0x228a6  2      
  testl %eax, %eax                                  #  62    0x228a8  2      
  setne %al                                         #  63    0x228aa  3      
  addl $0x8, %esp                                   #  64    0x228ad  3      
  addq %r15, %rsp                                   #  65    0x228b0  3      
  popq %rbx                                         #  66    0x228b3  2      
  popq %r12                                         #  67    0x228b5  3      
  popq %r11                                         #  68    0x228b8  3      
  andl $0xffffffe0, %r11d                           #  69    0x228bb  7      
  addq %r15, %r11                                   #  70    0x228c2  3      
  jmpq %r11                                         #  71    0x228c5  3      
  nop                                               #  72    0x228c8  1      
.L_22940:                                           #        0x228c9  0      
  movl $0x10030c48, %edi                            #  73    0x228c9  5      
  nop                                               #  74    0x228ce  1      
  nop                                               #  75    0x228cf  1      
  callq .__cxa_guard_acquire                        #  76    0x228d0  5      
  testl %eax, %eax                                  #  77    0x228d5  2      
  jne .L_229a0                                      #  78    0x228d7  6      
  nop                                               #  79    0x228dd  1      
  nop                                               #  80    0x228de  1      
.L_22980:                                           #        0x228df  0      
  movl 0x1000e36b(%rip), %edx                       #  81    0x228df  6      
  jmpq .L_22900                                     #  82    0x228e5  5      
  nop                                               #  83    0x228ea  1      
  nop                                               #  84    0x228eb  1      
.L_229a0:                                           #        0x228ec  0      
  nop                                               #  85    0x228ec  1      
  nop                                               #  86    0x228ed  1      
  callq ._ZN2pp6Module3GetEv                        #  87    0x228ee  5      
  movl %eax, %edi                                   #  88    0x228f3  2      
  movl $0x100202ed, %esi                            #  89    0x228f5  5      
  nop                                               #  90    0x228fa  1      
  nop                                               #  91    0x228fb  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc     #  92    0x228fc  5      
  movl $0x10030c48, %edi                            #  93    0x22901  5      
  movl %eax, 0x1000e344(%rip)                       #  94    0x22906  6      
  nop                                               #  95    0x2290c  1      
  nop                                               #  96    0x2290d  1      
  callq .__cxa_guard_release                        #  97    0x2290e  5      
  jmpq .L_22980                                     #  98    0x22913  5      
  nop                                               #  99    0x22918  1      
  nop                                               #  100   0x22919  1      
.L_22a20:                                           #        0x2291a  0      
  movl %eax, %ebx                                   #  101   0x2291a  2      
  movl $0x10030c48, %edi                            #  102   0x2291c  5      
  nop                                               #  103   0x22921  1      
  nop                                               #  104   0x22922  1      
  callq .__cxa_guard_abort                          #  105   0x22923  5      
  movl %ebx, %edi                                   #  106   0x22928  2      
  nop                                               #  107   0x2292a  1      
  nop                                               #  108   0x2292b  1      
  callq ._Unwind_Resume                             #  109   0x2292c  5      
  jmpq .L_22a20                                     #  110   0x22931  5      
  nop                                               #  111   0x22936  1      
  nop                                               #  112   0x22937  1      
                                                                             
.size _ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE, .-_ZN2pp8Instance12BindGraphicsERKNS_10Graphics2DE

