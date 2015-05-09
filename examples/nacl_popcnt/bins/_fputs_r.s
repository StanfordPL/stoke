  .text
  .globl _fputs_r
  .type _fputs_r, @function

#! file-offset 0x689c0
#! rip-offset  0x689c0
#! capacity    416 bytes

# Text                                   #  Line  RIP      Bytes  
._fputs_r:                               #        0x689c0  0      
  pushq %r12                             #  1     0x689c0  3      
  movl %edi, %r12d                       #  2     0x689c3  3      
  movl %esi, %edi                        #  3     0x689c6  2      
  pushq %rbx                             #  4     0x689c8  2      
  movl %edx, %ebx                        #  5     0x689ca  2      
  subl $0x38, %esp                       #  6     0x689cc  3      
  addq %r15, %rsp                        #  7     0x689cf  3      
  movl %edi, 0x20(%rsp)                  #  8     0x689d2  4      
  nop                                    #  9     0x689d6  1      
  callq .strlen                          #  10    0x689d7  5      
  movl %eax, 0x18(%rsp)                  #  11    0x689dc  4      
  movl %eax, 0x24(%rsp)                  #  12    0x689e0  4      
  leal 0x20(%rsp), %eax                  #  13    0x689e4  4      
  testq %r12, %r12                       #  14    0x689e8  3      
  movl $0x1, 0x14(%rsp)                  #  15    0x689eb  8      
  movl %eax, 0x10(%rsp)                  #  16    0x689f3  4      
  nop                                    #  17    0x689f7  1      
  je .L_68a20                            #  18    0x689f8  6      
  movl %r12d, %r12d                      #  19    0x689fe  3      
  movl 0x38(%r15,%r12,1), %eax           #  20    0x68a01  5      
  testl %eax, %eax                       #  21    0x68a06  2      
  je .L_68b20                            #  22    0x68a08  6      
  nop                                    #  23    0x68a0e  1      
.L_68a20:                                #        0x68a0f  0      
  movl %ebx, %ebx                        #  24    0x68a0f  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  25    0x68a11  6      
  movswl %dx, %eax                       #  26    0x68a17  3      
  testb $0x2, %ah                        #  27    0x68a1a  3      
  je .L_68ae0                            #  28    0x68a1d  6      
  nop                                    #  29    0x68a23  1      
.L_68a40:                                #        0x68a24  0      
  testb $0x20, %ah                       #  30    0x68a24  3      
  jne .L_68a60                           #  31    0x68a27  6      
  movl %ebx, %ebx                        #  32    0x68a2d  2      
  andl $0xffffdfff, 0x78(%r15,%rbx,1)    #  33    0x68a2f  9      
  orb $0x20, %dh                         #  34    0x68a38  3      
  movl %ebx, %ebx                        #  35    0x68a3b  2      
  movw %dx, 0xc(%r15,%rbx,1)             #  36    0x68a3d  6      
  nop                                    #  37    0x68a43  1      
.L_68a60:                                #        0x68a44  0      
  leal 0x10(%rsp), %edx                  #  38    0x68a44  4      
  movl %ebx, %esi                        #  39    0x68a48  2      
  movl %r12d, %edi                       #  40    0x68a4a  3      
  nop                                    #  41    0x68a4d  1      
  nop                                    #  42    0x68a4e  1      
  callq .__sfvwrite_r                    #  43    0x68a4f  5      
  movl %ebx, %ebx                        #  44    0x68a54  2      
  testb $0x2, 0xd(%r15,%rbx,1)           #  45    0x68a56  6      
  jne .L_68ac0                           #  46    0x68a5c  6      
  leal 0x5c(%rbx), %edi                  #  47    0x68a62  3      
  movl %eax, 0x8(%rsp)                   #  48    0x68a65  4      
  nop                                    #  49    0x68a69  1      
  callq .__local_lock_release_recursive  #  50    0x68a6a  5      
  movl 0x8(%rsp), %eax                   #  51    0x68a6f  4      
  nop                                    #  52    0x68a73  1      
  nop                                    #  53    0x68a74  1      
.L_68ac0:                                #        0x68a75  0      
  addl $0x38, %esp                       #  54    0x68a75  3      
  addq %r15, %rsp                        #  55    0x68a78  3      
  popq %rbx                              #  56    0x68a7b  2      
  popq %r12                              #  57    0x68a7d  3      
  popq %r11                              #  58    0x68a80  3      
  andl $0xffffffe0, %r11d                #  59    0x68a83  7      
  addq %r15, %r11                        #  60    0x68a8a  3      
  jmpq %r11                              #  61    0x68a8d  3      
  nop                                    #  62    0x68a90  1      
.L_68ae0:                                #        0x68a91  0      
  leal 0x5c(%rbx), %edi                  #  63    0x68a91  3      
  nop                                    #  64    0x68a94  1      
  nop                                    #  65    0x68a95  1      
  callq .__local_lock_acquire_recursive  #  66    0x68a96  5      
  movl %ebx, %ebx                        #  67    0x68a9b  2      
  movzwl 0xc(%r15,%rbx,1), %edx          #  68    0x68a9d  6      
  movswl %dx, %eax                       #  69    0x68aa3  3      
  jmpq .L_68a40                          #  70    0x68aa6  5      
  nop                                    #  71    0x68aab  1      
  nop                                    #  72    0x68aac  1      
.L_68b20:                                #        0x68aad  0      
  movl %r12d, %edi                       #  73    0x68aad  3      
  nop                                    #  74    0x68ab0  1      
  nop                                    #  75    0x68ab1  1      
  callq .__sinit                         #  76    0x68ab2  5      
  jmpq .L_68a20                          #  77    0x68ab7  5      
  nop                                    #  78    0x68abc  1      
  nop                                    #  79    0x68abd  1      
                                                                  
.size _fputs_r, .-_fputs_r

