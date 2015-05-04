  .text
  .globl _ZNK2pp10InputEvent12GetModifiersEv
  .type _ZNK2pp10InputEvent12GetModifiersEv, @function

#! file-offset 0x367e0
#! rip-offset  0x367e0
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp10InputEvent12GetModifiersEv:            #        0x367e0  0      
  cmpb $0x0, 0xfffa589(%rip)                     #  1     0x367e0  7      
  pushq %rbx                                     #  2     0x367e7  2      
  movl %edi, %ebx                                #  3     0x367e9  2      
  je .L_36840                                    #  4     0x367eb  6      
  nop                                            #  5     0x367f1  1      
  nop                                            #  6     0x367f2  1      
.L_36800:                                        #        0x367f3  0      
  movl 0xfffa57f(%rip), %eax                     #  7     0x367f3  6      
  testq %rax, %rax                               #  8     0x367f9  3      
  jne .L_368e0                                   #  9     0x367fc  6      
  xchgw %ax, %ax                                 #  10    0x36802  3      
  nop                                            #  11    0x36805  1      
.L_36820:                                        #        0x36806  0      
  popq %rbx                                      #  12    0x36806  2      
  popq %r11                                      #  13    0x36808  3      
  andl $0xffffffe0, %r11d                        #  14    0x3680b  7      
  addq %r15, %r11                                #  15    0x36812  3      
  jmpq %r11                                      #  16    0x36815  3      
  nop                                            #  17    0x36818  1      
  nop                                            #  18    0x36819  1      
.L_36840:                                        #        0x3681a  0      
  movl $0x10030d70, %edi                         #  19    0x3681a  5      
  nop                                            #  20    0x3681f  1      
  nop                                            #  21    0x36820  1      
  callq .__cxa_guard_acquire                     #  22    0x36821  5      
  testl %eax, %eax                               #  23    0x36826  2      
  je .L_36800                                    #  24    0x36828  6      
  nop                                            #  25    0x3682e  1      
  nop                                            #  26    0x3682f  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x36830  5      
  movl %eax, %edi                                #  28    0x36835  2      
  movl $0x100202c8, %esi                         #  29    0x36837  5      
  nop                                            #  30    0x3683c  1      
  nop                                            #  31    0x3683d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3683e  5      
  movl $0x10030d70, %edi                         #  33    0x36843  5      
  movl %eax, 0xfffa52a(%rip)                     #  34    0x36848  6      
  nop                                            #  35    0x3684e  1      
  nop                                            #  36    0x3684f  1      
  callq .__cxa_guard_release                     #  37    0x36850  5      
  movl 0xfffa51d(%rip), %eax                     #  38    0x36855  6      
  testq %rax, %rax                               #  39    0x3685b  3      
  je .L_36820                                    #  40    0x3685e  6      
  xchgw %ax, %ax                                 #  41    0x36864  3      
  nop                                            #  42    0x36867  1      
.L_368e0:                                        #        0x36868  0      
  cmpb $0x0, 0xfffa501(%rip)                     #  43    0x36868  7      
  je .L_36900                                    #  44    0x3686f  6      
  movl %ebx, %ebx                                #  45    0x36875  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x36877  5      
  movl %eax, %eax                                #  47    0x3687c  2      
  movl 0x18(%r15,%rax,1), %eax                   #  48    0x3687e  5      
  popq %rbx                                      #  49    0x36883  2      
  andl $0xffffffe0, %eax                         #  50    0x36885  5      
  addq %r15, %rax                                #  51    0x3688a  3      
  jmpq %rax                                      #  52    0x3688d  2      
.L_36900:                                        #        0x3688f  0      
  movl $0x10030d70, %edi                         #  53    0x3688f  5      
  nop                                            #  54    0x36894  1      
  nop                                            #  55    0x36895  1      
  callq .__cxa_guard_acquire                     #  56    0x36896  5      
  testl %eax, %eax                               #  57    0x3689b  2      
  jne .L_36960                                   #  58    0x3689d  6      
  nop                                            #  59    0x368a3  1      
  nop                                            #  60    0x368a4  1      
.L_36940:                                        #        0x368a5  0      
  movl 0xfffa4cd(%rip), %eax                     #  61    0x368a5  6      
  movl %ebx, %ebx                                #  62    0x368ab  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x368ad  5      
  popq %rbx                                      #  64    0x368b2  2      
  movl %eax, %eax                                #  65    0x368b4  2      
  movl 0x18(%r15,%rax,1), %eax                   #  66    0x368b6  5      
  andl $0xffffffe0, %eax                         #  67    0x368bb  5      
  addq %r15, %rax                                #  68    0x368c0  3      
  jmpq %rax                                      #  69    0x368c3  2      
  nop                                            #  70    0x368c5  1      
.L_36960:                                        #        0x368c6  0      
  nop                                            #  71    0x368c6  1      
  nop                                            #  72    0x368c7  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x368c8  5      
  movl %eax, %edi                                #  74    0x368cd  2      
  movl $0x100202c8, %esi                         #  75    0x368cf  5      
  nop                                            #  76    0x368d4  1      
  nop                                            #  77    0x368d5  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x368d6  5      
  movl $0x10030d70, %edi                         #  79    0x368db  5      
  movl %eax, 0xfffa492(%rip)                     #  80    0x368e0  6      
  nop                                            #  81    0x368e6  1      
  nop                                            #  82    0x368e7  1      
  callq .__cxa_guard_release                     #  83    0x368e8  5      
  jmpq .L_36940                                  #  84    0x368ed  5      
  nop                                            #  85    0x368f2  1      
  nop                                            #  86    0x368f3  1      
.L_369e0:                                        #        0x368f4  0      
  movl %eax, %ebx                                #  87    0x368f4  2      
  movl $0x10030d70, %edi                         #  88    0x368f6  5      
  nop                                            #  89    0x368fb  1      
  nop                                            #  90    0x368fc  1      
  callq .__cxa_guard_abort                       #  91    0x368fd  5      
  movl %ebx, %edi                                #  92    0x36902  2      
  nop                                            #  93    0x36904  1      
  nop                                            #  94    0x36905  1      
  callq ._Unwind_Resume                          #  95    0x36906  5      
  jmpq .L_369e0                                  #  96    0x3690b  5      
  nop                                            #  97    0x36910  1      
  nop                                            #  98    0x36911  1      
                                                                          
.size _ZNK2pp10InputEvent12GetModifiersEv, .-_ZNK2pp10InputEvent12GetModifiersEv

