  .text
  .globl _fputs_r
  .type _fputs_r, @function

#! file-offset 0x689e0
#! rip-offset  0x689e0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._fputs_r:                               #        0x689e0  0      
  pushq %r12                             #  1     0x689e0  3      
  movl %edi, %r12d                       #  2     0x689e3  3      
  movl %esi, %edi                        #  3     0x689e6  2      
  pushq %rbx                             #  4     0x689e8  2      
  movl %edx, %ebx                        #  5     0x689ea  2      
  subl $0x38, %esp                       #  6     0x689ec  3      
  addq %r15, %rsp                        #  7     0x689ef  3      
  movl %edi, 0x20(%rsp)                  #  8     0x689f2  4      
  nop                                    #  9     0x689f6  1      
  callq .strlen                          #  10    0x689f7  5      
  movl %eax, 0x18(%rsp)                  #  11    0x689fc  4      
  movl %eax, 0x24(%rsp)                  #  12    0x68a00  4      
  leal 0x20(%rsp), %eax                  #  13    0x68a04  4      
  testq %r12, %r12                       #  14    0x68a08  3      
  movl $0x1, 0x14(%rsp)                  #  15    0x68a0b  8      
  movl %eax, 0x10(%rsp)                  #  16    0x68a13  4      
  nop                                    #  17    0x68a17  1      
  je .L_68a40                            #  18    0x68a18  6      
  movl %r12d, %r12d                      #  19    0x68a1e  3      
  movl 0x38(%r15,%r12,1), %eax           #  20    0x68a21  5      
  testl %eax, %eax                       #  21    0x68a26  2      
  je .L_68b40                            #  22    0x68a28  6      
  nop                                    #  23    0x68a2e  1      
.L_68a40:                                #        0x68a2f  0      
  movl %ebx, %ebx                        #  24    0x68a2f  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  25    0x68a31  6      
  movswl %dx, %eax                       #  26    0x68a37  3      
  testb $0x2, %ah                        #  27    0x68a3a  3      
  je .L_68b00                            #  28    0x68a3d  6      
  nop                                    #  29    0x68a43  1      
.L_68a60:                                #        0x68a44  0      
  testb $0x20, %ah                       #  30    0x68a44  3      
  jne .L_68a80                           #  31    0x68a47  6      
  movl %ebx, %ebx                        #  32    0x68a4d  2      
  andl $0xffffdfff, 0x78(%r15,%rbx,1)    #  33    0x68a4f  9      
  orb $0x20, %dh                         #  34    0x68a58  3      
  movl %ebx, %ebx                        #  35    0x68a5b  2      
  movw %dx, 0xc(%r15,%rbx,1)             #  36    0x68a5d  6      
  nop                                    #  37    0x68a63  1      
.L_68a80:                                #        0x68a64  0      
  leal 0x10(%rsp), %edx                  #  38    0x68a64  4      
  movl %ebx, %esi                        #  39    0x68a68  2      
  movl %r12d, %edi                       #  40    0x68a6a  3      
  nop                                    #  41    0x68a6d  1      
  nop                                    #  42    0x68a6e  1      
  callq .__sfvwrite_r                    #  43    0x68a6f  5      
  movl %ebx, %ebx                        #  44    0x68a74  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  45    0x68a76  6      
  jne .L_68ae0                           #  46    0x68a7c  6      
  leal 0x5c(%rbx), %edi                  #  47    0x68a82  3      
  movl %eax, 0x8(%rsp)                   #  48    0x68a85  4      
  nop                                    #  49    0x68a89  1      
  callq .__local_lock_release_recursive  #  50    0x68a8a  5      
  movl 0x8(%rsp), %eax                   #  51    0x68a8f  4      
  nop                                    #  52    0x68a93  1      
  nop                                    #  53    0x68a94  1      
.L_68ae0:                                #        0x68a95  0      
  addl $0x38, %esp                       #  54    0x68a95  3      
  addq %r15, %rsp                        #  55    0x68a98  3      
  popq %rbx                              #  56    0x68a9b  2      
  popq %r12                              #  57    0x68a9d  3      
  popq %r11                              #  58    0x68aa0  3      
  andl $0xffffffe0, %r11d                #  59    0x68aa3  7      
  addq %r15, %r11                        #  60    0x68aaa  3      
  jmpq %r11                              #  61    0x68aad  3      
  nop                                    #  62    0x68ab0  1      
.L_68b00:                                #        0x68ab1  0      
  leal 0x5c(%rbx), %edi                  #  63    0x68ab1  3      
  nop                                    #  64    0x68ab4  1      
  nop                                    #  65    0x68ab5  1      
  callq .__local_lock_acquire_recursive  #  66    0x68ab6  5      
  movl %ebx, %ebx                        #  67    0x68abb  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  68    0x68abd  6      
  movswl %dx, %eax                       #  69    0x68ac3  3      
  jmpq .L_68a60                          #  70    0x68ac6  5      
  nop                                    #  71    0x68acb  1      
  nop                                    #  72    0x68acc  1      
.L_68b40:                                #        0x68acd  0      
  movl %r12d, %edi                       #  73    0x68acd  3      
  nop                                    #  74    0x68ad0  1      
  nop                                    #  75    0x68ad1  1      
  callq .__sinit                         #  76    0x68ad2  5      
  jmpq .L_68a40                          #  77    0x68ad7  5      
  nop                                    #  78    0x68adc  1      
  nop                                    #  79    0x68add  1      
                                                                  
.size _fputs_r, .-_fputs_r

