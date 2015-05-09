  .text
  .globl _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE
  .type _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, @function

#! file-offset 0x4be00
#! rip-offset  0x4be00
#! capacity    128 bytes

# Text                                                                              #  Line  RIP      Bytes  
._ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE:  #        0x4be00  0      
  movl %edi, %edi                                                                   #  1     0x4be00  2      
  movl %esi, %esi                                                                   #  2     0x4be02  2      
  xorl %eax, %eax                                                                   #  3     0x4be04  2      
  movl %edi, %edi                                                                   #  4     0x4be06  2      
  movl 0x4(%r15,%rdi,1), %edi                                                       #  5     0x4be08  5      
  movl %esi, %esi                                                                   #  6     0x4be0d  2      
  cmpl 0x4(%r15,%rsi,1), %edi                                                       #  7     0x4be0f  5      
  movl %edx, %edx                                                                   #  8     0x4be14  2      
  movl %ecx, %ecx                                                                   #  9     0x4be16  2      
  je .L_4be40                                                                       #  10    0x4be18  6      
  popq %r11                                                                         #  11    0x4be1e  3      
  nop                                                                               #  12    0x4be21  1      
  andl $0xffffffe0, %r11d                                                           #  13    0x4be22  7      
  addq %r15, %r11                                                                   #  14    0x4be29  3      
  jmpq %r11                                                                         #  15    0x4be2c  3      
  nop                                                                               #  16    0x4be2f  1      
  nop                                                                               #  17    0x4be30  1      
.L_4be40:                                                                           #        0x4be31  0      
  movl %ecx, %ecx                                                                   #  18    0x4be31  2      
  movl %edx, (%r15,%rcx,1)                                                          #  19    0x4be33  4      
  movl %ecx, %ecx                                                                   #  20    0x4be37  2      
  movl $0x8, 0xc(%r15,%rcx,1)                                                       #  21    0x4be39  9      
  movl $0x1, %eax                                                                   #  22    0x4be42  5      
  nop                                                                               #  23    0x4be47  1      
  movl %ecx, %ecx                                                                   #  24    0x4be48  2      
  movl $0x6, 0x4(%r15,%rcx,1)                                                       #  25    0x4be4a  9      
  popq %r11                                                                         #  26    0x4be53  3      
  andl $0xffffffe0, %r11d                                                           #  27    0x4be56  7      
  addq %r15, %r11                                                                   #  28    0x4be5d  3      
  jmpq %r11                                                                         #  29    0x4be60  3      
  nop                                                                               #  30    0x4be63  1      
  nop                                                                               #  31    0x4be64  1      
  nop                                                                               #  32    0x4be65  1      
  nop                                                                               #  33    0x4be66  1      
  nop                                                                               #  34    0x4be67  1      
  nop                                                                               #  35    0x4be68  1      
  nop                                                                               #  36    0x4be69  1      
  nop                                                                               #  37    0x4be6a  1      
  nop                                                                               #  38    0x4be6b  1      
                                                                                                             
.size _ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE, .-_ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE

