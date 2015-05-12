  .text
  .globl _ZNK10__cxxabiv117__class_type_info12__do_dyncastEiNS0_10__sub_kindEPKS0_PKvS3_S5_RNS0_16__dyncast_resultE
  .type _ZNK10__cxxabiv117__class_type_info12__do_dyncastEiNS0_10__sub_kindEPKS0_PKvS3_S5_RNS0_16__dyncast_resultE, @function

#! file-offset 0x4bd60
#! rip-offset  0x4bd60
#! capacity    192 bytes

# Text                                                                                                        #  Line  RIP      Bytes  
._ZNK10__cxxabiv117__class_type_info12__do_dyncastEiNS0_10__sub_kindEPKS0_PKvS3_S5_RNS0_16__dyncast_resultE:  #        0x4bd60  0      
  movl %r8d, %r8d                                                                                             #  1     0x4bd60  3      
  cmpl %r8d, 0x8(%rsp)                                                                                        #  2     0x4bd63  5      
  movl %edi, %edi                                                                                             #  3     0x4bd68  2      
  movl %ecx, %ecx                                                                                             #  4     0x4bd6a  2      
  movl %r9d, %r9d                                                                                             #  5     0x4bd6c  3      
  movl 0x10(%rsp), %esi                                                                                       #  6     0x4bd6f  4      
  je .L_4bdc0                                                                                                 #  7     0x4bd73  6      
  movl %edi, %edi                                                                                             #  8     0x4bd79  2      
  movl 0x4(%r15,%rdi,1), %eax                                                                                 #  9     0x4bd7b  5      
  nop                                                                                                         #  10    0x4bd80  1      
.L_4bd80:                                                                                                     #        0x4bd81  0      
  movl %ecx, %ecx                                                                                             #  11    0x4bd81  2      
  cmpl %eax, 0x4(%r15,%rcx,1)                                                                                 #  12    0x4bd83  5      
  je .L_4bde0                                                                                                 #  13    0x4bd88  6      
  nop                                                                                                         #  14    0x4bd8e  1      
  nop                                                                                                         #  15    0x4bd8f  1      
.L_4bda0:                                                                                                     #        0x4bd90  0      
  popq %r11                                                                                                   #  16    0x4bd90  3      
  xorl %eax, %eax                                                                                             #  17    0x4bd93  2      
  andl $0xffffffe0, %r11d                                                                                     #  18    0x4bd95  7      
  addq %r15, %r11                                                                                             #  19    0x4bd9c  3      
  jmpq %r11                                                                                                   #  20    0x4bd9f  3      
  nop                                                                                                         #  21    0x4bda2  1      
  nop                                                                                                         #  22    0x4bda3  1      
.L_4bdc0:                                                                                                     #        0x4bda4  0      
  movl %edi, %edi                                                                                             #  23    0x4bda4  2      
  movl 0x4(%r15,%rdi,1), %eax                                                                                 #  24    0x4bda6  5      
  movl %r9d, %r9d                                                                                             #  25    0x4bdab  3      
  cmpl %eax, 0x4(%r15,%r9,1)                                                                                  #  26    0x4bdae  5      
  jne .L_4bd80                                                                                                #  27    0x4bdb3  6      
  movl %esi, %esi                                                                                             #  28    0x4bdb9  2      
  movl %edx, 0x8(%r15,%rsi,1)                                                                                 #  29    0x4bdbb  5      
  jmpq .L_4bda0                                                                                               #  30    0x4bdc0  5      
  nop                                                                                                         #  31    0x4bdc5  1      
.L_4bde0:                                                                                                     #        0x4bdc6  0      
  movl %esi, %esi                                                                                             #  32    0x4bdc6  2      
  movl %r8d, (%r15,%rsi,1)                                                                                    #  33    0x4bdc8  4      
  movl %esi, %esi                                                                                             #  34    0x4bdcc  2      
  movl %edx, 0x4(%r15,%rsi,1)                                                                                 #  35    0x4bdce  5      
  xorl %eax, %eax                                                                                             #  36    0x4bdd3  2      
  movl %esi, %esi                                                                                             #  37    0x4bdd5  2      
  movl $0x1, 0xc(%r15,%rsi,1)                                                                                 #  38    0x4bdd7  9      
  popq %r11                                                                                                   #  39    0x4bde0  3      
  nop                                                                                                         #  40    0x4bde3  1      
  andl $0xffffffe0, %r11d                                                                                     #  41    0x4bde4  7      
  addq %r15, %r11                                                                                             #  42    0x4bdeb  3      
  jmpq %r11                                                                                                   #  43    0x4bdee  3      
  nop                                                                                                         #  44    0x4bdf1  1      
  nop                                                                                                         #  45    0x4bdf2  1      
  nop                                                                                                         #  46    0x4bdf3  1      
  nop                                                                                                         #  47    0x4bdf4  1      
  nop                                                                                                         #  48    0x4bdf5  1      
  nop                                                                                                         #  49    0x4bdf6  1      
  nop                                                                                                         #  50    0x4bdf7  1      
  nop                                                                                                         #  51    0x4bdf8  1      
  nop                                                                                                         #  52    0x4bdf9  1      
  nop                                                                                                         #  53    0x4bdfa  1      
  nop                                                                                                         #  54    0x4bdfb  1      
  nop                                                                                                         #  55    0x4bdfc  1      
  nop                                                                                                         #  56    0x4bdfd  1      
  nop                                                                                                         #  57    0x4bdfe  1      
  nop                                                                                                         #  58    0x4bdff  1      
  nop                                                                                                         #  59    0x4be00  1      
  nop                                                                                                         #  60    0x4be01  1      
  nop                                                                                                         #  61    0x4be02  1      
  nop                                                                                                         #  62    0x4be03  1      
  nop                                                                                                         #  63    0x4be04  1      
  nop                                                                                                         #  64    0x4be05  1      
  nop                                                                                                         #  65    0x4be06  1      
                                                                                                                                       
.size _ZNK10__cxxabiv117__class_type_info12__do_dyncastEiNS0_10__sub_kindEPKS0_PKvS3_S5_RNS0_16__dyncast_resultE, .-_ZNK10__cxxabiv117__class_type_info12__do_dyncastEiNS0_10__sub_kindEPKS0_PKvS3_S5_RNS0_16__dyncast_resultE

