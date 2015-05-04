  .text
  .globl __cxa_call_unexpected
  .type __cxa_call_unexpected, @function

#! file-offset 0x4a280
#! rip-offset  0x4a280
#! capacity    608 bytes

# Text                                                                   #  Line  RIP      Bytes  
.__cxa_call_unexpected:                                                  #        0x4a280  0      
  movq %rbx, -0x20(%rsp)                                                 #  1     0x4a280  5      
  movl %edi, %ebx                                                        #  2     0x4a285  2      
  movq %r12, -0x18(%rsp)                                                 #  3     0x4a287  5      
  movq %r13, -0x10(%rsp)                                                 #  4     0x4a28c  5      
  movl %ebx, %edi                                                        #  5     0x4a291  2      
  movq %r14, -0x8(%rsp)                                                  #  6     0x4a293  5      
  subl $0x58, %esp                                                       #  7     0x4a298  3      
  addq %r15, %rsp                                                        #  8     0x4a29b  3      
  xchgw %ax, %ax                                                         #  9     0x4a29e  3      
  nop                                                                    #  10    0x4a2a1  1      
  nop                                                                    #  11    0x4a2a2  1      
  callq .__cxa_begin_catch                                               #  12    0x4a2a3  5      
  leal -0x30(%rbx), %eax                                                 #  13    0x4a2a8  3      
  movl %eax, %eax                                                        #  14    0x4a2ab  2      
  movl 0x24(%r15,%rax,1), %edx                                           #  15    0x4a2ad  5      
  movl %eax, %eax                                                        #  16    0x4a2b2  2      
  movl 0x8(%r15,%rax,1), %edi                                            #  17    0x4a2b4  5      
  movl %eax, %eax                                                        #  18    0x4a2b9  2      
  movl 0x18(%r15,%rax,1), %ebx                                           #  19    0x4a2bb  5      
  movl %eax, %eax                                                        #  20    0x4a2c0  2      
  movl 0x20(%r15,%rax,1), %r12d                                          #  21    0x4a2c2  5      
  nop                                                                    #  22    0x4a2c7  1      
  movl %eax, %eax                                                        #  23    0x4a2c8  2      
  movl 0xc(%r15,%rax,1), %r13d                                           #  24    0x4a2ca  5      
  movl %edx, 0x18(%rsp)                                                  #  25    0x4a2cf  4      
  nop                                                                    #  26    0x4a2d3  1      
  nop                                                                    #  27    0x4a2d4  1      
  callq ._ZN10__cxxabiv112__unexpectedEPFvvE                             #  28    0x4a2d5  5      
  movl %eax, %edi                                                        #  29    0x4a2da  2      
  nop                                                                    #  30    0x4a2dc  1      
  nop                                                                    #  31    0x4a2dd  1      
  callq .__cxa_begin_catch                                               #  32    0x4a2de  5      
  nop                                                                    #  33    0x4a2e3  1      
  nop                                                                    #  34    0x4a2e4  1      
  callq .__cxa_get_globals_fast                                          #  35    0x4a2e5  5      
  movl %eax, %eax                                                        #  36    0x4a2ea  2      
  movl %eax, %eax                                                        #  37    0x4a2ec  2      
  movl (%r15,%rax,1), %eax                                               #  38    0x4a2ee  4      
  movl %eax, %eax                                                        #  39    0x4a2f2  2      
  testb $0x1, 0x30(%r15,%rax,1)                                          #  40    0x4a2f4  6      
  leal 0x30(%rax), %r14d                                                 #  41    0x4a2fa  4      
  je .L_4a3e0                                                            #  42    0x4a2fe  6      
  subl $0x30, %r14d                                                      #  43    0x4a304  4      
  xchgw %ax, %ax                                                         #  44    0x4a308  3      
  movl %r14d, %r14d                                                      #  45    0x4a30b  3      
  movl (%r15,%r14,1), %r14d                                              #  46    0x4a30e  4      
  nop                                                                    #  47    0x4a312  1      
  nop                                                                    #  48    0x4a313  1      
.L_4a380:                                                                #        0x4a314  0      
  leal 0x10(%rsp), %eax                                                  #  49    0x4a314  4      
  movl %r12d, %esi                                                       #  50    0x4a318  3      
  xorl %edi, %edi                                                        #  51    0x4a31b  2      
  movl %eax, %edx                                                        #  52    0x4a31d  2      
  movq %rax, 0x8(%rsp)                                                   #  53    0x4a31f  5      
  nop                                                                    #  54    0x4a324  1      
  callq ._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info  #  55    0x4a325  5      
  leal -0x50(%r14), %eax                                                 #  56    0x4a32a  4      
  movl 0x8(%rsp), %edi                                                   #  57    0x4a32e  4      
  movl %ebx, %ecx                                                        #  58    0x4a332  2      
  movl %r14d, %edx                                                       #  59    0x4a334  3      
  movl %eax, %eax                                                        #  60    0x4a337  2      
  movl (%r15,%rax,1), %esi                                               #  61    0x4a339  4      
  nop                                                                    #  62    0x4a33d  1      
  callq ._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl   #  63    0x4a33e  5      
  testb %al, %al                                                         #  64    0x4a343  2      
  je .L_4a400                                                            #  65    0x4a345  6      
  nop                                                                    #  66    0x4a34b  1      
  nop                                                                    #  67    0x4a34c  1      
  callq .__cxa_rethrow                                                   #  68    0x4a34d  5      
.L_4a3e0:                                                                #        0x4a352  0      
  addl $0x20, %r14d                                                      #  69    0x4a352  4      
  jmpq .L_4a380                                                          #  70    0x4a356  5      
  nop                                                                    #  71    0x4a35b  1      
  nop                                                                    #  72    0x4a35c  1      
.L_4a400:                                                                #        0x4a35d  0      
  movl 0x8(%rsp), %edi                                                   #  73    0x4a35d  4      
  movl %ebx, %ecx                                                        #  74    0x4a361  2      
  xorl %edx, %edx                                                        #  75    0x4a363  2      
  movl $0x10020ee4, %esi                                                 #  76    0x4a365  5      
  nop                                                                    #  77    0x4a36a  1      
  callq ._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl   #  78    0x4a36b  5      
  testb %al, %al                                                         #  79    0x4a370  2      
  je .L_4a4c0                                                            #  80    0x4a372  6      
  movl $0x4, %edi                                                        #  81    0x4a378  5      
  nop                                                                    #  82    0x4a37d  1      
  callq .__cxa_allocate_exception                                        #  83    0x4a37e  5      
  movl %eax, %edi                                                        #  84    0x4a383  2      
  movl $0x4c800, %edx                                                    #  85    0x4a385  5      
  movl $0x10020ee4, %esi                                                 #  86    0x4a38a  5      
  movl %edi, %edi                                                        #  87    0x4a38f  2      
  movl $0x10020e28, (%r15,%rdi,1)                                        #  88    0x4a391  8      
  nop                                                                    #  89    0x4a399  1      
  callq .__cxa_throw                                                     #  90    0x4a39a  5      
  movl %eax, %r14d                                                       #  91    0x4a39f  3      
  nop                                                                    #  92    0x4a3a2  1      
  nop                                                                    #  93    0x4a3a3  1      
  callq .__cxa_end_catch                                                 #  94    0x4a3a4  5      
  nop                                                                    #  95    0x4a3a9  1      
  nop                                                                    #  96    0x4a3aa  1      
  callq .__cxa_end_catch                                                 #  97    0x4a3ab  5      
  movl %r14d, %edi                                                       #  98    0x4a3b0  3      
  nop                                                                    #  99    0x4a3b3  1      
  nop                                                                    #  100   0x4a3b4  1      
  callq ._Unwind_Resume                                                  #  101   0x4a3b5  5      
.L_4a4c0:                                                                #        0x4a3ba  0      
  movl %r13d, %edi                                                       #  102   0x4a3ba  3      
  nop                                                                    #  103   0x4a3bd  1      
  nop                                                                    #  104   0x4a3be  1      
  callq ._ZN10__cxxabiv111__terminateEPFvvE                              #  105   0x4a3bf  5      
                                                                                                  
.size __cxa_call_unexpected, .-__cxa_call_unexpected

