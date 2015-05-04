  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, @function

#! file-offset 0x4bea0
#! rip-offset  0x4bea0
#! capacity    128 bytes

# Text                                                                              #  Line  RIP      Bytes  
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE:  #        0x4bea0  0      
  movl %edi, %edi                                                                   #  1     0x4bea0  2      
  movl %esi, %esi                                                                   #  2     0x4bea2  2      
  xorl %eax, %eax                                                                   #  3     0x4bea4  2      
  movl %edi, %edi                                                                   #  4     0x4bea6  2      
  movl 0x4(%r15,%rdi,1), %edi                                                       #  5     0x4bea8  5      
  movl %esi, %esi                                                                   #  6     0x4bead  2      
  cmpl 0x4(%r15,%rsi,1), %edi                                                       #  7     0x4beaf  5      
  movl %edx, %edx                                                                   #  8     0x4beb4  2      
  movl %ecx, %ecx                                                                   #  9     0x4beb6  2      
  je .L_4bee0                                                                       #  10    0x4beb8  6      
  popq %r11                                                                         #  11    0x4bebe  3      
  nop                                                                               #  12    0x4bec1  1      
  andl $0xffffffe0, %r11d                                                           #  13    0x4bec2  7      
  addq %r15, %r11                                                                   #  14    0x4bec9  3      
  jmpq %r11                                                                         #  15    0x4becc  3      
  nop                                                                               #  16    0x4becf  1      
  nop                                                                               #  17    0x4bed0  1      
.L_4bee0:                                                                           #        0x4bed1  0      
  movl %ecx, %ecx                                                                   #  18    0x4bed1  2      
  movl %edx, (%r15,%rcx,1)                                                          #  19    0x4bed3  4      
  movl %ecx, %ecx                                                                   #  20    0x4bed7  2      
  movl $0x8, 0xc(%r15,%rcx,1)                                                       #  21    0x4bed9  9      
  movl $0x1, %eax                                                                   #  22    0x4bee2  5      
  nop                                                                               #  23    0x4bee7  1      
  movl %ecx, %ecx                                                                   #  24    0x4bee8  2      
  movl $0x6, 0x4(%r15,%rcx,1)                                                       #  25    0x4beea  9      
  popq %r11                                                                         #  26    0x4bef3  3      
  andl $0xffffffe0, %r11d                                                           #  27    0x4bef6  7      
  addq %r15, %r11                                                                   #  28    0x4befd  3      
  jmpq %r11                                                                         #  29    0x4bf00  3      
  nop                                                                               #  30    0x4bf03  1      
  nop                                                                               #  31    0x4bf04  1      
  nop                                                                               #  32    0x4bf05  1      
  nop                                                                               #  33    0x4bf06  1      
  nop                                                                               #  34    0x4bf07  1      
  nop                                                                               #  35    0x4bf08  1      
  nop                                                                               #  36    0x4bf09  1      
  nop                                                                               #  37    0x4bf0a  1      
  nop                                                                               #  38    0x4bf0b  1      
                                                                                                             
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE

