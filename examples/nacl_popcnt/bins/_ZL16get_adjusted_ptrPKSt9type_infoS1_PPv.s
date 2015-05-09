  .text
  .globl _ZL16get_adjusted_ptrPKSt9type_infoS1_PPv
  .type _ZL16get_adjusted_ptrPKSt9type_infoS1_PPv, @function

#! file-offset 0x49920
#! rip-offset  0x49920
#! capacity    288 bytes

# Text                                       #  Line  RIP      Bytes  
._ZL16get_adjusted_ptrPKSt9type_infoS1_PPv:  #        0x49920  0      
  movq %r12, -0x10(%rsp)                     #  1     0x49920  5      
  movl %edx, %r12d                           #  2     0x49925  3      
  movq %rbx, -0x18(%rsp)                     #  3     0x49928  5      
  movq %r13, -0x8(%rsp)                      #  4     0x4992d  5      
  subl $0x28, %esp                           #  5     0x49932  3      
  addq %r15, %rsp                            #  6     0x49935  3      
  movl %r12d, %r12d                          #  7     0x49938  3      
  movl (%r15,%r12,1), %eax                   #  8     0x4993b  4      
  nop                                        #  9     0x4993f  1      
  movl %esi, %r13d                           #  10    0x49940  3      
  movl %edi, %ebx                            #  11    0x49943  2      
  movl %r13d, %edi                           #  12    0x49945  3      
  movl %eax, 0xc(%rsp)                       #  13    0x49948  4      
  movl %r13d, %r13d                          #  14    0x4994c  3      
  movl (%r15,%r13,1), %eax                   #  15    0x4994f  4      
  movl %eax, %eax                            #  16    0x49953  2      
  movl 0x8(%r15,%rax,1), %eax                #  17    0x49955  5      
  nop                                        #  18    0x4995a  1      
  nop                                        #  19    0x4995b  1      
  nop                                        #  20    0x4995c  1      
  andl $0xffffffe0, %eax                     #  21    0x4995d  5      
  addq %r15, %rax                            #  22    0x49962  3      
  callq %rax                                 #  23    0x49965  2      
  testb %al, %al                             #  24    0x49967  2      
  je .L_499a0                                #  25    0x49969  6      
  movl 0xc(%rsp), %eax                       #  26    0x4996f  4      
  movl %eax, %eax                            #  27    0x49973  2      
  movl (%r15,%rax,1), %eax                   #  28    0x49975  4      
  movl %eax, 0xc(%rsp)                       #  29    0x49979  4      
  nop                                        #  30    0x4997d  1      
.L_499a0:                                    #        0x4997e  0      
  movl %ebx, %ebx                            #  31    0x4997e  2      
  movl (%r15,%rbx,1), %eax                   #  32    0x49980  4      
  leal 0xc(%rsp), %edx                       #  33    0x49984  4      
  movl $0x1, %ecx                            #  34    0x49988  5      
  movl %r13d, %esi                           #  35    0x4998d  3      
  movl %ebx, %edi                            #  36    0x49990  2      
  movl %eax, %eax                            #  37    0x49992  2      
  movl 0x10(%r15,%rax,1), %eax               #  38    0x49994  5      
  nop                                        #  39    0x49999  1      
  nop                                        #  40    0x4999a  1      
  nop                                        #  41    0x4999b  1      
  andl $0xffffffe0, %eax                     #  42    0x4999c  5      
  addq %r15, %rax                            #  43    0x499a1  3      
  callq %rax                                 #  44    0x499a4  2      
  movl %eax, %edx                            #  45    0x499a6  2      
  xorl %eax, %eax                            #  46    0x499a8  2      
  testb %dl, %dl                             #  47    0x499aa  2      
  je .L_49a00                                #  48    0x499ac  6      
  movl 0xc(%rsp), %eax                       #  49    0x499b2  4      
  movl %r12d, %r12d                          #  50    0x499b6  3      
  movl %eax, (%r15,%r12,1)                   #  51    0x499b9  4      
  movl $0x1, %eax                            #  52    0x499bd  5      
  nop                                        #  53    0x499c2  1      
.L_49a00:                                    #        0x499c3  0      
  movq 0x10(%rsp), %rbx                      #  54    0x499c3  5      
  movq 0x18(%rsp), %r12                      #  55    0x499c8  5      
  movq 0x20(%rsp), %r13                      #  56    0x499cd  5      
  addl $0x28, %esp                           #  57    0x499d2  3      
  addq %r15, %rsp                            #  58    0x499d5  3      
  popq %r11                                  #  59    0x499d8  3      
  nop                                        #  60    0x499db  1      
  andl $0xffffffe0, %r11d                    #  61    0x499dc  7      
  addq %r15, %r11                            #  62    0x499e3  3      
  jmpq %r11                                  #  63    0x499e6  3      
  nop                                        #  64    0x499e9  1      
  nop                                        #  65    0x499ea  1      
  nop                                        #  66    0x499eb  1      
  nop                                        #  67    0x499ec  1      
  nop                                        #  68    0x499ed  1      
  nop                                        #  69    0x499ee  1      
  nop                                        #  70    0x499ef  1      
  nop                                        #  71    0x499f0  1      
  nop                                        #  72    0x499f1  1      
  nop                                        #  73    0x499f2  1      
  nop                                        #  74    0x499f3  1      
  nop                                        #  75    0x499f4  1      
  nop                                        #  76    0x499f5  1      
  nop                                        #  77    0x499f6  1      
  nop                                        #  78    0x499f7  1      
  nop                                        #  79    0x499f8  1      
  nop                                        #  80    0x499f9  1      
  nop                                        #  81    0x499fa  1      
  nop                                        #  82    0x499fb  1      
  nop                                        #  83    0x499fc  1      
  nop                                        #  84    0x499fd  1      
  nop                                        #  85    0x499fe  1      
                                                                      
.size _ZL16get_adjusted_ptrPKSt9type_infoS1_PPv, .-_ZL16get_adjusted_ptrPKSt9type_infoS1_PPv

