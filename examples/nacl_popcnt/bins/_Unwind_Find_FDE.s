  .text
  .globl _Unwind_Find_FDE
  .type _Unwind_Find_FDE, @function

#! file-offset 0x5ff00
#! rip-offset  0x5ff00
#! capacity    704 bytes

# Text                                 #  Line  RIP      Bytes  
._Unwind_Find_FDE:                     #        0x5ff00  0      
  pushq %r14                           #  1     0x5ff00  3      
  pushq %r13                           #  2     0x5ff03  3      
  movl %edi, %r13d                     #  3     0x5ff06  3      
  pushq %r12                           #  4     0x5ff09  3      
  movl %esi, %r12d                     #  5     0x5ff0c  3      
  pushq %rbx                           #  6     0x5ff0f  2      
  subl $0x18, %esp                     #  7     0x5ff11  3      
  addq %r15, %rsp                      #  8     0x5ff14  3      
  movl 0xffd693e(%rip), %r14d          #  9     0x5ff17  7      
  testq %r14, %r14                     #  10    0x5ff1e  3      
  nop                                  #  11    0x5ff21  1      
  jne .L_5ff60                         #  12    0x5ff22  6      
  jmpq .L_60080                        #  13    0x5ff28  5      
  nop                                  #  14    0x5ff2d  1      
  nop                                  #  15    0x5ff2e  1      
.L_5ff40:                              #        0x5ff2f  0      
  movl %r14d, %r14d                    #  16    0x5ff2f  3      
  movl 0x14(%r15,%r14,1), %r14d        #  17    0x5ff32  5      
  testq %r14, %r14                     #  18    0x5ff37  3      
  je .L_60080                          #  19    0x5ff3a  6      
  nop                                  #  20    0x5ff40  1      
.L_5ff60:                              #        0x5ff41  0      
  movl %r14d, %r14d                    #  21    0x5ff41  3      
  cmpl %r13d, (%r15,%r14,1)            #  22    0x5ff44  4      
  ja .L_5ff40                          #  23    0x5ff48  6      
  movl %r13d, %esi                     #  24    0x5ff4e  3      
  movl %r14d, %edi                     #  25    0x5ff51  3      
  nop                                  #  26    0x5ff54  1      
  callq .search_object                 #  27    0x5ff55  5      
  movl %eax, %ebx                      #  28    0x5ff5a  2      
  testq %rbx, %rbx                     #  29    0x5ff5c  3      
  je .L_60080                          #  30    0x5ff5f  6      
  nop                                  #  31    0x5ff65  1      
  nop                                  #  32    0x5ff66  1      
.L_5ffa0:                              #        0x5ff67  0      
  movl %r14d, %r14d                    #  33    0x5ff67  3      
  movl 0x4(%r15,%r14,1), %eax          #  34    0x5ff6a  5      
  movl %r12d, %r12d                    #  35    0x5ff6f  3      
  movl %eax, (%r15,%r12,1)             #  36    0x5ff72  4      
  movl %r14d, %r14d                    #  37    0x5ff76  3      
  movl 0x8(%r15,%r14,1), %eax          #  38    0x5ff79  5      
  movl %r12d, %r12d                    #  39    0x5ff7e  3      
  movl %eax, 0x4(%r15,%r12,1)          #  40    0x5ff81  5      
  nop                                  #  41    0x5ff86  1      
  movl %r14d, %r14d                    #  42    0x5ff87  3      
  movzwl 0x10(%r15,%r14,1), %eax       #  43    0x5ff8a  6      
  shrw $0x3, %ax                       #  44    0x5ff90  4      
  movl %r14d, %r14d                    #  45    0x5ff94  3      
  testb $0x4, 0x10(%r15,%r14,1)        #  46    0x5ff97  6      
  movzbl %al, %eax                     #  47    0x5ff9d  3      
  jne .L_60160                         #  48    0x5ffa0  6      
  nop                                  #  49    0x5ffa6  1      
.L_5ffe0:                              #        0x5ffa7  0      
  movzbl %al, %r13d                    #  50    0x5ffa7  4      
  movl %r14d, %esi                     #  51    0x5ffab  3      
  movl %r13d, %edi                     #  52    0x5ffae  3      
  xchgw %ax, %ax                       #  53    0x5ffb1  3      
  nop                                  #  54    0x5ffb4  1      
  callq .base_from_object              #  55    0x5ffb5  5      
  leal 0xc(%rsp), %ecx                 #  56    0x5ffba  4      
  leal 0x8(%rbx), %edx                 #  57    0x5ffbe  3      
  movl %eax, %esi                      #  58    0x5ffc1  2      
  movl %r13d, %edi                     #  59    0x5ffc3  3      
  nop                                  #  60    0x5ffc6  1      
  callq .read_encoded_value_with_base  #  61    0x5ffc7  5      
  movl 0xc(%rsp), %eax                 #  62    0x5ffcc  4      
  movl %r12d, %r12d                    #  63    0x5ffd0  3      
  movl %eax, 0x8(%r15,%r12,1)          #  64    0x5ffd3  5      
  nop                                  #  65    0x5ffd8  1      
  nop                                  #  66    0x5ffd9  1      
.L_60040:                              #        0x5ffda  0      
  addl $0x18, %esp                     #  67    0x5ffda  3      
  addq %r15, %rsp                      #  68    0x5ffdd  3      
  movl %ebx, %eax                      #  69    0x5ffe0  2      
  popq %rbx                            #  70    0x5ffe2  2      
  popq %r12                            #  71    0x5ffe4  3      
  popq %r13                            #  72    0x5ffe7  3      
  popq %r14                            #  73    0x5ffea  3      
  popq %r11                            #  74    0x5ffed  3      
  andl $0xffffffe0, %r11d              #  75    0x5fff0  7      
  addq %r15, %r11                      #  76    0x5fff7  3      
  jmpq %r11                            #  77    0x5fffa  3      
  nop                                  #  78    0x5fffd  1      
.L_60060:                              #        0x5fffe  0      
  testq %rbx, %rbx                     #  79    0x5fffe  3      
  movl %r14d, %r14d                    #  80    0x60001  3      
  movl %eax, 0x14(%r15,%r14,1)         #  81    0x60004  5      
  movl %edx, %edx                      #  82    0x60009  2      
  movl %r14d, (%r15,%rdx,1)            #  83    0x6000b  4      
  jne .L_5ffa0                         #  84    0x6000f  6      
  nop                                  #  85    0x60015  1      
.L_60080:                              #        0x60016  0      
  movl 0xffd683b(%rip), %r14d          #  86    0x60016  7      
  testq %r14, %r14                     #  87    0x6001d  3      
  je .L_601a0                          #  88    0x60020  6      
  movl %r14d, %r14d                    #  89    0x60026  3      
  movl 0x14(%r15,%r14,1), %eax         #  90    0x60029  5      
  movl %r13d, %esi                     #  91    0x6002e  3      
  movl %r14d, %edi                     #  92    0x60031  3      
  xchgw %ax, %ax                       #  93    0x60034  3      
  movl %eax, 0xffd681b(%rip)           #  94    0x60037  6      
  nop                                  #  95    0x6003d  1      
  nop                                  #  96    0x6003e  1      
  callq .search_object                 #  97    0x6003f  5      
  movl %eax, %ebx                      #  98    0x60044  2      
  movl 0xffd6810(%rip), %eax           #  99    0x60046  6      
  leal 0xffd678e(%rip), %edx           #  100   0x6004c  6      
  testq %rax, %rax                     #  101   0x60052  3      
  je .L_60060                          #  102   0x60055  6      
  movl %r14d, %r14d                    #  103   0x6005b  3      
  movl (%r15,%r14,1), %ecx             #  104   0x6005e  4      
  movl %eax, %eax                      #  105   0x60062  2      
  cmpl %ecx, (%r15,%rax,1)             #  106   0x60064  4      
  jae .L_60120                         #  107   0x60068  6      
  jmpq .L_60060                        #  108   0x6006e  5      
  nop                                  #  109   0x60073  1      
  nop                                  #  110   0x60074  1      
.L_60100:                              #        0x60075  0      
  movl %eax, %eax                      #  111   0x60075  2      
  cmpl %ecx, (%r15,%rax,1)             #  112   0x60077  4      
  jb .L_60060                          #  113   0x6007b  6      
  nop                                  #  114   0x60081  1      
  nop                                  #  115   0x60082  1      
.L_60120:                              #        0x60083  0      
  leal 0x14(%rax), %edx                #  116   0x60083  3      
  movl %eax, %eax                      #  117   0x60086  2      
  movl 0x14(%r15,%rax,1), %eax         #  118   0x60088  5      
  testq %rax, %rax                     #  119   0x6008d  3      
  jne .L_60100                         #  120   0x60090  6      
  testq %rbx, %rbx                     #  121   0x60096  3      
  movl %r14d, %r14d                    #  122   0x60099  3      
  movl %eax, 0x14(%r15,%r14,1)         #  123   0x6009c  5      
  movl %edx, %edx                      #  124   0x600a1  2      
  movl %r14d, (%r15,%rdx,1)            #  125   0x600a3  4      
  je .L_60080                          #  126   0x600a7  6      
  jmpq .L_5ffa0                        #  127   0x600ad  5      
  nop                                  #  128   0x600b2  1      
  nop                                  #  129   0x600b3  1      
.L_60160:                              #        0x600b4  0      
  movl %ebx, %edi                      #  130   0x600b4  2      
  movl %ebx, %ebx                      #  131   0x600b6  2      
  subl 0x4(%r15,%rbx,1), %edi          #  132   0x600b8  5      
  addl $0x4, %edi                      #  133   0x600bd  3      
  nop                                  #  134   0x600c0  1      
  callq .get_cie_encoding              #  135   0x600c1  5      
  jmpq .L_5ffe0                        #  136   0x600c6  5      
  nop                                  #  137   0x600cb  1      
  nop                                  #  138   0x600cc  1      
.L_601a0:                              #        0x600cd  0      
  xorl %ebx, %ebx                      #  139   0x600cd  2      
  jmpq .L_60040                        #  140   0x600cf  5      
  nop                                  #  141   0x600d4  1      
  nop                                  #  142   0x600d5  1      
                                                                
.size _Unwind_Find_FDE, .-_Unwind_Find_FDE

