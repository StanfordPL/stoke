  .text
  .globl _ZL16get_adjusted_ptrPKSt9type_infoS1_PPv
  .type _ZL16get_adjusted_ptrPKSt9type_infoS1_PPv, @function

#! file-offset 0x499c0
#! rip-offset  0x499c0
#! capacity    288 bytes

# Text                                       #  Line  RIP      Bytes  
._ZL16get_adjusted_ptrPKSt9type_infoS1_PPv:  #        0x499c0  0      
  movq %r12, -0x10(%rsp)                     #  1     0x499c0  5      
  movl %edx, %r12d                           #  2     0x499c5  3      
  movq %rbx, -0x18(%rsp)                     #  3     0x499c8  5      
  movq %r13, -0x8(%rsp)                      #  4     0x499cd  5      
  subl $0x28, %esp                           #  5     0x499d2  3      
  addq %r15, %rsp                            #  6     0x499d5  3      
  movl %r12d, %r12d                          #  7     0x499d8  3      
  movl (%r15,%r12,1), %eax                   #  8     0x499db  4      
  nop                                        #  9     0x499df  1      
  movl %esi, %r13d                           #  10    0x499e0  3      
  movl %edi, %ebx                            #  11    0x499e3  2      
  movl %r13d, %edi                           #  12    0x499e5  3      
  movl %eax, 0xc(%rsp)                       #  13    0x499e8  4      
  movl %r13d, %r13d                          #  14    0x499ec  3      
  movl (%r15,%r13,1), %eax                   #  15    0x499ef  4      
  movl %eax, %eax                            #  16    0x499f3  2      
  movl 0x8(%r15,%rax,1), %eax                #  17    0x499f5  5      
  nop                                        #  18    0x499fa  1      
  nop                                        #  19    0x499fb  1      
  nop                                        #  20    0x499fc  1      
  andl $0xffffffe0, %eax                     #  21    0x499fd  5      
  addq %r15, %rax                            #  22    0x49a02  3      
  callq %rax                                 #  23    0x49a05  2      
  testb %al, %al                             #  24    0x49a07  2      
  je .L_49a40                                #  25    0x49a09  6      
  movl 0xc(%rsp), %eax                       #  26    0x49a0f  4      
  movl %eax, %eax                            #  27    0x49a13  2      
  movl (%r15,%rax,1), %eax                   #  28    0x49a15  4      
  movl %eax, 0xc(%rsp)                       #  29    0x49a19  4      
  nop                                        #  30    0x49a1d  1      
.L_49a40:                                    #        0x49a1e  0      
  movl %ebx, %ebx                            #  31    0x49a1e  2      
  movl (%r15,%rbx,1), %eax                   #  32    0x49a20  4      
  leal 0xc(%rsp), %edx                       #  33    0x49a24  4      
  movl $0x1, %ecx                            #  34    0x49a28  5      
  movl %r13d, %esi                           #  35    0x49a2d  3      
  movl %ebx, %edi                            #  36    0x49a30  2      
  movl %eax, %eax                            #  37    0x49a32  2      
  movl 0x10(%r15,%rax,1), %eax               #  38    0x49a34  5      
  nop                                        #  39    0x49a39  1      
  nop                                        #  40    0x49a3a  1      
  nop                                        #  41    0x49a3b  1      
  andl $0xffffffe0, %eax                     #  42    0x49a3c  5      
  addq %r15, %rax                            #  43    0x49a41  3      
  callq %rax                                 #  44    0x49a44  2      
  movl %eax, %edx                            #  45    0x49a46  2      
  xorl %eax, %eax                            #  46    0x49a48  2      
  testb %dl, %dl                             #  47    0x49a4a  2      
  je .L_49aa0                                #  48    0x49a4c  6      
  movl 0xc(%rsp), %eax                       #  49    0x49a52  4      
  movl %r12d, %r12d                          #  50    0x49a56  3      
  movl %eax, (%r15,%r12,1)                   #  51    0x49a59  4      
  movl $0x1, %eax                            #  52    0x49a5d  5      
  nop                                        #  53    0x49a62  1      
.L_49aa0:                                    #        0x49a63  0      
  movq 0x10(%rsp), %rbx                      #  54    0x49a63  5      
  movq 0x18(%rsp), %r12                      #  55    0x49a68  5      
  movq 0x20(%rsp), %r13                      #  56    0x49a6d  5      
  addl $0x28, %esp                           #  57    0x49a72  3      
  addq %r15, %rsp                            #  58    0x49a75  3      
  popq %r11                                  #  59    0x49a78  3      
  nop                                        #  60    0x49a7b  1      
  andl $0xffffffe0, %r11d                    #  61    0x49a7c  7      
  addq %r15, %r11                            #  62    0x49a83  3      
  jmpq %r11                                  #  63    0x49a86  3      
  nop                                        #  64    0x49a89  1      
  nop                                        #  65    0x49a8a  1      
  nop                                        #  66    0x49a8b  1      
  nop                                        #  67    0x49a8c  1      
  nop                                        #  68    0x49a8d  1      
  nop                                        #  69    0x49a8e  1      
  nop                                        #  70    0x49a8f  1      
  nop                                        #  71    0x49a90  1      
  nop                                        #  72    0x49a91  1      
  nop                                        #  73    0x49a92  1      
  nop                                        #  74    0x49a93  1      
  nop                                        #  75    0x49a94  1      
  nop                                        #  76    0x49a95  1      
  nop                                        #  77    0x49a96  1      
  nop                                        #  78    0x49a97  1      
  nop                                        #  79    0x49a98  1      
  nop                                        #  80    0x49a99  1      
  nop                                        #  81    0x49a9a  1      
  nop                                        #  82    0x49a9b  1      
  nop                                        #  83    0x49a9c  1      
  nop                                        #  84    0x49a9d  1      
  nop                                        #  85    0x49a9e  1      
                                                                      
.size _ZL16get_adjusted_ptrPKSt9type_infoS1_PPv, .-_ZL16get_adjusted_ptrPKSt9type_infoS1_PPv

