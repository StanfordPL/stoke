  .text
  .globl _ZNK2pp13IMEInputEvent16GetTargetSegmentEv
  .type _ZNK2pp13IMEInputEvent16GetTargetSegmentEv, @function

#! file-offset 0x3e820
#! rip-offset  0x3e820
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent16GetTargetSegmentEv:     #        0x3e820  0      
  cmpb $0x0, 0xfff24e9(%rip)                     #  1     0x3e820  7      
  pushq %rbx                                     #  2     0x3e827  2      
  movl %edi, %ebx                                #  3     0x3e829  2      
  je .L_3e880                                    #  4     0x3e82b  6      
  nop                                            #  5     0x3e831  1      
  nop                                            #  6     0x3e832  1      
.L_3e840:                                        #        0x3e833  0      
  movl 0xfff24df(%rip), %eax                     #  7     0x3e833  6      
  testq %rax, %rax                               #  8     0x3e839  3      
  jne .L_3e920                                   #  9     0x3e83c  6      
  xchgw %ax, %ax                                 #  10    0x3e842  3      
  nop                                            #  11    0x3e845  1      
.L_3e860:                                        #        0x3e846  0      
  popq %rbx                                      #  12    0x3e846  2      
  popq %r11                                      #  13    0x3e848  3      
  andl $0xffffffe0, %r11d                        #  14    0x3e84b  7      
  addq %r15, %r11                                #  15    0x3e852  3      
  jmpq %r11                                      #  16    0x3e855  3      
  nop                                            #  17    0x3e858  1      
  nop                                            #  18    0x3e859  1      
.L_3e880:                                        #        0x3e85a  0      
  movl $0x10030d10, %edi                         #  19    0x3e85a  5      
  nop                                            #  20    0x3e85f  1      
  nop                                            #  21    0x3e860  1      
  callq .__cxa_guard_acquire                     #  22    0x3e861  5      
  testl %eax, %eax                               #  23    0x3e866  2      
  je .L_3e840                                    #  24    0x3e868  6      
  nop                                            #  25    0x3e86e  1      
  nop                                            #  26    0x3e86f  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3e870  5      
  movl %eax, %edi                                #  28    0x3e875  2      
  movl $0x10020674, %esi                         #  29    0x3e877  5      
  nop                                            #  30    0x3e87c  1      
  nop                                            #  31    0x3e87d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3e87e  5      
  movl $0x10030d10, %edi                         #  33    0x3e883  5      
  movl %eax, 0xfff248a(%rip)                     #  34    0x3e888  6      
  nop                                            #  35    0x3e88e  1      
  nop                                            #  36    0x3e88f  1      
  callq .__cxa_guard_release                     #  37    0x3e890  5      
  movl 0xfff247d(%rip), %eax                     #  38    0x3e895  6      
  testq %rax, %rax                               #  39    0x3e89b  3      
  je .L_3e860                                    #  40    0x3e89e  6      
  xchgw %ax, %ax                                 #  41    0x3e8a4  3      
  nop                                            #  42    0x3e8a7  1      
.L_3e920:                                        #        0x3e8a8  0      
  cmpb $0x0, 0xfff2461(%rip)                     #  43    0x3e8a8  7      
  je .L_3e940                                    #  44    0x3e8af  6      
  movl %ebx, %ebx                                #  45    0x3e8b5  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3e8b7  5      
  movl %eax, %eax                                #  47    0x3e8bc  2      
  movl 0x14(%r15,%rax,1), %eax                   #  48    0x3e8be  5      
  popq %rbx                                      #  49    0x3e8c3  2      
  andl $0xffffffe0, %eax                         #  50    0x3e8c5  5      
  addq %r15, %rax                                #  51    0x3e8ca  3      
  jmpq %rax                                      #  52    0x3e8cd  2      
.L_3e940:                                        #        0x3e8cf  0      
  movl $0x10030d10, %edi                         #  53    0x3e8cf  5      
  nop                                            #  54    0x3e8d4  1      
  nop                                            #  55    0x3e8d5  1      
  callq .__cxa_guard_acquire                     #  56    0x3e8d6  5      
  testl %eax, %eax                               #  57    0x3e8db  2      
  jne .L_3e9a0                                   #  58    0x3e8dd  6      
  nop                                            #  59    0x3e8e3  1      
  nop                                            #  60    0x3e8e4  1      
.L_3e980:                                        #        0x3e8e5  0      
  movl 0xfff242d(%rip), %eax                     #  61    0x3e8e5  6      
  movl %ebx, %ebx                                #  62    0x3e8eb  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3e8ed  5      
  popq %rbx                                      #  64    0x3e8f2  2      
  movl %eax, %eax                                #  65    0x3e8f4  2      
  movl 0x14(%r15,%rax,1), %eax                   #  66    0x3e8f6  5      
  andl $0xffffffe0, %eax                         #  67    0x3e8fb  5      
  addq %r15, %rax                                #  68    0x3e900  3      
  jmpq %rax                                      #  69    0x3e903  2      
  nop                                            #  70    0x3e905  1      
.L_3e9a0:                                        #        0x3e906  0      
  nop                                            #  71    0x3e906  1      
  nop                                            #  72    0x3e907  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3e908  5      
  movl %eax, %edi                                #  74    0x3e90d  2      
  movl $0x10020674, %esi                         #  75    0x3e90f  5      
  nop                                            #  76    0x3e914  1      
  nop                                            #  77    0x3e915  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3e916  5      
  movl $0x10030d10, %edi                         #  79    0x3e91b  5      
  movl %eax, 0xfff23f2(%rip)                     #  80    0x3e920  6      
  nop                                            #  81    0x3e926  1      
  nop                                            #  82    0x3e927  1      
  callq .__cxa_guard_release                     #  83    0x3e928  5      
  jmpq .L_3e980                                  #  84    0x3e92d  5      
  nop                                            #  85    0x3e932  1      
  nop                                            #  86    0x3e933  1      
.L_3ea20:                                        #        0x3e934  0      
  movl %eax, %ebx                                #  87    0x3e934  2      
  movl $0x10030d10, %edi                         #  88    0x3e936  5      
  nop                                            #  89    0x3e93b  1      
  nop                                            #  90    0x3e93c  1      
  callq .__cxa_guard_abort                       #  91    0x3e93d  5      
  movl %ebx, %edi                                #  92    0x3e942  2      
  nop                                            #  93    0x3e944  1      
  nop                                            #  94    0x3e945  1      
  callq ._Unwind_Resume                          #  95    0x3e946  5      
  jmpq .L_3ea20                                  #  96    0x3e94b  5      
  nop                                            #  97    0x3e950  1      
  nop                                            #  98    0x3e951  1      
                                                                          
.size _ZNK2pp13IMEInputEvent16GetTargetSegmentEv, .-_ZNK2pp13IMEInputEvent16GetTargetSegmentEv

