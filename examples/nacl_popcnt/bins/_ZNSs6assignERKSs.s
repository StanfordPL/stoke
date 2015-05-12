  .text
  .globl _ZNSs6assignERKSs
  .type _ZNSs6assignERKSs, @function

#! file-offset 0x47040
#! rip-offset  0x47040
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs6assignERKSs:                      #        0x47040  0      
  pushq %rbx                             #  1     0x47040  2      
  movl %esi, %esi                        #  2     0x47042  2      
  movl %edi, %ebx                        #  3     0x47044  2      
  subl $0x20, %esp                       #  4     0x47046  3      
  addq %r15, %rsp                        #  5     0x47049  3      
  movl %ebx, %ebx                        #  6     0x4704c  2      
  movl (%r15,%rbx,1), %edx               #  7     0x4704e  4      
  movl %esi, %esi                        #  8     0x47052  2      
  movl (%r15,%rsi,1), %edi               #  9     0x47054  4      
  cmpl %edi, %edx                        #  10    0x47058  2      
  je .L_470e0                            #  11    0x4705a  6      
  nop                                    #  12    0x47060  1      
  subl $0xc, %edi                        #  13    0x47061  3      
  movl %edi, %edi                        #  14    0x47064  2      
  movl 0x8(%r15,%rdi,1), %eax            #  15    0x47066  5      
  testl %eax, %eax                       #  16    0x4706b  2      
  js .L_47100                            #  17    0x4706d  6      
  movl $0x10031da0, %ecx                 #  18    0x47073  5      
  cmpl %ecx, %edi                        #  19    0x47078  2      
  jne .L_47140                           #  20    0x4707a  6      
  nop                                    #  21    0x47080  1      
.L_47080:                                #        0x47081  0      
  leal 0xc(%rdi), %eax                   #  22    0x47081  3      
  nop                                    #  23    0x47084  1      
  nop                                    #  24    0x47085  1      
.L_470a0:                                #        0x47086  0      
  leal -0xc(%rdx), %edi                  #  25    0x47086  3      
  cmpl %ecx, %edi                        #  26    0x47089  2      
  jne .L_47160                           #  27    0x4708b  6      
  nop                                    #  28    0x47091  1      
  nop                                    #  29    0x47092  1      
.L_470c0:                                #        0x47093  0      
  movl %ebx, %ebx                        #  30    0x47093  2      
  movl %eax, (%r15,%rbx,1)               #  31    0x47095  4      
  nop                                    #  32    0x47099  1      
  nop                                    #  33    0x4709a  1      
.L_470e0:                                #        0x4709b  0      
  movl %ebx, %eax                        #  34    0x4709b  2      
  addl $0x20, %esp                       #  35    0x4709d  3      
  addq %r15, %rsp                        #  36    0x470a0  3      
  popq %rbx                              #  37    0x470a3  2      
  popq %r11                              #  38    0x470a5  3      
  andl $0xffffffe0, %r11d                #  39    0x470a8  7      
  addq %r15, %r11                        #  40    0x470af  3      
  jmpq %r11                              #  41    0x470b2  3      
  nop                                    #  42    0x470b5  1      
.L_47100:                                #        0x470b6  0      
  leal 0x1f(%rsp), %esi                  #  43    0x470b6  4      
  xorl %edx, %edx                        #  44    0x470ba  2      
  nop                                    #  45    0x470bc  1      
  nop                                    #  46    0x470bd  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj    #  47    0x470be  5      
  movl %eax, %eax                        #  48    0x470c3  2      
  movl $0x10031da0, %ecx                 #  49    0x470c5  5      
  movl %ebx, %ebx                        #  50    0x470ca  2      
  movl (%r15,%rbx,1), %edx               #  51    0x470cc  4      
  jmpq .L_470a0                          #  52    0x470d0  5      
  nop                                    #  53    0x470d5  1      
.L_47140:                                #        0x470d6  0      
  addl $0x1, %eax                        #  54    0x470d6  3      
  movl %edi, %edi                        #  55    0x470d9  2      
  movl %eax, 0x8(%r15,%rdi,1)            #  56    0x470db  5      
  jmpq .L_47080                          #  57    0x470e0  5      
  xchgw %ax, %ax                         #  58    0x470e5  3      
  nop                                    #  59    0x470e8  1      
.L_47160:                                #        0x470e9  0      
  movl %edi, %edi                        #  60    0x470e9  2      
  movl 0x8(%r15,%rdi,1), %edx            #  61    0x470eb  5      
  leal -0x1(%rdx), %ecx                  #  62    0x470f0  3      
  testl %edx, %edx                       #  63    0x470f3  2      
  movl %edi, %edi                        #  64    0x470f5  2      
  movl %ecx, 0x8(%r15,%rdi,1)            #  65    0x470f7  5      
  jg .L_470c0                            #  66    0x470fc  6      
  leal 0x1f(%rsp), %esi                  #  67    0x47102  4      
  nop                                    #  68    0x47106  1      
  movq %rax, 0x8(%rsp)                   #  69    0x47107  5      
  nop                                    #  70    0x4710c  1      
  nop                                    #  71    0x4710d  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  72    0x4710e  5      
  movq 0x8(%rsp), %rax                   #  73    0x47113  5      
  jmpq .L_470c0                          #  74    0x47118  5      
  nop                                    #  75    0x4711d  1      
  nop                                    #  76    0x4711e  1      
  movl %eax, %edi                        #  77    0x4711f  2      
  nop                                    #  78    0x47121  1      
  nop                                    #  79    0x47122  1      
  callq ._Unwind_Resume                  #  80    0x47123  5      
                                                                  
.size _ZNSs6assignERKSs, .-_ZNSs6assignERKSs

