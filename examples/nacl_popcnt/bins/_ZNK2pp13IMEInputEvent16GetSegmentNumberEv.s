  .text
  .globl _ZNK2pp13IMEInputEvent16GetSegmentNumberEv
  .type _ZNK2pp13IMEInputEvent16GetSegmentNumberEv, @function

#! file-offset 0x3d120
#! rip-offset  0x3d120
#! capacity    608 bytes

# Text                                           #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent16GetSegmentNumberEv:     #        0x3d120  0      
  cmpb $0x0, 0xfff3be9(%rip)                     #  1     0x3d120  7      
  pushq %rbx                                     #  2     0x3d127  2      
  movl %edi, %ebx                                #  3     0x3d129  2      
  je .L_3d180                                    #  4     0x3d12b  6      
  nop                                            #  5     0x3d131  1      
  nop                                            #  6     0x3d132  1      
.L_3d140:                                        #        0x3d133  0      
  movl 0xfff3bdf(%rip), %eax                     #  7     0x3d133  6      
  testq %rax, %rax                               #  8     0x3d139  3      
  jne .L_3d220                                   #  9     0x3d13c  6      
  xchgw %ax, %ax                                 #  10    0x3d142  3      
  nop                                            #  11    0x3d145  1      
.L_3d160:                                        #        0x3d146  0      
  popq %rbx                                      #  12    0x3d146  2      
  popq %r11                                      #  13    0x3d148  3      
  andl $0xffffffe0, %r11d                        #  14    0x3d14b  7      
  addq %r15, %r11                                #  15    0x3d152  3      
  jmpq %r11                                      #  16    0x3d155  3      
  nop                                            #  17    0x3d158  1      
  nop                                            #  18    0x3d159  1      
.L_3d180:                                        #        0x3d15a  0      
  movl $0x10030d10, %edi                         #  19    0x3d15a  5      
  nop                                            #  20    0x3d15f  1      
  nop                                            #  21    0x3d160  1      
  callq .__cxa_guard_acquire                     #  22    0x3d161  5      
  testl %eax, %eax                               #  23    0x3d166  2      
  je .L_3d140                                    #  24    0x3d168  6      
  nop                                            #  25    0x3d16e  1      
  nop                                            #  26    0x3d16f  1      
  callq ._ZN2pp6Module3GetEv                     #  27    0x3d170  5      
  movl %eax, %edi                                #  28    0x3d175  2      
  movl $0x10020674, %esi                         #  29    0x3d177  5      
  nop                                            #  30    0x3d17c  1      
  nop                                            #  31    0x3d17d  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  32    0x3d17e  5      
  movl $0x10030d10, %edi                         #  33    0x3d183  5      
  movl %eax, 0xfff3b8a(%rip)                     #  34    0x3d188  6      
  nop                                            #  35    0x3d18e  1      
  nop                                            #  36    0x3d18f  1      
  callq .__cxa_guard_release                     #  37    0x3d190  5      
  movl 0xfff3b7d(%rip), %eax                     #  38    0x3d195  6      
  testq %rax, %rax                               #  39    0x3d19b  3      
  je .L_3d160                                    #  40    0x3d19e  6      
  xchgw %ax, %ax                                 #  41    0x3d1a4  3      
  nop                                            #  42    0x3d1a7  1      
.L_3d220:                                        #        0x3d1a8  0      
  cmpb $0x0, 0xfff3b61(%rip)                     #  43    0x3d1a8  7      
  je .L_3d240                                    #  44    0x3d1af  6      
  movl %ebx, %ebx                                #  45    0x3d1b5  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  46    0x3d1b7  5      
  movl %eax, %eax                                #  47    0x3d1bc  2      
  movl 0xc(%r15,%rax,1), %eax                    #  48    0x3d1be  5      
  popq %rbx                                      #  49    0x3d1c3  2      
  andl $0xffffffe0, %eax                         #  50    0x3d1c5  5      
  addq %r15, %rax                                #  51    0x3d1ca  3      
  jmpq %rax                                      #  52    0x3d1cd  2      
.L_3d240:                                        #        0x3d1cf  0      
  movl $0x10030d10, %edi                         #  53    0x3d1cf  5      
  nop                                            #  54    0x3d1d4  1      
  nop                                            #  55    0x3d1d5  1      
  callq .__cxa_guard_acquire                     #  56    0x3d1d6  5      
  testl %eax, %eax                               #  57    0x3d1db  2      
  jne .L_3d2a0                                   #  58    0x3d1dd  6      
  nop                                            #  59    0x3d1e3  1      
  nop                                            #  60    0x3d1e4  1      
.L_3d280:                                        #        0x3d1e5  0      
  movl 0xfff3b2d(%rip), %eax                     #  61    0x3d1e5  6      
  movl %ebx, %ebx                                #  62    0x3d1eb  2      
  movl 0x4(%r15,%rbx,1), %edi                    #  63    0x3d1ed  5      
  popq %rbx                                      #  64    0x3d1f2  2      
  movl %eax, %eax                                #  65    0x3d1f4  2      
  movl 0xc(%r15,%rax,1), %eax                    #  66    0x3d1f6  5      
  andl $0xffffffe0, %eax                         #  67    0x3d1fb  5      
  addq %r15, %rax                                #  68    0x3d200  3      
  jmpq %rax                                      #  69    0x3d203  2      
  nop                                            #  70    0x3d205  1      
.L_3d2a0:                                        #        0x3d206  0      
  nop                                            #  71    0x3d206  1      
  nop                                            #  72    0x3d207  1      
  callq ._ZN2pp6Module3GetEv                     #  73    0x3d208  5      
  movl %eax, %edi                                #  74    0x3d20d  2      
  movl $0x10020674, %esi                         #  75    0x3d20f  5      
  nop                                            #  76    0x3d214  1      
  nop                                            #  77    0x3d215  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc  #  78    0x3d216  5      
  movl $0x10030d10, %edi                         #  79    0x3d21b  5      
  movl %eax, 0xfff3af2(%rip)                     #  80    0x3d220  6      
  nop                                            #  81    0x3d226  1      
  nop                                            #  82    0x3d227  1      
  callq .__cxa_guard_release                     #  83    0x3d228  5      
  jmpq .L_3d280                                  #  84    0x3d22d  5      
  nop                                            #  85    0x3d232  1      
  nop                                            #  86    0x3d233  1      
.L_3d320:                                        #        0x3d234  0      
  movl %eax, %ebx                                #  87    0x3d234  2      
  movl $0x10030d10, %edi                         #  88    0x3d236  5      
  nop                                            #  89    0x3d23b  1      
  nop                                            #  90    0x3d23c  1      
  callq .__cxa_guard_abort                       #  91    0x3d23d  5      
  movl %ebx, %edi                                #  92    0x3d242  2      
  nop                                            #  93    0x3d244  1      
  nop                                            #  94    0x3d245  1      
  callq ._Unwind_Resume                          #  95    0x3d246  5      
  jmpq .L_3d320                                  #  96    0x3d24b  5      
  nop                                            #  97    0x3d250  1      
  nop                                            #  98    0x3d251  1      
                                                                          
.size _ZNK2pp13IMEInputEvent16GetSegmentNumberEv, .-_ZNK2pp13IMEInputEvent16GetSegmentNumberEv

