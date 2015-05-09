  .text
  .globl _ZNSs6assignERKSs
  .type _ZNSs6assignERKSs, @function

#! file-offset 0x47020
#! rip-offset  0x47020
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs6assignERKSs:                      #        0x47020  0      
  pushq %rbx                             #  1     0x47020  2      
  movl %esi, %esi                        #  2     0x47022  2      
  movl %edi, %ebx                        #  3     0x47024  2      
  subl $0x20, %esp                       #  4     0x47026  3      
  addq %r15, %rsp                        #  5     0x47029  3      
  movl %ebx, %ebx                        #  6     0x4702c  2      
  movl (%r15,%rbx,1), %edx               #  7     0x4702e  4      
  movl %esi, %esi                        #  8     0x47032  2      
  movl (%r15,%rsi,1), %edi               #  9     0x47034  4      
  cmpl %edi, %edx                        #  10    0x47038  2      
  je .L_470c0                            #  11    0x4703a  6      
  nop                                    #  12    0x47040  1      
  subl $0xc, %edi                        #  13    0x47041  3      
  movl %edi, %edi                        #  14    0x47044  2      
  movl 0x8(%r15,%rdi,1), %eax            #  15    0x47046  5      
  testl %eax, %eax                       #  16    0x4704b  2      
  js .L_470e0                            #  17    0x4704d  6      
  movl $0x10031da0, %ecx                 #  18    0x47053  5      
  cmpl %ecx, %edi                        #  19    0x47058  2      
  jne .L_47120                           #  20    0x4705a  6      
  nop                                    #  21    0x47060  1      
.L_47060:                                #        0x47061  0      
  leal 0xc(%rdi), %eax                   #  22    0x47061  3      
  nop                                    #  23    0x47064  1      
  nop                                    #  24    0x47065  1      
.L_47080:                                #        0x47066  0      
  leal -0xc(%rdx), %edi                  #  25    0x47066  3      
  cmpl %ecx, %edi                        #  26    0x47069  2      
  jne .L_47140                           #  27    0x4706b  6      
  nop                                    #  28    0x47071  1      
  nop                                    #  29    0x47072  1      
.L_470a0:                                #        0x47073  0      
  movl %ebx, %ebx                        #  30    0x47073  2      
  movl %eax, (%r15,%rbx,1)               #  31    0x47075  4      
  nop                                    #  32    0x47079  1      
  nop                                    #  33    0x4707a  1      
.L_470c0:                                #        0x4707b  0      
  movl %ebx, %eax                        #  34    0x4707b  2      
  addl $0x20, %esp                       #  35    0x4707d  3      
  addq %r15, %rsp                        #  36    0x47080  3      
  popq %rbx                              #  37    0x47083  2      
  popq %r11                              #  38    0x47085  3      
  andl $0xffffffe0, %r11d                #  39    0x47088  7      
  addq %r15, %r11                        #  40    0x4708f  3      
  jmpq %r11                              #  41    0x47092  3      
  nop                                    #  42    0x47095  1      
.L_470e0:                                #        0x47096  0      
  leal 0x1f(%rsp), %esi                  #  43    0x47096  4      
  xorl %edx, %edx                        #  44    0x4709a  2      
  nop                                    #  45    0x4709c  1      
  nop                                    #  46    0x4709d  1      
  callq ._ZNSs4_Rep8_M_cloneERKSaIcEj    #  47    0x4709e  5      
  movl %eax, %eax                        #  48    0x470a3  2      
  movl $0x10031da0, %ecx                 #  49    0x470a5  5      
  movl %ebx, %ebx                        #  50    0x470aa  2      
  movl (%r15,%rbx,1), %edx               #  51    0x470ac  4      
  jmpq .L_47080                          #  52    0x470b0  5      
  nop                                    #  53    0x470b5  1      
.L_47120:                                #        0x470b6  0      
  addl $0x1, %eax                        #  54    0x470b6  3      
  movl %edi, %edi                        #  55    0x470b9  2      
  movl %eax, 0x8(%r15,%rdi,1)            #  56    0x470bb  5      
  jmpq .L_47060                          #  57    0x470c0  5      
  xchgw %ax, %ax                         #  58    0x470c5  3      
  nop                                    #  59    0x470c8  1      
.L_47140:                                #        0x470c9  0      
  movl %edi, %edi                        #  60    0x470c9  2      
  movl 0x8(%r15,%rdi,1), %edx            #  61    0x470cb  5      
  leal -0x1(%rdx), %ecx                  #  62    0x470d0  3      
  testl %edx, %edx                       #  63    0x470d3  2      
  movl %edi, %edi                        #  64    0x470d5  2      
  movl %ecx, 0x8(%r15,%rdi,1)            #  65    0x470d7  5      
  jg .L_470a0                            #  66    0x470dc  6      
  leal 0x1f(%rsp), %esi                  #  67    0x470e2  4      
  nop                                    #  68    0x470e6  1      
  movq %rax, 0x8(%rsp)                   #  69    0x470e7  5      
  nop                                    #  70    0x470ec  1      
  nop                                    #  71    0x470ed  1      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  72    0x470ee  5      
  movq 0x8(%rsp), %rax                   #  73    0x470f3  5      
  jmpq .L_470a0                          #  74    0x470f8  5      
  nop                                    #  75    0x470fd  1      
  nop                                    #  76    0x470fe  1      
  movl %eax, %edi                        #  77    0x470ff  2      
  nop                                    #  78    0x47101  1      
  nop                                    #  79    0x47102  1      
  callq ._Unwind_Resume                  #  80    0x47103  5      
                                                                  
.size _ZNSs6assignERKSs, .-_ZNSs6assignERKSs

