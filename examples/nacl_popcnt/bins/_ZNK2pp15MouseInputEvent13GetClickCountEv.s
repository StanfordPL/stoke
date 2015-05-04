  .text
  .globl _ZNK2pp15MouseInputEvent13GetClickCountEv
  .type _ZNK2pp15MouseInputEvent13GetClickCountEv, @function

#! file-offset 0x3b200
#! rip-offset  0x3b200
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp15MouseInputEvent13GetClickCountEv:      #        0x3b200  0      
  cmpb $0x0, 0xfff5b59(%rip)                     #  1     0x3b200  7      
  pushq %rbx                                     #  2     0x3b207  2      
  movl %edi, %ebx                                #  3     0x3b209  2      
  je .L_3b260                                    #  4     0x3b20b  6      
  nop                                            #  5     0x3b211  1      
  nop                                            #  6     0x3b212  1      
.L_3b220:                                        #        0x3b213  0      
  movl 0xfff5b4f(%rip), %eax                     #  7     0x3b213  6      
  testq %rax, %rax                               #  8     0x3b219  3      
  jne .L_3b300                                   #  9     0x3b21c  6      
  xchgw %ax, %ax                                 #  10    0x3b222  3      
  nop                                            #  11    0x3b225  1      
.L_3b240:                                        #        0x3b226  0      
  popq %rbx                                      #  12    0x3b226  2      
  popq %r11                                      #  13    0x3b228  3      
  andl $0xffffffe0, %r11d                        #  14    0x3b22b  7      
  addq %r15, %r11                                #  15    0x3b232  3      
  jmpq %r11                                      #  16    0x3b235  3      
  nop                                            #  17    0x3b238  1      
  nop                                            #  18    0x3b239  1      
.L_3b260:                                        #        0x3b23a  0      
  movl $0x10030d60, %edi                         #  19    0x3b23a  5      
  nop                                            #  20    0x3b23f  1      
  nop                                            #  21    0x3b240  1      
  callq .__cxa_guard_acquire                     #  22    0x3b241  5      
  testl %eax, %eax                               #  23    0x3b246  2      
  je .L_3b220                                    #  24    0x3b248  6      
  nop                                            #  25    0x3b24e  1      
  nop                                            #  26    0x3b24f  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3b250  5      
  movl %eax, %edi                                #  28    0x3b255  2      
  movl $0x100206f0, %esi                         #  29    0x3b257  5      
  nop                                            #  30    0x3b25c  1      
  nop                                            #  31    0x3b25d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3b25e  5      
  movl $0x10030d60, %edi                         #  33    0x3b263  5      
  movl %eax, 0xfff5afa(%rip)                     #  34    0x3b268  6      
  nop                                            #  35    0x3b26e  1      
  nop                                            #  36    0x3b26f  1      
  callq .__cxa_guard_release                     #  37    0x3b270  5      
  movl 0xfff5aed(%rip), %eax                     #  38    0x3b275  6      
  testq %rax, %rax                               #  39    0x3b27b  3      
  je .L_3b240                                    #  40    0x3b27e  6      
  xchgw %ax, %ax                                 #  41    0x3b284  3      
  nop                                            #  42    0x3b287  1      
.L_3b300:                                        #        0x3b288  0      
  cmpb $0x0, 0xfff5ad1(%rip)                     #  43    0x3b288  7      
  je .L_3b320                                    #  44    0x3b28f  6      
  movl %ebx, %ebx                                #  45    0x3b295  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3b297  5      
  movl %eax, %eax                                #  47    0x3b29c  2      
  movl 0x10(%r15,%rax,1), %eax                   #  48    0x3b29e  5      
  popq %rbx                                      #  49    0x3b2a3  2      
  andl $0xffffffe0, %eax                         #  50    0x3b2a5  5      
  addq %r15, %rax                                #  51    0x3b2aa  3      
  jmpq %rax                                      #  52    0x3b2ad  2      
.L_3b320:                                        #        0x3b2af  0      
  movl $0x10030d60, %edi                         #  53    0x3b2af  5      
  nop                                            #  54    0x3b2b4  1      
  nop                                            #  55    0x3b2b5  1      
  callq .__cxa_guard_acquire                     #  56    0x3b2b6  5      
  testl %eax, %eax                               #  57    0x3b2bb  2      
  jne .L_3b380                                   #  58    0x3b2bd  6      
  nop                                            #  59    0x3b2c3  1      
  nop                                            #  60    0x3b2c4  1      
.L_3b360:                                        #        0x3b2c5  0      
  movl 0xfff5a9d(%rip), %eax                     #  61    0x3b2c5  6      
  movl %ebx, %ebx                                #  62    0x3b2cb  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3b2cd  5      
  popq %rbx                                      #  64    0x3b2d2  2      
  movl %eax, %eax                                #  65    0x3b2d4  2      
  movl 0x10(%r15,%rax,1), %eax                   #  66    0x3b2d6  5      
  andl $0xffffffe0, %eax                         #  67    0x3b2db  5      
  addq %r15, %rax                                #  68    0x3b2e0  3      
  jmpq %rax                                      #  69    0x3b2e3  2      
  nop                                            #  70    0x3b2e5  1      
.L_3b380:                                        #        0x3b2e6  0      
  nop                                            #  71    0x3b2e6  1      
  nop                                            #  72    0x3b2e7  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3b2e8  5      
  movl %eax, %edi                                #  74    0x3b2ed  2      
  movl $0x100206f0, %esi                         #  75    0x3b2ef  5      
  nop                                            #  76    0x3b2f4  1      
  nop                                            #  77    0x3b2f5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3b2f6  5      
  movl $0x10030d60, %edi                         #  79    0x3b2fb  5      
  movl %eax, 0xfff5a62(%rip)                     #  80    0x3b300  6      
  nop                                            #  81    0x3b306  1      
  nop                                            #  82    0x3b307  1      
  callq .__cxa_guard_release                     #  83    0x3b308  5      
  jmpq .L_3b360                                  #  84    0x3b30d  5      
  nop                                            #  85    0x3b312  1      
  nop                                            #  86    0x3b313  1      
.L_3b400:                                        #        0x3b314  0      
  movl %eax, %ebx                                #  87    0x3b314  2      
  movl $0x10030d60, %edi                         #  88    0x3b316  5      
  nop                                            #  89    0x3b31b  1      
  nop                                            #  90    0x3b31c  1      
  callq .__cxa_guard_abort                       #  91    0x3b31d  5      
  movl %ebx, %edi                                #  92    0x3b322  2      
  nop                                            #  93    0x3b324  1      
  nop                                            #  94    0x3b325  1      
  callq ._Unwind_Resume                          #  95    0x3b326  5      
  jmpq .L_3b400                                  #  96    0x3b32b  5      
  nop                                            #  97    0x3b330  1      
  nop                                            #  98    0x3b331  1      
                                                                          
.size _ZNK2pp15MouseInputEvent13GetClickCountEv, .-_ZNK2pp15MouseInputEvent13GetClickCountEv

