  .text
  .globl _ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj
  .type _ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, @function

#! file-offset 0x3e480
#! rip-offset  0x3e480
#! capacity    896 bytes

# Text                                                                    #  Line  RIP      Bytes  
._ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj:  #        0x3e480  0      
  movq %rbx, -0x20(%rsp)                                                  #  1     0x3e480  5      
  movl %edi, %ebx                                                         #  2     0x3e485  2      
  movq %r12, -0x18(%rsp)                                                  #  3     0x3e487  5      
  movq %r13, -0x10(%rsp)                                                  #  4     0x3e48c  5      
  movq %r14, -0x8(%rsp)                                                   #  5     0x3e491  5      
  movl %ebx, %edi                                                         #  6     0x3e496  2      
  subl $0x38, %esp                                                        #  7     0x3e498  3      
  addq %r15, %rsp                                                         #  8     0x3e49b  3      
  xchgw %ax, %ax                                                          #  9     0x3e49e  3      
  movl %edx, %r14d                                                        #  10    0x3e4a1  3      
  movl %ecx, %r13d                                                        #  11    0x3e4a4  3      
  movsd %xmm0, 0x8(%rsp)                                                  #  12    0x3e4a7  6      
  movl %esi, %r12d                                                        #  13    0x3e4ad  3      
  nop                                                                     #  14    0x3e4b0  1      
  callq ._ZN2pp10InputEventC2Ev                                           #  15    0x3e4b1  5      
  movl %ebx, %ebx                                                         #  16    0x3e4b6  2      
  movl $0x10020788, (%r15,%rbx,1)                                         #  17    0x3e4b8  8      
  cmpb $0x0, 0xfff2859(%rip)                                              #  18    0x3e4c0  7      
  je .L_3e540                                                             #  19    0x3e4c7  6      
  nop                                                                     #  20    0x3e4cd  1      
.L_3e4e0:                                                                 #        0x3e4ce  0      
  movl 0xfff2854(%rip), %eax                                              #  21    0x3e4ce  6      
  testq %rax, %rax                                                        #  22    0x3e4d4  3      
  jne .L_3e5e0                                                            #  23    0x3e4d7  6      
  xchgw %ax, %ax                                                          #  24    0x3e4dd  3      
  nop                                                                     #  25    0x3e4e0  1      
.L_3e500:                                                                 #        0x3e4e1  0      
  movq 0x18(%rsp), %rbx                                                   #  26    0x3e4e1  5      
  movq 0x20(%rsp), %r12                                                   #  27    0x3e4e6  5      
  movq 0x28(%rsp), %r13                                                   #  28    0x3e4eb  5      
  movq 0x30(%rsp), %r14                                                   #  29    0x3e4f0  5      
  addl $0x38, %esp                                                        #  30    0x3e4f5  3      
  addq %r15, %rsp                                                         #  31    0x3e4f8  3      
  popq %r11                                                               #  32    0x3e4fb  3      
  nop                                                                     #  33    0x3e4fe  1      
  andl $0xffffffe0, %r11d                                                 #  34    0x3e4ff  7      
  addq %r15, %r11                                                         #  35    0x3e506  3      
  jmpq %r11                                                               #  36    0x3e509  3      
  nop                                                                     #  37    0x3e50c  1      
  nop                                                                     #  38    0x3e50d  1      
.L_3e540:                                                                 #        0x3e50e  0      
  movl $0x10030d20, %edi                                                  #  39    0x3e50e  5      
  nop                                                                     #  40    0x3e513  1      
  nop                                                                     #  41    0x3e514  1      
  callq .__cxa_guard_acquire                                              #  42    0x3e515  5      
  testl %eax, %eax                                                        #  43    0x3e51a  2      
  je .L_3e4e0                                                             #  44    0x3e51c  6      
  nop                                                                     #  45    0x3e522  1      
  nop                                                                     #  46    0x3e523  1      
  callq ._ZN2pp6Module3GetEv                                              #  47    0x3e524  5      
  movl %eax, %edi                                                         #  48    0x3e529  2      
  movl $0x100206d8, %esi                                                  #  49    0x3e52b  5      
  nop                                                                     #  50    0x3e530  1      
  nop                                                                     #  51    0x3e531  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  52    0x3e532  5      
  movl $0x10030d20, %edi                                                  #  53    0x3e537  5      
  movl %eax, 0xfff27e6(%rip)                                              #  54    0x3e53c  6      
  nop                                                                     #  55    0x3e542  1      
  nop                                                                     #  56    0x3e543  1      
  callq .__cxa_guard_release                                              #  57    0x3e544  5      
  movl 0xfff27d9(%rip), %eax                                              #  58    0x3e549  6      
  testq %rax, %rax                                                        #  59    0x3e54f  3      
  je .L_3e500                                                             #  60    0x3e552  6      
  xchgw %ax, %ax                                                          #  61    0x3e558  3      
  nop                                                                     #  62    0x3e55b  1      
.L_3e5e0:                                                                 #        0x3e55c  0      
  cmpb $0x0, 0xfff27bd(%rip)                                              #  63    0x3e55c  7      
  je .L_3e680                                                             #  64    0x3e563  6      
  nop                                                                     #  65    0x3e569  1      
  nop                                                                     #  66    0x3e56a  1      
.L_3e600:                                                                 #        0x3e56b  0      
  movl %eax, %eax                                                         #  67    0x3e56b  2      
  movl (%r15,%rax,1), %eax                                                #  68    0x3e56d  4      
  movl %r13d, %edx                                                        #  69    0x3e571  3      
  movl %r14d, %esi                                                        #  70    0x3e574  3      
  movsd 0x8(%rsp), %xmm0                                                  #  71    0x3e577  6      
  movl %r12d, %r12d                                                       #  72    0x3e57d  3      
  movl (%r15,%r12,1), %edi                                                #  73    0x3e580  4      
  nop                                                                     #  74    0x3e584  1      
  nop                                                                     #  75    0x3e585  1      
  nop                                                                     #  76    0x3e586  1      
  andl $0xffffffe0, %eax                                                  #  77    0x3e587  5      
  addq %r15, %rax                                                         #  78    0x3e58c  3      
  callq %rax                                                              #  79    0x3e58f  2      
  movl %eax, %esi                                                         #  80    0x3e591  2      
  movl %ebx, %edi                                                         #  81    0x3e593  2      
  nop                                                                     #  82    0x3e595  1      
  nop                                                                     #  83    0x3e596  1      
  callq ._ZN2pp8Resource22PassRefFromConstructorEi                        #  84    0x3e597  5      
  jmpq .L_3e500                                                           #  85    0x3e59c  5      
  nop                                                                     #  86    0x3e5a1  1      
  nop                                                                     #  87    0x3e5a2  1      
.L_3e680:                                                                 #        0x3e5a3  0      
  movl $0x10030d20, %edi                                                  #  88    0x3e5a3  5      
  nop                                                                     #  89    0x3e5a8  1      
  nop                                                                     #  90    0x3e5a9  1      
  callq .__cxa_guard_acquire                                              #  91    0x3e5aa  5      
  testl %eax, %eax                                                        #  92    0x3e5af  2      
  jne .L_3e6e0                                                            #  93    0x3e5b1  6      
  nop                                                                     #  94    0x3e5b7  1      
  nop                                                                     #  95    0x3e5b8  1      
.L_3e6c0:                                                                 #        0x3e5b9  0      
  movl 0xfff2769(%rip), %eax                                              #  96    0x3e5b9  6      
  jmpq .L_3e600                                                           #  97    0x3e5bf  5      
  nop                                                                     #  98    0x3e5c4  1      
  nop                                                                     #  99    0x3e5c5  1      
.L_3e6e0:                                                                 #        0x3e5c6  0      
  nop                                                                     #  100   0x3e5c6  1      
  nop                                                                     #  101   0x3e5c7  1      
  callq ._ZN2pp6Module3GetEv                                              #  102   0x3e5c8  5      
  movl %eax, %edi                                                         #  103   0x3e5cd  2      
  movl $0x100206d8, %esi                                                  #  104   0x3e5cf  5      
  nop                                                                     #  105   0x3e5d4  1      
  nop                                                                     #  106   0x3e5d5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                           #  107   0x3e5d6  5      
  movl $0x10030d20, %edi                                                  #  108   0x3e5db  5      
  movl %eax, 0xfff2742(%rip)                                              #  109   0x3e5e0  6      
  nop                                                                     #  110   0x3e5e6  1      
  nop                                                                     #  111   0x3e5e7  1      
  callq .__cxa_guard_release                                              #  112   0x3e5e8  5      
  jmpq .L_3e6c0                                                           #  113   0x3e5ed  5      
  nop                                                                     #  114   0x3e5f2  1      
  nop                                                                     #  115   0x3e5f3  1      
.L_3e760:                                                                 #        0x3e5f4  0      
  movl $0x10030d20, %edi                                                  #  116   0x3e5f4  5      
  movl %eax, %r12d                                                        #  117   0x3e5f9  3      
  nop                                                                     #  118   0x3e5fc  1      
  nop                                                                     #  119   0x3e5fd  1      
  callq .__cxa_guard_abort                                                #  120   0x3e5fe  5      
.L_3e780:                                                                 #        0x3e603  0      
  movl %ebx, %edi                                                         #  121   0x3e603  2      
  nop                                                                     #  122   0x3e605  1      
  nop                                                                     #  123   0x3e606  1      
  callq ._ZN2pp10InputEventD2Ev                                           #  124   0x3e607  5      
  movl %r12d, %edi                                                        #  125   0x3e60c  3      
  nop                                                                     #  126   0x3e60f  1      
  nop                                                                     #  127   0x3e610  1      
  callq ._Unwind_Resume                                                   #  128   0x3e611  5      
  movl %eax, %r12d                                                        #  129   0x3e616  3      
  jmpq .L_3e780                                                           #  130   0x3e619  5      
  nop                                                                     #  131   0x3e61e  1      
  nop                                                                     #  132   0x3e61f  1      
  jmpq .L_3e760                                                           #  133   0x3e620  5      
  nop                                                                     #  134   0x3e625  1      
  nop                                                                     #  135   0x3e626  1      
  nop                                                                     #  136   0x3e627  1      
                                                                                                   
.size _ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj, .-_ZN2pp15TouchInputEventC2ERKNS_14InstanceHandleE18PP_InputEvent_Typedj

