  .text
  .globl _fputs_r
  .type _fputs_r, @function

#! file-offset 0x68a60
#! rip-offset  0x68a60
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._fputs_r:                               #        0x68a60  0      
  pushq %r12                             #  1     0x68a60  3      
  movl %edi, %r12d                       #  2     0x68a63  3      
  movl %esi, %edi                        #  3     0x68a66  2      
  pushq %rbx                             #  4     0x68a68  2      
  movl %edx, %ebx                        #  5     0x68a6a  2      
  subl $0x38, %esp                       #  6     0x68a6c  3      
  addq %r15, %rsp                        #  7     0x68a6f  3      
  movl %edi, 0x20(%rsp)                  #  8     0x68a72  4      
  nop                                    #  9     0x68a76  1      
  callq .strlen                          #  10    0x68a77  5      
  movl %eax, 0x18(%rsp)                  #  11    0x68a7c  4      
  movl %eax, 0x24(%rsp)                  #  12    0x68a80  4      
  leal 0x20(%rsp), %eax                  #  13    0x68a84  4      
  testq %r12, %r12                       #  14    0x68a88  3      
  movl $0x1, 0x14(%rsp)                  #  15    0x68a8b  8      
  movl %eax, 0x10(%rsp)                  #  16    0x68a93  4      
  nop                                    #  17    0x68a97  1      
  je .L_68ac0                            #  18    0x68a98  6      
  movl %r12d, %r12d                      #  19    0x68a9e  3      
  movl 0x38(%r15,%r12,1), %eax           #  20    0x68aa1  5      
  testl %eax, %eax                       #  21    0x68aa6  2      
  je .L_68bc0                            #  22    0x68aa8  6      
  nop                                    #  23    0x68aae  1      
.L_68ac0:                                #        0x68aaf  0      
  movl %ebx, %ebx                        #  24    0x68aaf  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  25    0x68ab1  6      
  movswl %dx, %eax                       #  26    0x68ab7  3      
  testb $0x2, %ah                        #  27    0x68aba  3      
  je .L_68b80                            #  28    0x68abd  6      
  nop                                    #  29    0x68ac3  1      
.L_68ae0:                                #        0x68ac4  0      
  testb $0x20, %ah                       #  30    0x68ac4  3      
  jne .L_68b00                           #  31    0x68ac7  6      
  movl %ebx, %ebx                        #  32    0x68acd  2      
  andl $0xffffdfff, 0x78(%r15,%rbx,1)    #  33    0x68acf  9      
  orb $0x20, %dh                         #  34    0x68ad8  3      
  movl %ebx, %ebx                        #  35    0x68adb  2      
  movw %dx, 0xc(%r15,%rbx,1)             #  36    0x68add  6      
  nop                                    #  37    0x68ae3  1      
.L_68b00:                                #        0x68ae4  0      
  leal 0x10(%rsp), %edx                  #  38    0x68ae4  4      
  movl %ebx, %esi                        #  39    0x68ae8  2      
  movl %r12d, %edi                       #  40    0x68aea  3      
  nop                                    #  41    0x68aed  1      
  nop                                    #  42    0x68aee  1      
  callq .__sfvwrite_r                    #  43    0x68aef  5      
  movl %ebx, %ebx                        #  44    0x68af4  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  45    0x68af6  6      
  jne .L_68b60                           #  46    0x68afc  6      
  leal 0x5c(%rbx), %edi                  #  47    0x68b02  3      
  movl %eax, 0x8(%rsp)                   #  48    0x68b05  4      
  nop                                    #  49    0x68b09  1      
  callq .__local_lock_release_recursive  #  50    0x68b0a  5      
  movl 0x8(%rsp), %eax                   #  51    0x68b0f  4      
  nop                                    #  52    0x68b13  1      
  nop                                    #  53    0x68b14  1      
.L_68b60:                                #        0x68b15  0      
  addl $0x38, %esp                       #  54    0x68b15  3      
  addq %r15, %rsp                        #  55    0x68b18  3      
  popq %rbx                              #  56    0x68b1b  2      
  popq %r12                              #  57    0x68b1d  3      
  popq %r11                              #  58    0x68b20  3      
  andl $0xffffffe0, %r11d                #  59    0x68b23  7      
  addq %r15, %r11                        #  60    0x68b2a  3      
  jmpq %r11                              #  61    0x68b2d  3      
  nop                                    #  62    0x68b30  1      
.L_68b80:                                #        0x68b31  0      
  leal 0x5c(%rbx), %edi                  #  63    0x68b31  3      
  nop                                    #  64    0x68b34  1      
  nop                                    #  65    0x68b35  1      
  callq .__local_lock_acquire_recursive  #  66    0x68b36  5      
  movl %ebx, %ebx                        #  67    0x68b3b  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  68    0x68b3d  6      
  movswl %dx, %eax                       #  69    0x68b43  3      
  jmpq .L_68ae0                          #  70    0x68b46  5      
  nop                                    #  71    0x68b4b  1      
  nop                                    #  72    0x68b4c  1      
.L_68bc0:                                #        0x68b4d  0      
  movl %r12d, %edi                       #  73    0x68b4d  3      
  nop                                    #  74    0x68b50  1      
  nop                                    #  75    0x68b51  1      
  callq .__sinit                         #  76    0x68b52  5      
  jmpq .L_68ac0                          #  77    0x68b57  5      
  nop                                    #  78    0x68b5c  1      
  nop                                    #  79    0x68b5d  1      
                                                                  
.size _fputs_r, .-_fputs_r

