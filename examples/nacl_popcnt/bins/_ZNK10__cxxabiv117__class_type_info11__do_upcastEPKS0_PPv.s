  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, @function

#! file-offset 0x4bc80
#! rip-offset  0x4bc80
#! capacity    160 bytes

# Text                                                       #  Line  RIP      Bytes  
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv:  #        0x4bc80  0      
  pushq %rbx                                                 #  1     0x4bc80  2      
  movl %edi, %edi                                            #  2     0x4bc82  2      
  movl %edx, %ebx                                            #  3     0x4bc84  2      
  movl %esi, %esi                                            #  4     0x4bc86  2      
  subl $0x10, %esp                                           #  5     0x4bc88  3      
  addq %r15, %rsp                                            #  6     0x4bc8b  3      
  movl %edi, %edi                                            #  7     0x4bc8e  2      
  movl (%r15,%rdi,1), %eax                                   #  8     0x4bc90  4      
  movl %ebx, %ebx                                            #  9     0x4bc94  2      
  movl (%r15,%rbx,1), %edx                                   #  10    0x4bc96  4      
  movl $0x0, (%rsp)                                          #  11    0x4bc9a  7      
  movl $0x0, 0x4(%rsp)                                       #  12    0x4bca1  8      
  movl %esp, %ecx                                            #  13    0x4bca9  2      
  movl $0x10, 0x8(%rsp)                                      #  14    0x4bcab  8      
  movl $0x0, 0xc(%rsp)                                       #  15    0x4bcb3  8      
  nop                                                        #  16    0x4bcbb  1      
  movl %eax, %eax                                            #  17    0x4bcbc  2      
  movl 0x18(%r15,%rax,1), %eax                               #  18    0x4bcbe  5      
  xchgw %ax, %ax                                             #  19    0x4bcc3  3      
  nop                                                        #  20    0x4bcc6  1      
  andl $0xffffffe0, %eax                                     #  21    0x4bcc7  5      
  addq %r15, %rax                                            #  22    0x4bccc  3      
  callq %rax                                                 #  23    0x4bccf  2      
  movl 0x4(%rsp), %edx                                       #  24    0x4bcd1  4      
  xorl %eax, %eax                                            #  25    0x4bcd5  2      
  andl $0x6, %edx                                            #  26    0x4bcd7  3      
  cmpl $0x6, %edx                                            #  27    0x4bcda  3      
  jne .L_4bd00                                               #  28    0x4bcdd  6      
  movl (%rsp), %eax                                          #  29    0x4bce3  3      
  movl %ebx, %ebx                                            #  30    0x4bce6  2      
  movl %eax, (%r15,%rbx,1)                                   #  31    0x4bce8  4      
  movl $0x1, %eax                                            #  32    0x4bcec  5      
  nop                                                        #  33    0x4bcf1  1      
.L_4bd00:                                                    #        0x4bcf2  0      
  addl $0x10, %esp                                           #  34    0x4bcf2  3      
  addq %r15, %rsp                                            #  35    0x4bcf5  3      
  popq %rbx                                                  #  36    0x4bcf8  2      
  popq %r11                                                  #  37    0x4bcfa  3      
  andl $0xffffffe0, %r11d                                    #  38    0x4bcfd  7      
  addq %r15, %r11                                            #  39    0x4bd04  3      
  jmpq %r11                                                  #  40    0x4bd07  3      
  nop                                                        #  41    0x4bd0a  1      
  nop                                                        #  42    0x4bd0b  1      
  nop                                                        #  43    0x4bd0c  1      
  nop                                                        #  44    0x4bd0d  1      
  nop                                                        #  45    0x4bd0e  1      
  nop                                                        #  46    0x4bd0f  1      
  nop                                                        #  47    0x4bd10  1      
  nop                                                        #  48    0x4bd11  1      
  nop                                                        #  49    0x4bd12  1      
  nop                                                        #  50    0x4bd13  1      
  nop                                                        #  51    0x4bd14  1      
  nop                                                        #  52    0x4bd15  1      
  nop                                                        #  53    0x4bd16  1      
                                                                                      
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv

