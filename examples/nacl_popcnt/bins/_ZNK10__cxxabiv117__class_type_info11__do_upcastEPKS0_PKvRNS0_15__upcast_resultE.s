  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, @function

#! file-offset 0x4be20
#! rip-offset  0x4be20
#! capacity    128 bytes

# Text                                                                              #  Line  RIP      Bytes  
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE:  #        0x4be20  0      
  movl %edi, %edi                                                                   #  1     0x4be20  2      
  movl %esi, %esi                                                                   #  2     0x4be22  2      
  xorl %eax, %eax                                                                   #  3     0x4be24  2      
  movl %edi, %edi                                                                   #  4     0x4be26  2      
  movl 0x4(%r15,%rdi,1), %edi                                                       #  5     0x4be28  5      
  movl %esi, %esi                                                                   #  6     0x4be2d  2      
  cmpl 0x4(%r15,%rsi,1), %edi                                                       #  7     0x4be2f  5      
  movl %edx, %edx                                                                   #  8     0x4be34  2      
  movl %ecx, %ecx                                                                   #  9     0x4be36  2      
  je .L_4be60                                                                       #  10    0x4be38  6      
  popq %r11                                                                         #  11    0x4be3e  3      
  nop                                                                               #  12    0x4be41  1      
  andl $0xffffffe0, %r11d                                                           #  13    0x4be42  7      
  addq %r15, %r11                                                                   #  14    0x4be49  3      
  jmpq %r11                                                                         #  15    0x4be4c  3      
  nop                                                                               #  16    0x4be4f  1      
  nop                                                                               #  17    0x4be50  1      
.L_4be60:                                                                           #        0x4be51  0      
  movl %ecx, %ecx                                                                   #  18    0x4be51  2      
  movl %edx, (%r15,%rcx,1)                                                          #  19    0x4be53  4      
  movl %ecx, %ecx                                                                   #  20    0x4be57  2      
  movl $0x8, 0xc(%r15,%rcx,1)                                                       #  21    0x4be59  9      
  movl $0x1, %eax                                                                   #  22    0x4be62  5      
  nop                                                                               #  23    0x4be67  1      
  movl %ecx, %ecx                                                                   #  24    0x4be68  2      
  movl $0x6, 0x4(%r15,%rcx,1)                                                       #  25    0x4be6a  9      
  popq %r11                                                                         #  26    0x4be73  3      
  andl $0xffffffe0, %r11d                                                           #  27    0x4be76  7      
  addq %r15, %r11                                                                   #  28    0x4be7d  3      
  jmpq %r11                                                                         #  29    0x4be80  3      
  nop                                                                               #  30    0x4be83  1      
  nop                                                                               #  31    0x4be84  1      
  nop                                                                               #  32    0x4be85  1      
  nop                                                                               #  33    0x4be86  1      
  nop                                                                               #  34    0x4be87  1      
  nop                                                                               #  35    0x4be88  1      
  nop                                                                               #  36    0x4be89  1      
  nop                                                                               #  37    0x4be8a  1      
  nop                                                                               #  38    0x4be8b  1      
                                                                                                             
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE

