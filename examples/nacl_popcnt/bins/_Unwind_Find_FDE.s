  .text
  .globl _Unwind_Find_FDE
  .type _Unwind_Find_FDE, @function

#! file-offset 0x5ffa0
#! rip-offset  0x5ffa0
#! capacity    704 bytes

# Text                                 #  Line  RIP      Bytes  
._Unwind_Find_FDE:                     #        0x5ffa0  0      
  pushq %r14                           #  1     0x5ffa0  3      
  pushq %r13                           #  2     0x5ffa3  3      
  movl %edi, %r13d                     #  3     0x5ffa6  3      
  pushq %r12                           #  4     0x5ffa9  3      
  movl %esi, %r12d                     #  5     0x5ffac  3      
  pushq %rbx                           #  6     0x5ffaf  2      
  subl $0x18, %esp                     #  7     0x5ffb1  3      
  addq %r15, %rsp                      #  8     0x5ffb4  3      
  movl 0xffd689e(%rip), %r14d          #  9     0x5ffb7  7      
  testq %r14, %r14                     #  10    0x5ffbe  3      
  nop                                  #  11    0x5ffc1  1      
  jne .L_60000                         #  12    0x5ffc2  6      
  jmpq .L_60120                        #  13    0x5ffc8  5      
  nop                                  #  14    0x5ffcd  1      
  nop                                  #  15    0x5ffce  1      
.L_5ffe0:                              #        0x5ffcf  0      
  movl %r14d, %r14d                    #  16    0x5ffcf  3      
  movl 0x14(%r15,%r14,1), %r14d        #  17    0x5ffd2  5      
  testq %r14, %r14                     #  18    0x5ffd7  3      
  je .L_60120                          #  19    0x5ffda  6      
  nop                                  #  20    0x5ffe0  1      
.L_60000:                              #        0x5ffe1  0      
  movl %r14d, %r14d                    #  21    0x5ffe1  3      
  cmpl %r13d, (%r15,%r14,1)            #  22    0x5ffe4  4      
  ja .L_5ffe0                          #  23    0x5ffe8  6      
  movl %r13d, %esi                     #  24    0x5ffee  3      
  movl %r14d, %edi                     #  25    0x5fff1  3      
  nop                                  #  26    0x5fff4  1      
  callq .search_object                 #  27    0x5fff5  5      
  movl %eax, %ebx                      #  28    0x5fffa  2      
  testq %rbx, %rbx                     #  29    0x5fffc  3      
  je .L_60120                          #  30    0x5ffff  6      
  nop                                  #  31    0x60005  1      
  nop                                  #  32    0x60006  1      
.L_60040:                              #        0x60007  0      
  movl %r14d, %r14d                    #  33    0x60007  3      
  movl 0x4(%r15,%r14,1), %eax          #  34    0x6000a  5      
  movl %r12d, %r12d                    #  35    0x6000f  3      
  movl %eax, (%r15,%r12,1)             #  36    0x60012  4      
  movl %r14d, %r14d                    #  37    0x60016  3      
  movl 0x8(%r15,%r14,1), %eax          #  38    0x60019  5      
  movl %r12d, %r12d                    #  39    0x6001e  3      
  movl %eax, 0x4(%r15,%r12,1)          #  40    0x60021  5      
  nop                                  #  41    0x60026  1      
  movl %r14d, %r14d                    #  42    0x60027  3      
  movzwl 0x10(%r15,%r14,1), %eax       #  43    0x6002a  6      
  shrw $0x3, %ax                       #  44    0x60030  4      
  movl %r14d, %r14d                    #  45    0x60034  3      
  testb $0x4, 0x10(%r15,%r14,1)        #  46    0x60037  6      
  movzbl %al, %eax                     #  47    0x6003d  3      
  jne .L_60200                         #  48    0x60040  6      
  nop                                  #  49    0x60046  1      
.L_60080:                              #        0x60047  0      
  movzbl %al, %r13d                    #  50    0x60047  4      
  movl %r14d, %esi                     #  51    0x6004b  3      
  movl %r13d, %edi                     #  52    0x6004e  3      
  xchgw %ax, %ax                       #  53    0x60051  3      
  nop                                  #  54    0x60054  1      
  callq .base_from_object              #  55    0x60055  5      
  leal 0xc(%rsp), %ecx                 #  56    0x6005a  4      
  leal 0x8(%rbx), %edx                 #  57    0x6005e  3      
  movl %eax, %esi                      #  58    0x60061  2      
  movl %r13d, %edi                     #  59    0x60063  3      
  nop                                  #  60    0x60066  1      
  callq .read_encoded_value_with_base  #  61    0x60067  5      
  movl 0xc(%rsp), %eax                 #  62    0x6006c  4      
  movl %r12d, %r12d                    #  63    0x60070  3      
  movl %eax, 0x8(%r15,%r12,1)          #  64    0x60073  5      
  nop                                  #  65    0x60078  1      
  nop                                  #  66    0x60079  1      
.L_600e0:                              #        0x6007a  0      
  addl $0x18, %esp                     #  67    0x6007a  3      
  addq %r15, %rsp                      #  68    0x6007d  3      
  movl %ebx, %eax                      #  69    0x60080  2      
  popq %rbx                            #  70    0x60082  2      
  popq %r12                            #  71    0x60084  3      
  popq %r13                            #  72    0x60087  3      
  popq %r14                            #  73    0x6008a  3      
  popq %r11                            #  74    0x6008d  3      
  andl $0xffffffe0, %r11d              #  75    0x60090  7      
  addq %r15, %r11                      #  76    0x60097  3      
  jmpq %r11                            #  77    0x6009a  3      
  nop                                  #  78    0x6009d  1      
.L_60100:                              #        0x6009e  0      
  testq %rbx, %rbx                     #  79    0x6009e  3      
  movl %r14d, %r14d                    #  80    0x600a1  3      
  movl %eax, 0x14(%r15,%r14,1)         #  81    0x600a4  5      
  movl %edx, %edx                      #  82    0x600a9  2      
  movl %r14d, (%r15,%rdx,1)            #  83    0x600ab  4      
  jne .L_60040                         #  84    0x600af  6      
  nop                                  #  85    0x600b5  1      
.L_60120:                              #        0x600b6  0      
  movl 0xffd679b(%rip), %r14d          #  86    0x600b6  7      
  testq %r14, %r14                     #  87    0x600bd  3      
  je .L_60240                          #  88    0x600c0  6      
  movl %r14d, %r14d                    #  89    0x600c6  3      
  movl 0x14(%r15,%r14,1), %eax         #  90    0x600c9  5      
  movl %r13d, %esi                     #  91    0x600ce  3      
  movl %r14d, %edi                     #  92    0x600d1  3      
  xchgw %ax, %ax                       #  93    0x600d4  3      
  movl %eax, 0xffd677b(%rip)           #  94    0x600d7  6      
  nop                                  #  95    0x600dd  1      
  nop                                  #  96    0x600de  1      
  callq .search_object                 #  97    0x600df  5      
  movl %eax, %ebx                      #  98    0x600e4  2      
  movl 0xffd6770(%rip), %eax           #  99    0x600e6  6      
  leal 0xffd66ee(%rip), %edx           #  100   0x600ec  6      
  testq %rax, %rax                     #  101   0x600f2  3      
  je .L_60100                          #  102   0x600f5  6      
  movl %r14d, %r14d                    #  103   0x600fb  3      
  movl (%r15,%r14,1), %ecx             #  104   0x600fe  4      
  movl %eax, %eax                      #  105   0x60102  2      
  cmpl %ecx, (%r15,%rax,1)             #  106   0x60104  4      
  jae .L_601c0                         #  107   0x60108  6      
  jmpq .L_60100                        #  108   0x6010e  5      
  nop                                  #  109   0x60113  1      
  nop                                  #  110   0x60114  1      
.L_601a0:                              #        0x60115  0      
  movl %eax, %eax                      #  111   0x60115  2      
  cmpl %ecx, (%r15,%rax,1)             #  112   0x60117  4      
  jb .L_60100                          #  113   0x6011b  6      
  nop                                  #  114   0x60121  1      
  nop                                  #  115   0x60122  1      
.L_601c0:                              #        0x60123  0      
  leal 0x14(%rax), %edx                #  116   0x60123  3      
  movl %eax, %eax                      #  117   0x60126  2      
  movl 0x14(%r15,%rax,1), %eax         #  118   0x60128  5      
  testq %rax, %rax                     #  119   0x6012d  3      
  jne .L_601a0                         #  120   0x60130  6      
  testq %rbx, %rbx                     #  121   0x60136  3      
  movl %r14d, %r14d                    #  122   0x60139  3      
  movl %eax, 0x14(%r15,%r14,1)         #  123   0x6013c  5      
  movl %edx, %edx                      #  124   0x60141  2      
  movl %r14d, (%r15,%rdx,1)            #  125   0x60143  4      
  je .L_60120                          #  126   0x60147  6      
  jmpq .L_60040                        #  127   0x6014d  5      
  nop                                  #  128   0x60152  1      
  nop                                  #  129   0x60153  1      
.L_60200:                              #        0x60154  0      
  movl %ebx, %edi                      #  130   0x60154  2      
  movl %ebx, %ebx                      #  131   0x60156  2      
  subl 0x4(%r15,%rbx,1), %edi          #  132   0x60158  5      
  addl $0x4, %edi                      #  133   0x6015d  3      
  nop                                  #  134   0x60160  1      
  callq .get_cie_encoding              #  135   0x60161  5      
  jmpq .L_60080                        #  136   0x60166  5      
  nop                                  #  137   0x6016b  1      
  nop                                  #  138   0x6016c  1      
.L_60240:                              #        0x6016d  0      
  xorl %ebx, %ebx                      #  139   0x6016d  2      
  jmpq .L_600e0                        #  140   0x6016f  5      
  nop                                  #  141   0x60174  1      
  nop                                  #  142   0x60175  1      
                                                                
.size _Unwind_Find_FDE, .-_Unwind_Find_FDE

