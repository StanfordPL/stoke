  .text
  .globl _Unwind_Find_FDE
  .type _Unwind_Find_FDE, @function

#! file-offset 0x5ff20
#! rip-offset  0x5ff20
#! capacity    704 bytes

# Text                                 #  Line  RIP      Bytes  
._Unwind_Find_FDE:                     #        0x5ff20  0      
  pushq %r14                           #  1     0x5ff20  3      
  pushq %r13                           #  2     0x5ff23  3      
  movl %edi, %r13d                     #  3     0x5ff26  3      
  pushq %r12                           #  4     0x5ff29  3      
  movl %esi, %r12d                     #  5     0x5ff2c  3      
  pushq %rbx                           #  6     0x5ff2f  2      
  subl $0x18, %esp                     #  7     0x5ff31  3      
  addq %r15, %rsp                      #  8     0x5ff34  3      
  movl 0xffd691e(%rip), %r14d          #  9     0x5ff37  7      
  testq %r14, %r14                     #  10    0x5ff3e  3      
  nop                                  #  11    0x5ff41  1      
  jne .L_5ff80                         #  12    0x5ff42  6      
  jmpq .L_600a0                        #  13    0x5ff48  5      
  nop                                  #  14    0x5ff4d  1      
  nop                                  #  15    0x5ff4e  1      
.L_5ff60:                              #        0x5ff4f  0      
  movl %r14d, %r14d                    #  16    0x5ff4f  3      
  movl 0x14(%r15,%r14,1), %r14d        #  17    0x5ff52  5      
  testq %r14, %r14                     #  18    0x5ff57  3      
  je .L_600a0                          #  19    0x5ff5a  6      
  nop                                  #  20    0x5ff60  1      
.L_5ff80:                              #        0x5ff61  0      
  movl %r14d, %r14d                    #  21    0x5ff61  3      
  cmpl %r13d, (%r15,%r14,1)            #  22    0x5ff64  4      
  ja .L_5ff60                          #  23    0x5ff68  6      
  movl %r13d, %esi                     #  24    0x5ff6e  3      
  movl %r14d, %edi                     #  25    0x5ff71  3      
  nop                                  #  26    0x5ff74  1      
  callq .search_object                 #  27    0x5ff75  5      
  movl %eax, %ebx                      #  28    0x5ff7a  2      
  testq %rbx, %rbx                     #  29    0x5ff7c  3      
  je .L_600a0                          #  30    0x5ff7f  6      
  nop                                  #  31    0x5ff85  1      
  nop                                  #  32    0x5ff86  1      
.L_5ffc0:                              #        0x5ff87  0      
  movl %r14d, %r14d                    #  33    0x5ff87  3      
  movl 0x4(%r15,%r14,1), %eax          #  34    0x5ff8a  5      
  movl %r12d, %r12d                    #  35    0x5ff8f  3      
  movl %eax, (%r15,%r12,1)             #  36    0x5ff92  4      
  movl %r14d, %r14d                    #  37    0x5ff96  3      
  movl 0x8(%r15,%r14,1), %eax          #  38    0x5ff99  5      
  movl %r12d, %r12d                    #  39    0x5ff9e  3      
  movl %eax, 0x4(%r15,%r12,1)          #  40    0x5ffa1  5      
  nop                                  #  41    0x5ffa6  1      
  movl %r14d, %r14d                    #  42    0x5ffa7  3      
  movzwl 0x10(%r15,%r14,1), %eax       #  43    0x5ffaa  6      
  shrw $0x3, %ax                       #  44    0x5ffb0  4      
  movl %r14d, %r14d                    #  45    0x5ffb4  3      
  testb $0x4, 0x10(%r15,%r14,1)        #  46    0x5ffb7  6      
  movzbl %al, %eax                     #  47    0x5ffbd  3      
  jne .L_60180                         #  48    0x5ffc0  6      
  nop                                  #  49    0x5ffc6  1      
.L_60000:                              #        0x5ffc7  0      
  movzbl %al, %r13d                    #  50    0x5ffc7  4      
  movl %r14d, %esi                     #  51    0x5ffcb  3      
  movl %r13d, %edi                     #  52    0x5ffce  3      
  xchgw %ax, %ax                       #  53    0x5ffd1  3      
  nop                                  #  54    0x5ffd4  1      
  callq .base_from_object              #  55    0x5ffd5  5      
  leal 0xc(%rsp), %ecx                 #  56    0x5ffda  4      
  leal 0x8(%rbx), %edx                 #  57    0x5ffde  3      
  movl %eax, %esi                      #  58    0x5ffe1  2      
  movl %r13d, %edi                     #  59    0x5ffe3  3      
  nop                                  #  60    0x5ffe6  1      
  callq .read_encoded_value_with_base  #  61    0x5ffe7  5      
  movl 0xc(%rsp), %eax                 #  62    0x5ffec  4      
  movl %r12d, %r12d                    #  63    0x5fff0  3      
  movl %eax, 0x8(%r15,%r12,1)          #  64    0x5fff3  5      
  nop                                  #  65    0x5fff8  1      
  nop                                  #  66    0x5fff9  1      
.L_60060:                              #        0x5fffa  0      
  addl $0x18, %esp                     #  67    0x5fffa  3      
  addq %r15, %rsp                      #  68    0x5fffd  3      
  movl %ebx, %eax                      #  69    0x60000  2      
  popq %rbx                            #  70    0x60002  2      
  popq %r12                            #  71    0x60004  3      
  popq %r13                            #  72    0x60007  3      
  popq %r14                            #  73    0x6000a  3      
  popq %r11                            #  74    0x6000d  3      
  andl $0xffffffe0, %r11d              #  75    0x60010  7      
  addq %r15, %r11                      #  76    0x60017  3      
  jmpq %r11                            #  77    0x6001a  3      
  nop                                  #  78    0x6001d  1      
.L_60080:                              #        0x6001e  0      
  testq %rbx, %rbx                     #  79    0x6001e  3      
  movl %r14d, %r14d                    #  80    0x60021  3      
  movl %eax, 0x14(%r15,%r14,1)         #  81    0x60024  5      
  movl %edx, %edx                      #  82    0x60029  2      
  movl %r14d, (%r15,%rdx,1)            #  83    0x6002b  4      
  jne .L_5ffc0                         #  84    0x6002f  6      
  nop                                  #  85    0x60035  1      
.L_600a0:                              #        0x60036  0      
  movl 0xffd681b(%rip), %r14d          #  86    0x60036  7      
  testq %r14, %r14                     #  87    0x6003d  3      
  je .L_601c0                          #  88    0x60040  6      
  movl %r14d, %r14d                    #  89    0x60046  3      
  movl 0x14(%r15,%r14,1), %eax         #  90    0x60049  5      
  movl %r13d, %esi                     #  91    0x6004e  3      
  movl %r14d, %edi                     #  92    0x60051  3      
  xchgw %ax, %ax                       #  93    0x60054  3      
  movl %eax, 0xffd67fb(%rip)           #  94    0x60057  6      
  nop                                  #  95    0x6005d  1      
  nop                                  #  96    0x6005e  1      
  callq .search_object                 #  97    0x6005f  5      
  movl %eax, %ebx                      #  98    0x60064  2      
  movl 0xffd67f0(%rip), %eax           #  99    0x60066  6      
  leal 0xffd676e(%rip), %edx           #  100   0x6006c  6      
  testq %rax, %rax                     #  101   0x60072  3      
  je .L_60080                          #  102   0x60075  6      
  movl %r14d, %r14d                    #  103   0x6007b  3      
  movl (%r15,%r14,1), %ecx             #  104   0x6007e  4      
  movl %eax, %eax                      #  105   0x60082  2      
  cmpl %ecx, (%r15,%rax,1)             #  106   0x60084  4      
  jae .L_60140                         #  107   0x60088  6      
  jmpq .L_60080                        #  108   0x6008e  5      
  nop                                  #  109   0x60093  1      
  nop                                  #  110   0x60094  1      
.L_60120:                              #        0x60095  0      
  movl %eax, %eax                      #  111   0x60095  2      
  cmpl %ecx, (%r15,%rax,1)             #  112   0x60097  4      
  jb .L_60080                          #  113   0x6009b  6      
  nop                                  #  114   0x600a1  1      
  nop                                  #  115   0x600a2  1      
.L_60140:                              #        0x600a3  0      
  leal 0x14(%rax), %edx                #  116   0x600a3  3      
  movl %eax, %eax                      #  117   0x600a6  2      
  movl 0x14(%r15,%rax,1), %eax         #  118   0x600a8  5      
  testq %rax, %rax                     #  119   0x600ad  3      
  jne .L_60120                         #  120   0x600b0  6      
  testq %rbx, %rbx                     #  121   0x600b6  3      
  movl %r14d, %r14d                    #  122   0x600b9  3      
  movl %eax, 0x14(%r15,%r14,1)         #  123   0x600bc  5      
  movl %edx, %edx                      #  124   0x600c1  2      
  movl %r14d, (%r15,%rdx,1)            #  125   0x600c3  4      
  je .L_600a0                          #  126   0x600c7  6      
  jmpq .L_5ffc0                        #  127   0x600cd  5      
  nop                                  #  128   0x600d2  1      
  nop                                  #  129   0x600d3  1      
.L_60180:                              #        0x600d4  0      
  movl %ebx, %edi                      #  130   0x600d4  2      
  movl %ebx, %ebx                      #  131   0x600d6  2      
  subl 0x4(%r15,%rbx,1), %edi          #  132   0x600d8  5      
  addl $0x4, %edi                      #  133   0x600dd  3      
  nop                                  #  134   0x600e0  1      
  callq .get_cie_encoding              #  135   0x600e1  5      
  jmpq .L_60000                        #  136   0x600e6  5      
  nop                                  #  137   0x600eb  1      
  nop                                  #  138   0x600ec  1      
.L_601c0:                              #        0x600ed  0      
  xorl %ebx, %ebx                      #  139   0x600ed  2      
  jmpq .L_60060                        #  140   0x600ef  5      
  nop                                  #  141   0x600f4  1      
  nop                                  #  142   0x600f5  1      
                                                                
.size _Unwind_Find_FDE, .-_Unwind_Find_FDE

