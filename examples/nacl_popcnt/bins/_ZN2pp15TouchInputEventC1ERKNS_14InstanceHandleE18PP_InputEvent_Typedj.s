  .text
  .globl _ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj
  .type _ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, @function

#! file-offset 0x3a100
#! rip-offset  0x3a100
#! capacity    896 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj:  #        0x3a100  0      
  movq %rbx, -0x20(%rsp)                                                  #  1     0x3a100  5      
  movl %edi, %ebx                                                         #  2     0x3a105  2      
  movq %r12, -0x18(%rsp)                                                  #  3     0x3a107  5      
  movq %r13, -0x10(%rsp)                                                  #  4     0x3a10c  5      
  movq %r14, -0x8(%rsp)                                                   #  5     0x3a111  5      
  movl %ebx, %edi                                                         #  6     0x3a116  2      
  subl $0x38, %esp                                                        #  7     0x3a118  3      
  addq %r15, %rsp                                                         #  8     0x3a11b  3      
  xchgw %ax, %ax                                                          #  9     0x3a11e  3      
  movl %edx, %r14d                                                        #  10    0x3a121  3      
  movl %ecx, %r13d                                                        #  11    0x3a124  3      
  movsd %xmm0, 0x8(%rsp)                                                  #  12    0x3a127  6      
  movl %esi, %r12d                                                        #  13    0x3a12d  3      
  nop                                                                     #  14    0x3a130  1      
  callq ._ZN2pp10InputEventC2Ev                                           #  15    0x3a131  5      
  movl %ebx, %ebx                                                         #  16    0x3a136  2      
  movl $0x10020788, (%r15,%rbx,1)                                         #  17    0x3a138  8      
  cmpb $0x0, 0xfff6bd9(%rip)                                              #  18    0x3a140  7      
  je .L_3a1c0                                                             #  19    0x3a147  6      
  nop                                                                     #  20    0x3a14d  1      
.L_3a160:                                                                 #        0x3a14e  0      
  movl 0xfff6bd4(%rip), %eax                                              #  21    0x3a14e  6      
  testq %rax, %rax                                                        #  22    0x3a154  3      
  jne .L_3a260                                                            #  23    0x3a157  6      
  xchgw %ax, %ax                                                          #  24    0x3a15d  3      
  nop                                                                     #  25    0x3a160  1      
.L_3a180:                                                                 #        0x3a161  0      
  movq 0x18(%rsp), %rbx                                                   #  26    0x3a161  5      
  movq 0x20(%rsp), %r12                                                   #  27    0x3a166  5      
  movq 0x28(%rsp), %r13                                                   #  28    0x3a16b  5      
  movq 0x30(%rsp), %r14                                                   #  29    0x3a170  5      
  addl $0x38, %esp                                                        #  30    0x3a175  3      
  addq %r15, %rsp                                                         #  31    0x3a178  3      
  popq %r11                                                               #  32    0x3a17b  3      
  nop                                                                     #  33    0x3a17e  1      
  andl $0xffffffe0, %r11d                                                 #  34    0x3a17f  7      
  addq %r15, %r11                                                         #  35    0x3a186  3      
  jmpq %r11                                                               #  36    0x3a189  3      
  nop                                                                     #  37    0x3a18c  1      
  nop                                                                     #  38    0x3a18d  1      
.L_3a1c0:                                                                 #        0x3a18e  0      
  movl $0x10030d20, %edi                                                  #  39    0x3a18e  5      
  nop                                                                     #  40    0x3a193  1      
  nop                                                                     #  41    0x3a194  1      
  callq .__cxa_guard_acquire                                              #  42    0x3a195  5      
  testl %eax, %eax                                                        #  43    0x3a19a  2      
  je .L_3a160                                                             #  44    0x3a19c  6      
  nop                                                                     #  45    0x3a1a2  1      
  nop                                                                     #  46    0x3a1a3  1      
  callq ._ZN2pp6Module3GetEv                                              #  47    0x3a1a4  5      
  movl %eax, %edi                                                         #  48    0x3a1a9  2      
  movl $0x100206d8, %esi                                                  #  49    0x3a1ab  5      
  nop                                                                     #  50    0x3a1b0  1      
  nop                                                                     #  51    0x3a1b1  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  52    0x3a1b2  5      
  movl $0x10030d20, %edi                                                  #  53    0x3a1b7  5      
  movl %eax, 0xfff6b66(%rip)                                              #  54    0x3a1bc  6      
  nop                                                                     #  55    0x3a1c2  1      
  nop                                                                     #  56    0x3a1c3  1      
  callq .__cxa_guard_release                                              #  57    0x3a1c4  5      
  movl 0xfff6b59(%rip), %eax                                              #  58    0x3a1c9  6      
  testq %rax, %rax                                                        #  59    0x3a1cf  3      
  je .L_3a180                                                             #  60    0x3a1d2  6      
  xchgw %ax, %ax                                                          #  61    0x3a1d8  3      
  nop                                                                     #  62    0x3a1db  1      
.L_3a260:                                                                 #        0x3a1dc  0      
  cmpb $0x0, 0xfff6b3d(%rip)                                              #  63    0x3a1dc  7      
  je .L_3a300                                                             #  64    0x3a1e3  6      
  nop                                                                     #  65    0x3a1e9  1      
  nop                                                                     #  66    0x3a1ea  1      
.L_3a280:                                                                 #        0x3a1eb  0      
  movl %eax, %eax                                                         #  67    0x3a1eb  2      
  movl (%r15,%rax,1), %eax                                                #  68    0x3a1ed  4      
  movl %r13d, %edx                                                        #  69    0x3a1f1  3      
  movl %r14d, %esi                                                        #  70    0x3a1f4  3      
  movsd 0x8(%rsp), %xmm0                                                  #  71    0x3a1f7  6      
  movl %r12d, %r12d                                                       #  72    0x3a1fd  3      
  movl (%r15,%r12,1), %edi                                                #  73    0x3a200  4      
  nop                                                                     #  74    0x3a204  1      
  nop                                                                     #  75    0x3a205  1      
  nop                                                                     #  76    0x3a206  1      
  andl $0xffffffe0, %eax                                                  #  77    0x3a207  5      
  addq %r15, %rax                                                         #  78    0x3a20c  3      
  callq %rax                                                              #  79    0x3a20f  2      
  movl %eax, %esi                                                         #  80    0x3a211  2      
  movl %ebx, %edi                                                         #  81    0x3a213  2      
  nop                                                                     #  82    0x3a215  1      
  nop                                                                     #  83    0x3a216  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                        #  84    0x3a217  5      
  jmpq .L_3a180                                                           #  85    0x3a21c  5      
  nop                                                                     #  86    0x3a221  1      
  nop                                                                     #  87    0x3a222  1      
.L_3a300:                                                                 #        0x3a223  0      
  movl $0x10030d20, %edi                                                  #  88    0x3a223  5      
  nop                                                                     #  89    0x3a228  1      
  nop                                                                     #  90    0x3a229  1      
  callq .__cxa_guard_acquire                                              #  91    0x3a22a  5      
  testl %eax, %eax                                                        #  92    0x3a22f  2      
  jne .L_3a360                                                            #  93    0x3a231  6      
  nop                                                                     #  94    0x3a237  1      
  nop                                                                     #  95    0x3a238  1      
.L_3a340:                                                                 #        0x3a239  0      
  movl 0xfff6ae9(%rip), %eax                                              #  96    0x3a239  6      
  jmpq .L_3a280                                                           #  97    0x3a23f  5      
  nop                                                                     #  98    0x3a244  1      
  nop                                                                     #  99    0x3a245  1      
.L_3a360:                                                                 #        0x3a246  0      
  nop                                                                     #  100   0x3a246  1      
  nop                                                                     #  101   0x3a247  1      
  callq ._ZN2pp6Module3GetEv                                              #  102   0x3a248  5      
  movl %eax, %edi                                                         #  103   0x3a24d  2      
  movl $0x100206d8, %esi                                                  #  104   0x3a24f  5      
  nop                                                                     #  105   0x3a254  1      
  nop                                                                     #  106   0x3a255  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  107   0x3a256  5      
  movl $0x10030d20, %edi                                                  #  108   0x3a25b  5      
  movl %eax, 0xfff6ac2(%rip)                                              #  109   0x3a260  6      
  nop                                                                     #  110   0x3a266  1      
  nop                                                                     #  111   0x3a267  1      
  callq .__cxa_guard_release                                              #  112   0x3a268  5      
  jmpq .L_3a340                                                           #  113   0x3a26d  5      
  nop                                                                     #  114   0x3a272  1      
  nop                                                                     #  115   0x3a273  1      
.L_3a3e0:                                                                 #        0x3a274  0      
  movl $0x10030d20, %edi                                                  #  116   0x3a274  5      
  movl %eax, %r12d                                                        #  117   0x3a279  3      
  nop                                                                     #  118   0x3a27c  1      
  nop                                                                     #  119   0x3a27d  1      
  callq .__cxa_guard_abort                                                #  120   0x3a27e  5      
.L_3a400:                                                                 #        0x3a283  0      
  movl %ebx, %edi                                                         #  121   0x3a283  2      
  nop                                                                     #  122   0x3a285  1      
  nop                                                                     #  123   0x3a286  1      
  callq ._ZN2pp10InputEventD2Ev                                           #  124   0x3a287  5      
  movl %r12d, %edi                                                        #  125   0x3a28c  3      
  nop                                                                     #  126   0x3a28f  1      
  nop                                                                     #  127   0x3a290  1      
  callq ._Unwind_Resume                                                   #  128   0x3a291  5      
  movl %eax, %r12d                                                        #  129   0x3a296  3      
  jmpq .L_3a400                                                           #  130   0x3a299  5      
  nop                                                                     #  131   0x3a29e  1      
  nop                                                                     #  132   0x3a29f  1      
  jmpq .L_3a3e0                                                           #  133   0x3a2a0  5      
  nop                                                                     #  134   0x3a2a5  1      
  nop                                                                     #  135   0x3a2a6  1      
  nop                                                                     #  136   0x3a2a7  1      
                                                                                                   
.size _ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, .-_ZN2pp15TouchInputEventC1ERKNS_14InstanceHandleE18PP_InputEvent_Typedj

