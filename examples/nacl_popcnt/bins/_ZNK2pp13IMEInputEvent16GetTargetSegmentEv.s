  .text
  .globl _ZNK2pp13IMEInputEvent16GetTargetSegmentEv
  .type _ZNK2pp13IMEInputEvent16GetTargetSegmentEv, @function

#! file-offset 0x3e800
#! rip-offset  0x3e800
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent16GetTargetSegmentEv:     #        0x3e800  0      
  cmpb $0x0, 0xfff2509(%rip)                     #  1     0x3e800  7      
  pushq %rbx                                     #  2     0x3e807  2      
  movl %edi, %ebx                                #  3     0x3e809  2      
  je .L_3e860                                    #  4     0x3e80b  6      
  nop                                            #  5     0x3e811  1      
  nop                                            #  6     0x3e812  1      
.L_3e820:                                        #        0x3e813  0      
  movl 0xfff24ff(%rip), %eax                     #  7     0x3e813  6      
  testq %rax, %rax                               #  8     0x3e819  3      
  jne .L_3e900                                   #  9     0x3e81c  6      
  xchgw %ax, %ax                                 #  10    0x3e822  3      
  nop                                            #  11    0x3e825  1      
.L_3e840:                                        #        0x3e826  0      
  popq %rbx                                      #  12    0x3e826  2      
  popq %r11                                      #  13    0x3e828  3      
  andl $0xffffffe0, %r11d                        #  14    0x3e82b  7      
  addq %r15, %r11                                #  15    0x3e832  3      
  jmpq %r11                                      #  16    0x3e835  3      
  nop                                            #  17    0x3e838  1      
  nop                                            #  18    0x3e839  1      
.L_3e860:                                        #        0x3e83a  0      
  movl $0x10030d10, %edi                         #  19    0x3e83a  5      
  nop                                            #  20    0x3e83f  1      
  nop                                            #  21    0x3e840  1      
  callq .__cxa_guard_acquire                     #  22    0x3e841  5      
  testl %eax, %eax                               #  23    0x3e846  2      
  je .L_3e820                                    #  24    0x3e848  6      
  nop                                            #  25    0x3e84e  1      
  nop                                            #  26    0x3e84f  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3e850  5      
  movl %eax, %edi                                #  28    0x3e855  2      
  movl $0x10020674, %esi                         #  29    0x3e857  5      
  nop                                            #  30    0x3e85c  1      
  nop                                            #  31    0x3e85d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3e85e  5      
  movl $0x10030d10, %edi                         #  33    0x3e863  5      
  movl %eax, 0xfff24aa(%rip)                     #  34    0x3e868  6      
  nop                                            #  35    0x3e86e  1      
  nop                                            #  36    0x3e86f  1      
  callq .__cxa_guard_release                     #  37    0x3e870  5      
  movl 0xfff249d(%rip), %eax                     #  38    0x3e875  6      
  testq %rax, %rax                               #  39    0x3e87b  3      
  je .L_3e840                                    #  40    0x3e87e  6      
  xchgw %ax, %ax                                 #  41    0x3e884  3      
  nop                                            #  42    0x3e887  1      
.L_3e900:                                        #        0x3e888  0      
  cmpb $0x0, 0xfff2481(%rip)                     #  43    0x3e888  7      
  je .L_3e920                                    #  44    0x3e88f  6      
  movl %ebx, %ebx                                #  45    0x3e895  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3e897  5      
  movl %eax, %eax                                #  47    0x3e89c  2      
  movl 0x14(%r15,%rax,1), %eax                   #  48    0x3e89e  5      
  popq %rbx                                      #  49    0x3e8a3  2      
  andl $0xffffffe0, %eax                         #  50    0x3e8a5  5      
  addq %r15, %rax                                #  51    0x3e8aa  3      
  jmpq %rax                                      #  52    0x3e8ad  2      
.L_3e920:                                        #        0x3e8af  0      
  movl $0x10030d10, %edi                         #  53    0x3e8af  5      
  nop                                            #  54    0x3e8b4  1      
  nop                                            #  55    0x3e8b5  1      
  callq .__cxa_guard_acquire                     #  56    0x3e8b6  5      
  testl %eax, %eax                               #  57    0x3e8bb  2      
  jne .L_3e980                                   #  58    0x3e8bd  6      
  nop                                            #  59    0x3e8c3  1      
  nop                                            #  60    0x3e8c4  1      
.L_3e960:                                        #        0x3e8c5  0      
  movl 0xfff244d(%rip), %eax                     #  61    0x3e8c5  6      
  movl %ebx, %ebx                                #  62    0x3e8cb  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3e8cd  5      
  popq %rbx                                      #  64    0x3e8d2  2      
  movl %eax, %eax                                #  65    0x3e8d4  2      
  movl 0x14(%r15,%rax,1), %eax                   #  66    0x3e8d6  5      
  andl $0xffffffe0, %eax                         #  67    0x3e8db  5      
  addq %r15, %rax                                #  68    0x3e8e0  3      
  jmpq %rax                                      #  69    0x3e8e3  2      
  nop                                            #  70    0x3e8e5  1      
.L_3e980:                                        #        0x3e8e6  0      
  nop                                            #  71    0x3e8e6  1      
  nop                                            #  72    0x3e8e7  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3e8e8  5      
  movl %eax, %edi                                #  74    0x3e8ed  2      
  movl $0x10020674, %esi                         #  75    0x3e8ef  5      
  nop                                            #  76    0x3e8f4  1      
  nop                                            #  77    0x3e8f5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3e8f6  5      
  movl $0x10030d10, %edi                         #  79    0x3e8fb  5      
  movl %eax, 0xfff2412(%rip)                     #  80    0x3e900  6      
  nop                                            #  81    0x3e906  1      
  nop                                            #  82    0x3e907  1      
  callq .__cxa_guard_release                     #  83    0x3e908  5      
  jmpq .L_3e960                                  #  84    0x3e90d  5      
  nop                                            #  85    0x3e912  1      
  nop                                            #  86    0x3e913  1      
.L_3ea00:                                        #        0x3e914  0      
  movl %eax, %ebx                                #  87    0x3e914  2      
  movl $0x10030d10, %edi                         #  88    0x3e916  5      
  nop                                            #  89    0x3e91b  1      
  nop                                            #  90    0x3e91c  1      
  callq .__cxa_guard_abort                       #  91    0x3e91d  5      
  movl %ebx, %edi                                #  92    0x3e922  2      
  nop                                            #  93    0x3e924  1      
  nop                                            #  94    0x3e925  1      
  callq ._Unwind_Resume                          #  95    0x3e926  5      
  jmpq .L_3ea00                                  #  96    0x3e92b  5      
  nop                                            #  97    0x3e930  1      
  nop                                            #  98    0x3e931  1      
                                                                          
.size _ZNK2pp13IMEInputEvent16GetTargetSegmentEv, .-_ZNK2pp13IMEInputEvent16GetTargetSegmentEv

