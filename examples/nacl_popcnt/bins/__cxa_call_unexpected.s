  .text
  .globl __cxa_call_unexpected
  .type __cxa_call_unexpected, @function

#! file-offset 0x4a200
#! rip-offset  0x4a200
#! capacity    608 bytes

# Text                                                                   #  Line  RIP      Bytes  
.__cxa_call_unexpected:                                                  #        0x4a200  0      
  movq %rbx, -0x20(%rsp)                                                 #  1     0x4a200  5      
  movl %edi, %ebx                                                        #  2     0x4a205  2      
  movq %r12, -0x18(%rsp)                                                 #  3     0x4a207  5      
  movq %r13, -0x10(%rsp)                                                 #  4     0x4a20c  5      
  movl %ebx, %edi                                                        #  5     0x4a211  2      
  movq %r14, -0x8(%rsp)                                                  #  6     0x4a213  5      
  subl $0x58, %esp                                                       #  7     0x4a218  3      
  addq %r15, %rsp                                                        #  8     0x4a21b  3      
  xchgw %ax, %ax                                                         #  9     0x4a21e  3      
  nop                                                                    #  10    0x4a221  1      
  nop                                                                    #  11    0x4a222  1      
  callq .__cxa_begin_catch                                               #  12    0x4a223  5      
  leal -0x30(%rbx), %eax                                                 #  13    0x4a228  3      
  movl %eax, %eax                                                        #  14    0x4a22b  2      
  movl 0x24(%r15,%rax,1), %edx                                           #  15    0x4a22d  5      
  movl %eax, %eax                                                        #  16    0x4a232  2      
  movl 0x8(%r15,%rax,1), %edi                                            #  17    0x4a234  5      
  movl %eax, %eax                                                        #  18    0x4a239  2      
  movl 0x18(%r15,%rax,1), %ebx                                           #  19    0x4a23b  5      
  movl %eax, %eax                                                        #  20    0x4a240  2      
  movl 0x20(%r15,%rax,1), %r12d                                          #  21    0x4a242  5      
  nop                                                                    #  22    0x4a247  1      
  movl %eax, %eax                                                        #  23    0x4a248  2      
  movl 0xc(%r15,%rax,1), %r13d                                           #  24    0x4a24a  5      
  movl %edx, 0x18(%rsp)                                                  #  25    0x4a24f  4      
  nop                                                                    #  26    0x4a253  1      
  nop                                                                    #  27    0x4a254  1      
  callq ._ZN10__cxxabiv112__unexpectedEPFvvE                             #  28    0x4a255  5      
  movl %eax, %edi                                                        #  29    0x4a25a  2      
  nop                                                                    #  30    0x4a25c  1      
  nop                                                                    #  31    0x4a25d  1      
  callq .__cxa_begin_catch                                               #  32    0x4a25e  5      
  nop                                                                    #  33    0x4a263  1      
  nop                                                                    #  34    0x4a264  1      
  callq .__cxa_get_globals_fast                                          #  35    0x4a265  5      
  movl %eax, %eax                                                        #  36    0x4a26a  2      
  movl %eax, %eax                                                        #  37    0x4a26c  2      
  movl (%r15,%rax,1), %eax                                               #  38    0x4a26e  4      
  movl %eax, %eax                                                        #  39    0x4a272  2      
  testb $0x1, 0x30(%r15,%rax,1)                                          #  40    0x4a274  6      
  leal 0x30(%rax), %r14d                                                 #  41    0x4a27a  4      
  je .L_4a360                                                            #  42    0x4a27e  6      
  subl $0x30, %r14d                                                      #  43    0x4a284  4      
  xchgw %ax, %ax                                                         #  44    0x4a288  3      
  movl %r14d, %r14d                                                      #  45    0x4a28b  3      
  movl (%r15,%r14,1), %r14d                                              #  46    0x4a28e  4      
  nop                                                                    #  47    0x4a292  1      
  nop                                                                    #  48    0x4a293  1      
.L_4a300:                                                                #        0x4a294  0      
  leal 0x10(%rsp), %eax                                                  #  49    0x4a294  4      
  movl %r12d, %esi                                                       #  50    0x4a298  3      
  xorl %edi, %edi                                                        #  51    0x4a29b  2      
  movl %eax, %edx                                                        #  52    0x4a29d  2      
  movq %rax, 0x8(%rsp)                                                   #  53    0x4a29f  5      
  nop                                                                    #  54    0x4a2a4  1      
  callq ._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info  #  55    0x4a2a5  5      
  leal -0x50(%r14), %eax                                                 #  56    0x4a2aa  4      
  movl 0x8(%rsp), %edi                                                   #  57    0x4a2ae  4      
  movl %ebx, %ecx                                                        #  58    0x4a2b2  2      
  movl %r14d, %edx                                                       #  59    0x4a2b4  3      
  movl %eax, %eax                                                        #  60    0x4a2b7  2      
  movl (%r15,%rax,1), %esi                                               #  61    0x4a2b9  4      
  nop                                                                    #  62    0x4a2bd  1      
  callq ._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl   #  63    0x4a2be  5      
  testb %al, %al                                                         #  64    0x4a2c3  2      
  je .L_4a380                                                            #  65    0x4a2c5  6      
  nop                                                                    #  66    0x4a2cb  1      
  nop                                                                    #  67    0x4a2cc  1      
  callq .__cxa_rethrow                                                   #  68    0x4a2cd  5      
.L_4a360:                                                                #        0x4a2d2  0      
  addl $0x20, %r14d                                                      #  69    0x4a2d2  4      
  jmpq .L_4a300                                                          #  70    0x4a2d6  5      
  nop                                                                    #  71    0x4a2db  1      
  nop                                                                    #  72    0x4a2dc  1      
.L_4a380:                                                                #        0x4a2dd  0      
  movl 0x8(%rsp), %edi                                                   #  73    0x4a2dd  4      
  movl %ebx, %ecx                                                        #  74    0x4a2e1  2      
  xorl %edx, %edx                                                        #  75    0x4a2e3  2      
  movl $0x10020ee4, %esi                                                 #  76    0x4a2e5  5      
  nop                                                                    #  77    0x4a2ea  1      
  callq ._ZL20check_exception_specP16lsda_header_infoPKSt9type_infoPvl   #  78    0x4a2eb  5      
  testb %al, %al                                                         #  79    0x4a2f0  2      
  je .L_4a440                                                            #  80    0x4a2f2  6      
  movl $0x4, %edi                                                        #  81    0x4a2f8  5      
  nop                                                                    #  82    0x4a2fd  1      
  callq .__cxa_allocate_exception                                        #  83    0x4a2fe  5      
  movl %eax, %edi                                                        #  84    0x4a303  2      
  movl $0x4c780, %edx                                                    #  85    0x4a305  5      
  movl $0x10020ee4, %esi                                                 #  86    0x4a30a  5      
  movl %edi, %edi                                                        #  87    0x4a30f  2      
  movl $0x10020e28, (%r15,%rdi,1)                                        #  88    0x4a311  8      
  nop                                                                    #  89    0x4a319  1      
  callq .__cxa_throw                                                     #  90    0x4a31a  5      
  movl %eax, %r14d                                                       #  91    0x4a31f  3      
  nop                                                                    #  92    0x4a322  1      
  nop                                                                    #  93    0x4a323  1      
  callq .__cxa_end_catch                                                 #  94    0x4a324  5      
  nop                                                                    #  95    0x4a329  1      
  nop                                                                    #  96    0x4a32a  1      
  callq .__cxa_end_catch                                                 #  97    0x4a32b  5      
  movl %r14d, %edi                                                       #  98    0x4a330  3      
  nop                                                                    #  99    0x4a333  1      
  nop                                                                    #  100   0x4a334  1      
  callq ._Unwind_Resume                                                  #  101   0x4a335  5      
.L_4a440:                                                                #        0x4a33a  0      
  movl %r13d, %edi                                                       #  102   0x4a33a  3      
  nop                                                                    #  103   0x4a33d  1      
  nop                                                                    #  104   0x4a33e  1      
  callq ._ZN10__cxxabiv111__terminateEPFvvE                              #  105   0x4a33f  5      
                                                                                                  
.size __cxa_call_unexpected, .-__cxa_call_unexpected

