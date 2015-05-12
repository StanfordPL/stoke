  .text
  .globl _ZN2pp8Instance11IsFullFrameEv
  .type _ZN2pp8Instance11IsFullFrameEv, @function

#! file-offset 0x22a80
#! rip-offset  0x22a80
#! capacity    672 bytes

# Text                                           #  Line  RIP      Bytes  
._ZN2pp8Instance11IsFullFrameEv:                 #        0x22a80  0      
  cmpb $0x0, 0x1000e1c1(%rip)                    #  1     0x22a80  7      
  pushq %rbx                                     #  2     0x22a87  2      
  movl %edi, %ebx                                #  3     0x22a89  2      
  je .L_22ae0                                    #  4     0x22a8b  6      
  nop                                            #  5     0x22a91  1      
  nop                                            #  6     0x22a92  1      
.L_22aa0:                                        #        0x22a93  0      
  movl 0x1000e1b7(%rip), %edx                    #  7     0x22a93  6      
  xorl %eax, %eax                                #  8     0x22a99  2      
  testq %rdx, %rdx                               #  9     0x22a9b  3      
  jne .L_22b80                                   #  10    0x22a9e  6      
  nop                                            #  11    0x22aa4  1      
.L_22ac0:                                        #        0x22aa5  0      
  popq %rbx                                      #  12    0x22aa5  2      
  popq %r11                                      #  13    0x22aa7  3      
  andl $0xffffffe0, %r11d                        #  14    0x22aaa  7      
  addq %r15, %r11                                #  15    0x22ab1  3      
  jmpq %r11                                      #  16    0x22ab4  3      
  nop                                            #  17    0x22ab7  1      
  nop                                            #  18    0x22ab8  1      
.L_22ae0:                                        #        0x22ab9  0      
  movl $0x10030c48, %edi                         #  19    0x22ab9  5      
  nop                                            #  20    0x22abe  1      
  nop                                            #  21    0x22abf  1      
  callq .__cxa_guard_acquire                     #  22    0x22ac0  5      
  testl %eax, %eax                               #  23    0x22ac5  2      
  je .L_22aa0                                    #  24    0x22ac7  6      
  nop                                            #  25    0x22acd  1      
  nop                                            #  26    0x22ace  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x22acf  5      
  movl %eax, %edi                                #  28    0x22ad4  2      
  movl $0x100202ed, %esi                         #  29    0x22ad6  5      
  nop                                            #  30    0x22adb  1      
  nop                                            #  31    0x22adc  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x22add  5      
  movl $0x10030c48, %edi                         #  33    0x22ae2  5      
  movl %eax, 0x1000e163(%rip)                    #  34    0x22ae7  6      
  nop                                            #  35    0x22aed  1      
  nop                                            #  36    0x22aee  1      
  callq .__cxa_guard_release                     #  37    0x22aef  5      
  movl 0x1000e156(%rip), %edx                    #  38    0x22af4  6      
  xorl %eax, %eax                                #  39    0x22afa  2      
  testq %rdx, %rdx                               #  40    0x22afc  3      
  je .L_22ac0                                    #  41    0x22aff  6      
  nop                                            #  42    0x22b05  1      
.L_22b80:                                        #        0x22b06  0      
  cmpb $0x0, 0x1000e13b(%rip)                    #  43    0x22b06  7      
  je .L_22be0                                    #  44    0x22b0d  6      
  nop                                            #  45    0x22b13  1      
  nop                                            #  46    0x22b14  1      
.L_22ba0:                                        #        0x22b15  0      
  movl %edx, %edx                                #  47    0x22b15  2      
  movl 0x4(%r15,%rdx,1), %eax                    #  48    0x22b17  5      
  movl %ebx, %ebx                                #  49    0x22b1c  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  50    0x22b1e  5      
  nop                                            #  51    0x22b23  1      
  andl $0xffffffe0, %eax                         #  52    0x22b24  5      
  addq %r15, %rax                                #  53    0x22b29  3      
  callq %rax                                     #  54    0x22b2c  2      
  popq %rbx                                      #  55    0x22b2e  2      
  popq %r11                                      #  56    0x22b30  3      
  testl %eax, %eax                               #  57    0x22b33  2      
  setne %al                                      #  58    0x22b35  3      
  andl $0xffffffe0, %r11d                        #  59    0x22b38  7      
  addq %r15, %r11                                #  60    0x22b3f  3      
  jmpq %r11                                      #  61    0x22b42  3      
  nop                                            #  62    0x22b45  1      
.L_22be0:                                        #        0x22b46  0      
  movl $0x10030c48, %edi                         #  63    0x22b46  5      
  nop                                            #  64    0x22b4b  1      
  nop                                            #  65    0x22b4c  1      
  callq .__cxa_guard_acquire                     #  66    0x22b4d  5      
  testl %eax, %eax                               #  67    0x22b52  2      
  jne .L_22c40                                   #  68    0x22b54  6      
  nop                                            #  69    0x22b5a  1      
  nop                                            #  70    0x22b5b  1      
.L_22c20:                                        #        0x22b5c  0      
  movl 0x1000e0ee(%rip), %edx                    #  71    0x22b5c  6      
  jmpq .L_22ba0                                  #  72    0x22b62  5      
  nop                                            #  73    0x22b67  1      
  nop                                            #  74    0x22b68  1      
.L_22c40:                                        #        0x22b69  0      
  nop                                            #  75    0x22b69  1      
  nop                                            #  76    0x22b6a  1      
  callq ._ZN2pp6Module3GetEv                     #  77    0x22b6b  5      
  movl %eax, %edi                                #  78    0x22b70  2      
  movl $0x100202ed, %esi                         #  79    0x22b72  5      
  nop                                            #  80    0x22b77  1      
  nop                                            #  81    0x22b78  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  82    0x22b79  5      
  movl $0x10030c48, %edi                         #  83    0x22b7e  5      
  movl %eax, 0x1000e0c7(%rip)                    #  84    0x22b83  6      
  nop                                            #  85    0x22b89  1      
  nop                                            #  86    0x22b8a  1      
  callq .__cxa_guard_release                     #  87    0x22b8b  5      
  jmpq .L_22c20                                  #  88    0x22b90  5      
  nop                                            #  89    0x22b95  1      
  nop                                            #  90    0x22b96  1      
.L_22cc0:                                        #        0x22b97  0      
  movl %eax, %ebx                                #  91    0x22b97  2      
  movl $0x10030c48, %edi                         #  92    0x22b99  5      
  nop                                            #  93    0x22b9e  1      
  nop                                            #  94    0x22b9f  1      
  callq .__cxa_guard_abort                       #  95    0x22ba0  5      
  movl %ebx, %edi                                #  96    0x22ba5  2      
  nop                                            #  97    0x22ba7  1      
  nop                                            #  98    0x22ba8  1      
  callq ._Unwind_Resume                          #  99    0x22ba9  5      
  jmpq .L_22cc0                                  #  100   0x22bae  5      
  nop                                            #  101   0x22bb3  1      
  nop                                            #  102   0x22bb4  1      
                                                                          
.size _ZN2pp8Instance11IsFullFrameEv, .-_ZN2pp8Instance11IsFullFrameEv

