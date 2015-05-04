  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, @function

#! file-offset 0x4bd20
#! rip-offset  0x4bd20
#! capacity    160 bytes

# Text                                                       #  Line  RIP      Bytes  
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv:  #        0x4bd20  0      
  pushq %rbx                                                 #  1     0x4bd20  2      
  movl %edi, %edi                                            #  2     0x4bd22  2      
  movl %edx, %ebx                                            #  3     0x4bd24  2      
  movl %esi, %esi                                            #  4     0x4bd26  2      
  subl $0x10, %esp                                           #  5     0x4bd28  3      
  addq %r15, %rsp                                            #  6     0x4bd2b  3      
  movl %edi, %edi                                            #  7     0x4bd2e  2      
  movl (%r15,%rdi,1), %eax                                   #  8     0x4bd30  4      
  movl %ebx, %ebx                                            #  9     0x4bd34  2      
  movl (%r15,%rbx,1), %edx                                   #  10    0x4bd36  4      
  movl $0x0, (%rsp)                                          #  11    0x4bd3a  7      
  movl $0x0, 0x4(%rsp)                                       #  12    0x4bd41  8      
  movl %esp, %ecx                                            #  13    0x4bd49  2      
  movl $0x10, 0x8(%rsp)                                      #  14    0x4bd4b  8      
  movl $0x0, 0xc(%rsp)                                       #  15    0x4bd53  8      
  nop                                                        #  16    0x4bd5b  1      
  movl %eax, %eax                                            #  17    0x4bd5c  2      
  movl 0x18(%r15,%rax,1), %eax                               #  18    0x4bd5e  5      
  xchgw %ax, %ax                                             #  19    0x4bd63  3      
  nop                                                        #  20    0x4bd66  1      
  andl $0xffffffe0, %eax                                     #  21    0x4bd67  5      
  addq %r15, %rax                                            #  22    0x4bd6c  3      
  callq %rax                                                 #  23    0x4bd6f  2      
  movl 0x4(%rsp), %edx                                       #  24    0x4bd71  4      
  xorl %eax, %eax                                            #  25    0x4bd75  2      
  andl $0x6, %edx                                            #  26    0x4bd77  3      
  cmpl $0x6, %edx                                            #  27    0x4bd7a  3      
  jne .L_4bda0                                               #  28    0x4bd7d  6      
  movl (%rsp), %eax                                          #  29    0x4bd83  3      
  movl %ebx, %ebx                                            #  30    0x4bd86  2      
  movl %eax, (%r15,%rbx,1)                                   #  31    0x4bd88  4      
  movl $0x1, %eax                                            #  32    0x4bd8c  5      
  nop                                                        #  33    0x4bd91  1      
.L_4bda0:                                                    #        0x4bd92  0      
  addl $0x10, %esp                                           #  34    0x4bd92  3      
  addq %r15, %rsp                                            #  35    0x4bd95  3      
  popq %rbx                                                  #  36    0x4bd98  2      
  popq %r11                                                  #  37    0x4bd9a  3      
  andl $0xffffffe0, %r11d                                    #  38    0x4bd9d  7      
  addq %r15, %r11                                            #  39    0x4bda4  3      
  jmpq %r11                                                  #  40    0x4bda7  3      
  nop                                                        #  41    0x4bdaa  1      
  nop                                                        #  42    0x4bdab  1      
  nop                                                        #  43    0x4bdac  1      
  nop                                                        #  44    0x4bdad  1      
  nop                                                        #  45    0x4bdae  1      
  nop                                                        #  46    0x4bdaf  1      
  nop                                                        #  47    0x4bdb0  1      
  nop                                                        #  48    0x4bdb1  1      
  nop                                                        #  49    0x4bdb2  1      
  nop                                                        #  50    0x4bdb3  1      
  nop                                                        #  51    0x4bdb4  1      
  nop                                                        #  52    0x4bdb5  1      
  nop                                                        #  53    0x4bdb6  1      
                                                                                      
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PPv

