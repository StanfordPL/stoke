  .text
  .globl _ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info
  .type _ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info, @function

#! file-offset 0x49de0
#! rip-offset  0x49de0
#! capacity    448 bytes

# Text                                                            #  Line  RIP      Bytes  
._ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info:  #        0x49de0  0      
  pushq %r14                                                      #  1     0x49de0  3      
  movl %edi, %r14d                                                #  2     0x49de3  3      
  xorl %eax, %eax                                                 #  3     0x49de6  2      
  pushq %r13                                                      #  4     0x49de8  3      
  movl %esi, %r13d                                                #  5     0x49deb  3      
  pushq %r12                                                      #  6     0x49dee  3      
  pushq %rbx                                                      #  7     0x49df1  2      
  movl %edx, %ebx                                                 #  8     0x49df3  2      
  subl $0x8, %esp                                                 #  9     0x49df5  3      
  addq %r15, %rsp                                                 #  10    0x49df8  3      
  testq %r14, %r14                                                #  11    0x49dfb  3      
  je .L_49e20                                                     #  12    0x49dfe  6      
  movl %r14d, %edi                                                #  13    0x49e04  3      
  nop                                                             #  14    0x49e07  1      
  nop                                                             #  15    0x49e08  1      
  nop                                                             #  16    0x49e09  1      
  callq ._Unwind_GetRegionStart                                   #  17    0x49e0a  5      
.L_49e20:                                                         #        0x49e0f  0      
  movl %ebx, %ebx                                                 #  18    0x49e0f  2      
  movl %eax, (%r15,%rbx,1)                                        #  19    0x49e11  4      
  movl %r13d, %r13d                                               #  20    0x49e15  3      
  movzbl (%r15,%r13,1), %r12d                                     #  21    0x49e18  5      
  addl $0x1, %r13d                                                #  22    0x49e1d  4      
  cmpb $0xff, %r12b                                               #  23    0x49e21  4      
  je .L_49f60                                                     #  24    0x49e25  6      
  movzbl %r12b, %r12d                                             #  25    0x49e2b  4      
  movl %r14d, %esi                                                #  26    0x49e2f  3      
  movl %r12d, %edi                                                #  27    0x49e32  3      
  nop                                                             #  28    0x49e35  1      
  nop                                                             #  29    0x49e36  1      
  callq ._ZL21base_of_encoded_valuehP15_Unwind_Context            #  30    0x49e37  5      
  leal 0x4(%rbx), %ecx                                            #  31    0x49e3c  3      
  movl %r13d, %edx                                                #  32    0x49e3f  3      
  movl %eax, %esi                                                 #  33    0x49e42  2      
  movl %r12d, %edi                                                #  34    0x49e44  3      
  nop                                                             #  35    0x49e47  1      
  nop                                                             #  36    0x49e48  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj                 #  37    0x49e49  5      
  movl %eax, %r13d                                                #  38    0x49e4e  3      
  nop                                                             #  39    0x49e51  1      
  nop                                                             #  40    0x49e52  1      
.L_49ea0:                                                         #        0x49e53  0      
  movl %r13d, %r13d                                               #  41    0x49e53  3      
  movzbl (%r15,%r13,1), %eax                                      #  42    0x49e56  5      
  addl $0x1, %r13d                                                #  43    0x49e5b  4      
  cmpb $0xff, %al                                                 #  44    0x49e5f  2      
  movl %ebx, %ebx                                                 #  45    0x49e61  2      
  movb %al, 0x14(%r15,%rbx,1)                                     #  46    0x49e63  5      
  je .L_49f80                                                     #  47    0x49e68  6      
  xorl %esi, %esi                                                 #  48    0x49e6e  2      
  xorl %ecx, %ecx                                                 #  49    0x49e70  2      
  nop                                                             #  50    0x49e72  1      
.L_49ec0:                                                         #        0x49e73  0      
  movl %r13d, %r13d                                               #  51    0x49e73  3      
  movzbl (%r15,%r13,1), %eax                                      #  52    0x49e76  5      
  addl $0x1, %r13d                                                #  53    0x49e7b  4      
  movl %eax, %edx                                                 #  54    0x49e7f  2      
  andl $0x7f, %edx                                                #  55    0x49e81  3      
  shll %cl, %edx                                                  #  56    0x49e84  2      
  addl $0x7, %ecx                                                 #  57    0x49e86  3      
  orl %edx, %esi                                                  #  58    0x49e89  2      
  testb %al, %al                                                  #  59    0x49e8b  2      
  js .L_49ec0                                                     #  60    0x49e8d  6      
  addl %r13d, %esi                                                #  61    0x49e93  3      
  nop                                                             #  62    0x49e96  1      
  movl %ebx, %ebx                                                 #  63    0x49e97  2      
  movl %esi, 0xc(%r15,%rbx,1)                                     #  64    0x49e99  5      
  nop                                                             #  65    0x49e9e  1      
  nop                                                             #  66    0x49e9f  1      
.L_49f00:                                                         #        0x49ea0  0      
  movl %r13d, %r13d                                               #  67    0x49ea0  3      
  movzbl (%r15,%r13,1), %eax                                      #  68    0x49ea3  5      
  xorl %edi, %edi                                                 #  69    0x49ea8  2      
  xorl %ecx, %ecx                                                 #  70    0x49eaa  2      
  movl %ebx, %ebx                                                 #  71    0x49eac  2      
  movb %al, 0x15(%r15,%rbx,1)                                     #  72    0x49eae  5      
  leal 0x1(%r13), %eax                                            #  73    0x49eb3  4      
  nop                                                             #  74    0x49eb7  1      
.L_49f20:                                                         #        0x49eb8  0      
  movl %eax, %eax                                                 #  75    0x49eb8  2      
  movzbl (%r15,%rax,1), %esi                                      #  76    0x49eba  5      
  addl $0x1, %eax                                                 #  77    0x49ebf  3      
  movl %esi, %edx                                                 #  78    0x49ec2  2      
  andl $0x7f, %edx                                                #  79    0x49ec4  3      
  shll %cl, %edx                                                  #  80    0x49ec7  2      
  addl $0x7, %ecx                                                 #  81    0x49ec9  3      
  orl %edx, %edi                                                  #  82    0x49ecc  2      
  testb %sil, %sil                                                #  83    0x49ece  3      
  js .L_49f20                                                     #  84    0x49ed1  6      
  addl %eax, %edi                                                 #  85    0x49ed7  2      
  nop                                                             #  86    0x49ed9  1      
  movl %ebx, %ebx                                                 #  87    0x49eda  2      
  movl %edi, 0x10(%r15,%rbx,1)                                    #  88    0x49edc  5      
  addl $0x8, %esp                                                 #  89    0x49ee1  3      
  addq %r15, %rsp                                                 #  90    0x49ee4  3      
  popq %rbx                                                       #  91    0x49ee7  2      
  popq %r12                                                       #  92    0x49ee9  3      
  popq %r13                                                       #  93    0x49eec  3      
  popq %r14                                                       #  94    0x49eef  3      
  popq %r11                                                       #  95    0x49ef2  3      
  andl $0xffffffe0, %r11d                                         #  96    0x49ef5  7      
  addq %r15, %r11                                                 #  97    0x49efc  3      
  jmpq %r11                                                       #  98    0x49eff  3      
.L_49f60:                                                         #        0x49f02  0      
  movl %ebx, %ebx                                                 #  99    0x49f02  2      
  movl %eax, 0x4(%r15,%rbx,1)                                     #  100   0x49f04  5      
  jmpq .L_49ea0                                                   #  101   0x49f09  5      
  nop                                                             #  102   0x49f0e  1      
  nop                                                             #  103   0x49f0f  1      
.L_49f80:                                                         #        0x49f10  0      
  movl %ebx, %ebx                                                 #  104   0x49f10  2      
  movl $0x0, 0xc(%r15,%rbx,1)                                     #  105   0x49f12  9      
  jmpq .L_49f00                                                   #  106   0x49f1b  5      
  nop                                                             #  107   0x49f20  1      
  nop                                                             #  108   0x49f21  1      
  nop                                                             #  109   0x49f22  1      
  nop                                                             #  110   0x49f23  1      
  nop                                                             #  111   0x49f24  1      
  nop                                                             #  112   0x49f25  1      
  nop                                                             #  113   0x49f26  1      
  nop                                                             #  114   0x49f27  1      
  nop                                                             #  115   0x49f28  1      
  nop                                                             #  116   0x49f29  1      
  nop                                                             #  117   0x49f2a  1      
  nop                                                             #  118   0x49f2b  1      
  nop                                                             #  119   0x49f2c  1      
  nop                                                             #  120   0x49f2d  1      
  nop                                                             #  121   0x49f2e  1      
  nop                                                             #  122   0x49f2f  1      
                                                                                           
.size _ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info, .-_ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info

