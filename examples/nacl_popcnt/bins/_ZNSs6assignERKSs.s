  .text
  .globl _ZNSs6assignERKSs
  .type _ZNSs6assignERKSs, @function

#! file-offset 0x470c0
#! rip-offset  0x470c0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs6assignERKSs:                      #        0x470c0  0      
  pushq %rbx                             #  1     0x470c0  2      
  movl %esi, %esi                        #  2     0x470c2  2      
  movl %edi, %ebx                        #  3     0x470c4  2      
  subl $0x20, %esp                       #  4     0x470c6  3      
  addq %r15, %rsp                        #  5     0x470c9  3      
  movl %ebx, %ebx                        #  6     0x470cc  2      
  movl (%r15,%rbx,1), %edx               #  7     0x470ce  4      
  movl %esi, %esi                        #  8     0x470d2  2      
  movl (%r15,%rsi,1), %edi               #  9     0x470d4  4      
  cmpl %edi, %edx                        #  10    0x470d8  2      
  je .L_47160                            #  11    0x470da  6      
  nop                                    #  12    0x470e0  1      
  subl $0xc, %edi                        #  13    0x470e1  3      
  movl %edi, %edi                        #  14    0x470e4  2      
  movl 0x8(%r15,%rdi,1), %eax            #  15    0x470e6  5      
  testl %eax, %eax                       #  16    0x470eb  2      
  js .L_47180                            #  17    0x470ed  6      
  movl $0x10031da0, %ecx                 #  18    0x470f3  5      
  cmpl %ecx, %edi                        #  19    0x470f8  2      
  jne .L_471c0                           #  20    0x470fa  6      
  nop                                    #  21    0x47100  1      
.L_47100:                                #        0x47101  0      
  leal 0xc(%rdi), %eax                   #  22    0x47101  3      
  nop                                    #  23    0x47104  1      
  nop                                    #  24    0x47105  1      
.L_47120:                                #        0x47106  0      
  leal -0xc(%rdx), %edi                  #  25    0x47106  3      
  cmpl %ecx, %edi                        #  26    0x47109  2      
  jne .L_471e0                           #  27    0x4710b  6      
  nop                                    #  28    0x47111  1      
  nop                                    #  29    0x47112  1      
.L_47140:                                #        0x47113  0      
  movl %ebx, %ebx                        #  30    0x47113  2      
  movl %eax, (%r15,%rbx,1)               #  31    0x47115  4      
  nop                                    #  32    0x47119  1      
  nop                                    #  33    0x4711a  1      
.L_47160:                                #        0x4711b  0      
  movl %ebx, %eax                        #  34    0x4711b  2      
  addl $0x20, %esp                       #  35    0x4711d  3      
  addq %r15, %rsp                        #  36    0x47120  3      
  popq %rbx                              #  37    0x47123  2      
  popq %r11                              #  38    0x47125  3      
  andl $0xffffffe0, %r11d                #  39    0x47128  7      
  addq %r15, %r11                        #  40    0x4712f  3      
  jmpq %r11                              #  41    0x47132  3      
  nop                                    #  42    0x47135  1      
.L_47180:                                #        0x47136  0      
  leal 0x1f(%rsp), %esi                  #  43    0x47136  4      
  xorl %edx, %edx                        #  44    0x4713a  2      
  nop                                    #  45    0x4713c  1      
  nop                                    #  46    0x4713d  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj    #  47    0x4713e  5      
  movl %eax, %eax                        #  48    0x47143  2      
  movl $0x10031da0, %ecx                 #  49    0x47145  5      
  movl %ebx, %ebx                        #  50    0x4714a  2      
  movl (%r15,%rbx,1), %edx               #  51    0x4714c  4      
  jmpq .L_47120                          #  52    0x47150  5      
  nop                                    #  53    0x47155  1      
.L_471c0:                                #        0x47156  0      
  addl $0x1, %eax                        #  54    0x47156  3      
  movl %edi, %edi                        #  55    0x47159  2      
  movl %eax, 0x8(%r15,%rdi,1)            #  56    0x4715b  5      
  jmpq .L_47100                          #  57    0x47160  5      
  xchgw %ax, %ax                         #  58    0x47165  3      
  nop                                    #  59    0x47168  1      
.L_471e0:                                #        0x47169  0      
  movl %edi, %edi                        #  60    0x47169  2      
  movl 0x8(%r15,%rdi,1), %edx            #  61    0x4716b  5      
  leal -0x1(%rdx), %ecx                  #  62    0x47170  3      
  testl %edx, %edx                       #  63    0x47173  2      
  movl %edi, %edi                        #  64    0x47175  2      
  movl %ecx, 0x8(%r15,%rdi,1)            #  65    0x47177  5      
  jg .L_47140                            #  66    0x4717c  6      
  leal 0x1f(%rsp), %esi                  #  67    0x47182  4      
  nop                                    #  68    0x47186  1      
  movq %rax, 0x8(%rsp)                   #  69    0x47187  5      
  nop                                    #  70    0x4718c  1      
  nop                                    #  71    0x4718d  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  72    0x4718e  5      
  movq 0x8(%rsp), %rax                   #  73    0x47193  5      
  jmpq .L_47140                          #  74    0x47198  5      
  nop                                    #  75    0x4719d  1      
  nop                                    #  76    0x4719e  1      
  movl %eax, %edi                        #  77    0x4719f  2      
  nop                                    #  78    0x471a1  1      
  nop                                    #  79    0x471a2  1      
  callq ._Unwind_Resume                  #  80    0x471a3  5      
                                                                  
.size _ZNSs6assignERKSs, .-_ZNSs6assignERKSs

