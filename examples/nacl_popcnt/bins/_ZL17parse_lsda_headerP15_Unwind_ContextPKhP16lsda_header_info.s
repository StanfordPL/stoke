  .text
  .globl _ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info
  .type _ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info, @function

#! file-offset 0x49e60
#! rip-offset  0x49e60
#! capacity    448 bytes

# Text                                                            #  Line  RIP      Bytes  
._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info:  #        0x49e60  0      
  pushq %r14                                                      #  1     0x49e60  3      
  movl %edi, %r14d                                                #  2     0x49e63  3      
  xorl %eax, %eax                                                 #  3     0x49e66  2      
  pushq %r13                                                      #  4     0x49e68  3      
  movl %esi, %r13d                                                #  5     0x49e6b  3      
  pushq %r12                                                      #  6     0x49e6e  3      
  pushq %rbx                                                      #  7     0x49e71  2      
  movl %edx, %ebx                                                 #  8     0x49e73  2      
  subl $0x8, %esp                                                 #  9     0x49e75  3      
  addq %r15, %rsp                                                 #  10    0x49e78  3      
  testq %r14, %r14                                                #  11    0x49e7b  3      
  je .L_49ea0                                                     #  12    0x49e7e  6      
  movl %r14d, %edi                                                #  13    0x49e84  3      
  nop                                                             #  14    0x49e87  1      
  nop                                                             #  15    0x49e88  1      
  nop                                                             #  16    0x49e89  1      
  callq ._Unwind_GetRegionStart                                   #  17    0x49e8a  5      
.L_49ea0:                                                         #        0x49e8f  0      
  movl %ebx, %ebx                                                 #  18    0x49e8f  2      
  movl %eax, (%r15,%rbx,1)                                        #  19    0x49e91  4      
  movl %r13d, %r13d                                               #  20    0x49e95  3      
  movzbl (%r15,%r13,1), %r12d                                     #  21    0x49e98  5      
  addl $0x1, %r13d                                                #  22    0x49e9d  4      
  cmpb $0xff, %r12b                                               #  23    0x49ea1  4      
  je .L_49fe0                                                     #  24    0x49ea5  6      
  movzbl %r12b, %r12d                                             #  25    0x49eab  4      
  movl %r14d, %esi                                                #  26    0x49eaf  3      
  movl %r12d, %edi                                                #  27    0x49eb2  3      
  nop                                                             #  28    0x49eb5  1      
  nop                                                             #  29    0x49eb6  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context            #  30    0x49eb7  5      
  leal 0x4(%rbx), %ecx                                            #  31    0x49ebc  3      
  movl %r13d, %edx                                                #  32    0x49ebf  3      
  movl %eax, %esi                                                 #  33    0x49ec2  2      
  movl %r12d, %edi                                                #  34    0x49ec4  3      
  nop                                                             #  35    0x49ec7  1      
  nop                                                             #  36    0x49ec8  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                 #  37    0x49ec9  5      
  movl %eax, %r13d                                                #  38    0x49ece  3      
  nop                                                             #  39    0x49ed1  1      
  nop                                                             #  40    0x49ed2  1      
.L_49f20:                                                         #        0x49ed3  0      
  movl %r13d, %r13d                                               #  41    0x49ed3  3      
  movzbl (%r15,%r13,1), %eax                                      #  42    0x49ed6  5      
  addl $0x1, %r13d                                                #  43    0x49edb  4      
  cmpb $0xff, %al                                                 #  44    0x49edf  2      
  movl %ebx, %ebx                                                 #  45    0x49ee1  2      
  movb %al, 0x14(%r15,%rbx,1)                                     #  46    0x49ee3  5      
  je .L_4a000                                                     #  47    0x49ee8  6      
  xorl %esi, %esi                                                 #  48    0x49eee  2      
  xorl %ecx, %ecx                                                 #  49    0x49ef0  2      
  nop                                                             #  50    0x49ef2  1      
.L_49f40:                                                         #        0x49ef3  0      
  movl %r13d, %r13d                                               #  51    0x49ef3  3      
  movzbl (%r15,%r13,1), %eax                                      #  52    0x49ef6  5      
  addl $0x1, %r13d                                                #  53    0x49efb  4      
  movl %eax, %edx                                                 #  54    0x49eff  2      
  andl $0x7f, %edx                                                #  55    0x49f01  3      
  shll %cl, %edx                                                  #  56    0x49f04  2      
  addl $0x7, %ecx                                                 #  57    0x49f06  3      
  orl %edx, %esi                                                  #  58    0x49f09  2      
  testb %al, %al                                                  #  59    0x49f0b  2      
  js .L_49f40                                                     #  60    0x49f0d  6      
  addl %r13d, %esi                                                #  61    0x49f13  3      
  nop                                                             #  62    0x49f16  1      
  movl %ebx, %ebx                                                 #  63    0x49f17  2      
  movl %esi, 0xc(%r15,%rbx,1)                                     #  64    0x49f19  5      
  nop                                                             #  65    0x49f1e  1      
  nop                                                             #  66    0x49f1f  1      
.L_49f80:                                                         #        0x49f20  0      
  movl %r13d, %r13d                                               #  67    0x49f20  3      
  movzbl (%r15,%r13,1), %eax                                      #  68    0x49f23  5      
  xorl %edi, %edi                                                 #  69    0x49f28  2      
  xorl %ecx, %ecx                                                 #  70    0x49f2a  2      
  movl %ebx, %ebx                                                 #  71    0x49f2c  2      
  movb %al, 0x15(%r15,%rbx,1)                                     #  72    0x49f2e  5      
  leal 0x1(%r13), %eax                                            #  73    0x49f33  4      
  nop                                                             #  74    0x49f37  1      
.L_49fa0:                                                         #        0x49f38  0      
  movl %eax, %eax                                                 #  75    0x49f38  2      
  movzbl (%r15,%rax,1), %esi                                      #  76    0x49f3a  5      
  addl $0x1, %eax                                                 #  77    0x49f3f  3      
  movl %esi, %edx                                                 #  78    0x49f42  2      
  andl $0x7f, %edx                                                #  79    0x49f44  3      
  shll %cl, %edx                                                  #  80    0x49f47  2      
  addl $0x7, %ecx                                                 #  81    0x49f49  3      
  orl %edx, %edi                                                  #  82    0x49f4c  2      
  testb %sil, %sil                                                #  83    0x49f4e  3      
  js .L_49fa0                                                     #  84    0x49f51  6      
  addl %eax, %edi                                                 #  85    0x49f57  2      
  nop                                                             #  86    0x49f59  1      
  movl %ebx, %ebx                                                 #  87    0x49f5a  2      
  movl %edi, 0x10(%r15,%rbx,1)                                    #  88    0x49f5c  5      
  addl $0x8, %esp                                                 #  89    0x49f61  3      
  addq %r15, %rsp                                                 #  90    0x49f64  3      
  popq %rbx                                                       #  91    0x49f67  2      
  popq %r12                                                       #  92    0x49f69  3      
  popq %r13                                                       #  93    0x49f6c  3      
  popq %r14                                                       #  94    0x49f6f  3      
  popq %r11                                                       #  95    0x49f72  3      
  andl $0xffffffe0, %r11d                                         #  96    0x49f75  7      
  addq %r15, %r11                                                 #  97    0x49f7c  3      
  jmpq %r11                                                       #  98    0x49f7f  3      
.L_49fe0:                                                         #        0x49f82  0      
  movl %ebx, %ebx                                                 #  99    0x49f82  2      
  movl %eax, 0x4(%r15,%rbx,1)                                     #  100   0x49f84  5      
  jmpq .L_49f20                                                   #  101   0x49f89  5      
  nop                                                             #  102   0x49f8e  1      
  nop                                                             #  103   0x49f8f  1      
.L_4a000:                                                         #        0x49f90  0      
  movl %ebx, %ebx                                                 #  104   0x49f90  2      
  movl $0x0, 0xc(%r15,%rbx,1)                                     #  105   0x49f92  9      
  jmpq .L_49f80                                                   #  106   0x49f9b  5      
  nop                                                             #  107   0x49fa0  1      
  nop                                                             #  108   0x49fa1  1      
  nop                                                             #  109   0x49fa2  1      
  nop                                                             #  110   0x49fa3  1      
  nop                                                             #  111   0x49fa4  1      
  nop                                                             #  112   0x49fa5  1      
  nop                                                             #  113   0x49fa6  1      
  nop                                                             #  114   0x49fa7  1      
  nop                                                             #  115   0x49fa8  1      
  nop                                                             #  116   0x49fa9  1      
  nop                                                             #  117   0x49faa  1      
  nop                                                             #  118   0x49fab  1      
  nop                                                             #  119   0x49fac  1      
  nop                                                             #  120   0x49fad  1      
  nop                                                             #  121   0x49fae  1      
  nop                                                             #  122   0x49faf  1      
                                                                                           
.size _ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info, .-_ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info

