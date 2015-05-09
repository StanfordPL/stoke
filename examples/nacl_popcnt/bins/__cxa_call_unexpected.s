  .text
  .globl __cxa_call_unexpected
  .type __cxa_call_unexpected, @function

#! file-offset 0x4a1e0
#! rip-offset  0x4a1e0
#! capacity    608 bytes

# Text                                                                   #  Line  RIP      Bytes  
.__cxa_call_unexpected:                                                  #        0x4a1e0  0      
  movq %rbx, -0x20(%rsp)                                                 #  1     0x4a1e0  5      
  movl %edi, %ebx                                                        #  2     0x4a1e5  2      
  movq %r12, -0x18(%rsp)                                                 #  3     0x4a1e7  5      
  movq %r13, -0x10(%rsp)                                                 #  4     0x4a1ec  5      
  movl %ebx, %edi                                                        #  5     0x4a1f1  2      
  movq %r14, -0x8(%rsp)                                                  #  6     0x4a1f3  5      
  subl $0x58, %esp                                                       #  7     0x4a1f8  3      
  addq %r15, %rsp                                                        #  8     0x4a1fb  3      
  xchgw %ax, %ax                                                         #  9     0x4a1fe  3      
  nop                                                                    #  10    0x4a201  1      
  nop                                                                    #  11    0x4a202  1      
  callq .__cxa_begin_catch                                               #  12    0x4a203  5      
  leal -0x30(%rbx), %eax                                                 #  13    0x4a208  3      
  movl %eax, %eax                                                        #  14    0x4a20b  2      
  movl 0x24(%r15,%rax,1), %edx                                           #  15    0x4a20d  5      
  movl %eax, %eax                                                        #  16    0x4a212  2      
  movl 0x8(%r15,%rax,1), %edi                                            #  17    0x4a214  5      
  movl %eax, %eax                                                        #  18    0x4a219  2      
  movl 0x18(%r15,%rax,1), %ebx                                           #  19    0x4a21b  5      
  movl %eax, %eax                                                        #  20    0x4a220  2      
  movl 0x20(%r15,%rax,1), %r12d                                          #  21    0x4a222  5      
  nop                                                                    #  22    0x4a227  1      
  movl %eax, %eax                                                        #  23    0x4a228  2      
  movl 0xc(%r15,%rax,1), %r13d                                           #  24    0x4a22a  5      
  movl %edx, 0x18(%rsp)                                                  #  25    0x4a22f  4      
  nop                                                                    #  26    0x4a233  1      
  nop                                                                    #  27    0x4a234  1      
  callq ._ZN10__cxxabiv112__unexpectedEPFvvE                             #  28    0x4a235  5      
  movl %eax, %edi                                                        #  29    0x4a23a  2      
  nop                                                                    #  30    0x4a23c  1      
  nop                                                                    #  31    0x4a23d  1      
  callq .__cxa_begin_catch                                               #  32    0x4a23e  5      
  nop                                                                    #  33    0x4a243  1      
  nop                                                                    #  34    0x4a244  1      
  callq .__cxa_get_globals_fast                                          #  35    0x4a245  5      
  movl %eax, %eax                                                        #  36    0x4a24a  2      
  movl %eax, %eax                                                        #  37    0x4a24c  2      
  movl (%r15,%rax,1), %eax                                               #  38    0x4a24e  4      
  movl %eax, %eax                                                        #  39    0x4a252  2      
  testb $0x1, 0x30(%r15,%rax,1)                                          #  40    0x4a254  6      
  leal 0x30(%rax), %r14d                                                 #  41    0x4a25a  4      
  je .L_4a340                                                            #  42    0x4a25e  6      
  subl $0x30, %r14d                                                      #  43    0x4a264  4      
  xchgw %ax, %ax                                                         #  44    0x4a268  3      
  movl %r14d, %r14d                                                      #  45    0x4a26b  3      
  movl (%r15,%r14,1), %r14d                                              #  46    0x4a26e  4      
  nop                                                                    #  47    0x4a272  1      
  nop                                                                    #  48    0x4a273  1      
.L_4a2e0:                                                                #        0x4a274  0      
  leal 0x10(%rsp), %eax                                                  #  49    0x4a274  4      
  movl %r12d, %esi                                                       #  50    0x4a278  3      
  xorl %edi, %edi                                                        #  51    0x4a27b  2      
  movl %eax, %edx                                                        #  52    0x4a27d  2      
  movq %rax, 0x8(%rsp)                                                   #  53    0x4a27f  5      
  nop                                                                    #  54    0x4a284  1      
  callq ._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info  #  55    0x4a285  5      
  leal -0x50(%r14), %eax                                                 #  56    0x4a28a  4      
  movl 0x8(%rsp), %edi                                                   #  57    0x4a28e  4      
  movl %ebx, %ecx                                                        #  58    0x4a292  2      
  movl %r14d, %edx                                                       #  59    0x4a294  3      
  movl %eax, %eax                                                        #  60    0x4a297  2      
  movl (%r15,%rax,1), %esi                                               #  61    0x4a299  4      
  nop                                                                    #  62    0x4a29d  1      
  callq ._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl   #  63    0x4a29e  5      
  testb %al, %al                                                         #  64    0x4a2a3  2      
  je .L_4a360                                                            #  65    0x4a2a5  6      
  nop                                                                    #  66    0x4a2ab  1      
  nop                                                                    #  67    0x4a2ac  1      
  callq .__cxa_rethrow                                                   #  68    0x4a2ad  5      
.L_4a340:                                                                #        0x4a2b2  0      
  addl $0x20, %r14d                                                      #  69    0x4a2b2  4      
  jmpq .L_4a2e0                                                          #  70    0x4a2b6  5      
  nop                                                                    #  71    0x4a2bb  1      
  nop                                                                    #  72    0x4a2bc  1      
.L_4a360:                                                                #        0x4a2bd  0      
  movl 0x8(%rsp), %edi                                                   #  73    0x4a2bd  4      
  movl %ebx, %ecx                                                        #  74    0x4a2c1  2      
  xorl %edx, %edx                                                        #  75    0x4a2c3  2      
  movl $0x10020ee4, %esi                                                 #  76    0x4a2c5  5      
  nop                                                                    #  77    0x4a2ca  1      
  callq ._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl   #  78    0x4a2cb  5      
  testb %al, %al                                                         #  79    0x4a2d0  2      
  je .L_4a420                                                            #  80    0x4a2d2  6      
  movl $0x4, %edi                                                        #  81    0x4a2d8  5      
  nop                                                                    #  82    0x4a2dd  1      
  callq .__cxa_allocate_exception                                        #  83    0x4a2de  5      
  movl %eax, %edi                                                        #  84    0x4a2e3  2      
  movl $0x4c760, %edx                                                    #  85    0x4a2e5  5      
  movl $0x10020ee4, %esi                                                 #  86    0x4a2ea  5      
  movl %edi, %edi                                                        #  87    0x4a2ef  2      
  movl $0x10020e28, (%r15,%rdi,1)                                        #  88    0x4a2f1  8      
  nop                                                                    #  89    0x4a2f9  1      
  callq .__cxa_throw                                                     #  90    0x4a2fa  5      
  movl %eax, %r14d                                                       #  91    0x4a2ff  3      
  nop                                                                    #  92    0x4a302  1      
  nop                                                                    #  93    0x4a303  1      
  callq .__cxa_end_catch                                                 #  94    0x4a304  5      
  nop                                                                    #  95    0x4a309  1      
  nop                                                                    #  96    0x4a30a  1      
  callq .__cxa_end_catch                                                 #  97    0x4a30b  5      
  movl %r14d, %edi                                                       #  98    0x4a310  3      
  nop                                                                    #  99    0x4a313  1      
  nop                                                                    #  100   0x4a314  1      
  callq ._Unwind_Resume                                                  #  101   0x4a315  5      
.L_4a420:                                                                #        0x4a31a  0      
  movl %r13d, %edi                                                       #  102   0x4a31a  3      
  nop                                                                    #  103   0x4a31d  1      
  nop                                                                    #  104   0x4a31e  1      
  callq ._ZN10__cxxabiv111__terminateEPFvvE                              #  105   0x4a31f  5      
                                                                                                  
.size __cxa_call_unexpected, .-__cxa_call_unexpected

