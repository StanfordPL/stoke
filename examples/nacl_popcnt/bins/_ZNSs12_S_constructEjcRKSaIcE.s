  .text
  .globl _ZNSs12_S_constructEjcRKSaIcE
  .type _ZNSs12_S_constructEjcRKSaIcE, @function

#! file-offset 0x47ba0
#! rip-offset  0x47ba0
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs12_S_constructEjcRKSaIcE:          #        0x47ba0  0      
  movq %rbx, -0x20(%rsp)                 #  1     0x47ba0  5      
  movq %r12, -0x18(%rsp)                 #  2     0x47ba5  5      
  movl $0x10031dac, %r12d                #  3     0x47baa  6      
  movq %r13, -0x10(%rsp)                 #  4     0x47bb0  5      
  movq %r14, -0x8(%rsp)                  #  5     0x47bb5  5      
  subl $0x38, %esp                       #  6     0x47bba  3      
  addq %r15, %rsp                        #  7     0x47bbd  3      
  testl %edi, %edi                       #  8     0x47bc0  2      
  movl %edi, %ebx                        #  9     0x47bc2  2      
  movl %esi, %r13d                       #  10    0x47bc4  3      
  movl %edx, %edx                        #  11    0x47bc7  2      
  movl %r12d, %r12d                      #  12    0x47bc9  3      
  je .L_47c20                            #  13    0x47bcc  6      
  xorl %esi, %esi                        #  14    0x47bd2  2      
  movb %r13b, 0x8(%rsp)                  #  15    0x47bd4  5      
  nop                                    #  16    0x47bd9  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  17    0x47bda  5      
  cmpl $0x1, %ebx                        #  18    0x47bdf  3      
  movl %eax, %r14d                       #  19    0x47be2  3      
  movzbl 0x8(%rsp), %ecx                 #  20    0x47be5  5      
  leal 0xc(%r14), %r12d                  #  21    0x47bea  4      
  je .L_47c60                            #  22    0x47bee  6      
  movsbl %cl, %esi                       #  23    0x47bf4  3      
  movl %ebx, %edx                        #  24    0x47bf7  2      
  movl %r12d, %edi                       #  25    0x47bf9  3      
  xchgw %ax, %ax                         #  26    0x47bfc  3      
  callq .memset                          #  27    0x47bff  5      
.L_47c00:                                #        0x47c04  0      
  movl %r14d, %r14d                      #  28    0x47c04  3      
  movl %ebx, (%r15,%r14,1)               #  29    0x47c07  4      
  addl %r12d, %ebx                       #  30    0x47c0b  3      
  movl %r14d, %r14d                      #  31    0x47c0e  3      
  movl $0x0, 0x8(%r15,%r14,1)            #  32    0x47c11  9      
  movl %ebx, %ebx                        #  33    0x47c1a  2      
  movb $0x0, (%r15,%rbx,1)               #  34    0x47c1c  5      
  nop                                    #  35    0x47c21  1      
.L_47c20:                                #        0x47c22  0      
  movl %r12d, %eax                       #  36    0x47c22  3      
  movq 0x18(%rsp), %rbx                  #  37    0x47c25  5      
  movq 0x20(%rsp), %r12                  #  38    0x47c2a  5      
  movq 0x28(%rsp), %r13                  #  39    0x47c2f  5      
  movq 0x30(%rsp), %r14                  #  40    0x47c34  5      
  addl $0x38, %esp                       #  41    0x47c39  3      
  addq %r15, %rsp                        #  42    0x47c3c  3      
  popq %r11                              #  43    0x47c3f  3      
  nop                                    #  44    0x47c42  1      
  andl $0xffffffe0, %r11d                #  45    0x47c43  7      
  addq %r15, %r11                        #  46    0x47c4a  3      
  jmpq %r11                              #  47    0x47c4d  3      
  nop                                    #  48    0x47c50  1      
  nop                                    #  49    0x47c51  1      
.L_47c60:                                #        0x47c52  0      
  movl %r12d, %r12d                      #  50    0x47c52  3      
  movb %r13b, (%r15,%r12,1)              #  51    0x47c55  4      
  jmpq .L_47c00                          #  52    0x47c59  5      
  nop                                    #  53    0x47c5e  1      
  nop                                    #  54    0x47c5f  1      
  nop                                    #  55    0x47c60  1      
  nop                                    #  56    0x47c61  1      
  nop                                    #  57    0x47c62  1      
  nop                                    #  58    0x47c63  1      
  nop                                    #  59    0x47c64  1      
  nop                                    #  60    0x47c65  1      
  nop                                    #  61    0x47c66  1      
  nop                                    #  62    0x47c67  1      
  nop                                    #  63    0x47c68  1      
  nop                                    #  64    0x47c69  1      
  nop                                    #  65    0x47c6a  1      
  nop                                    #  66    0x47c6b  1      
  nop                                    #  67    0x47c6c  1      
  nop                                    #  68    0x47c6d  1      
  nop                                    #  69    0x47c6e  1      
  nop                                    #  70    0x47c6f  1      
  nop                                    #  71    0x47c70  1      
  nop                                    #  72    0x47c71  1      
  nop                                    #  73    0x47c72  1      
  nop                                    #  74    0x47c73  1      
  nop                                    #  75    0x47c74  1      
                                                                  
.size _ZNSs12_S_constructEjcRKSaIcE, .-_ZNSs12_S_constructEjcRKSaIcE

