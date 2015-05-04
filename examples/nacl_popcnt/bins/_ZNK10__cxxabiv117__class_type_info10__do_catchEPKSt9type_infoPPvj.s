  .text
  .globl _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj
  .type _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj, @function

#! file-offset 0x4bca0
#! rip-offset  0x4bca0
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj:  #        0x4bca0  0      
  movl %edi, %r8d                                                     #  1     0x4bca0  3      
  movl %esi, %edi                                                     #  2     0x4bca3  2      
  movl %edx, %edx                                                     #  3     0x4bca5  2      
  movl %r8d, %r8d                                                     #  4     0x4bca7  3      
  movl 0x4(%r15,%r8,1), %esi                                          #  5     0x4bcaa  5      
  movl %edi, %edi                                                     #  6     0x4bcaf  2      
  cmpl 0x4(%r15,%rdi,1), %esi                                         #  7     0x4bcb1  5      
  movl $0x1, %eax                                                     #  8     0x4bcb6  5      
  nop                                                                 #  9     0x4bcbb  1      
  je .L_4bce0                                                         #  10    0x4bcbc  6      
  xorl %eax, %eax                                                     #  11    0x4bcc2  2      
  cmpl $0x3, %ecx                                                     #  12    0x4bcc4  3      
  jbe .L_4bd00                                                        #  13    0x4bcc7  6      
  nop                                                                 #  14    0x4bccd  1      
  nop                                                                 #  15    0x4bcce  1      
.L_4bce0:                                                             #        0x4bccf  0      
  popq %r11                                                           #  16    0x4bccf  3      
  andl $0xffffffe0, %r11d                                             #  17    0x4bcd2  7      
  addq %r15, %r11                                                     #  18    0x4bcd9  3      
  jmpq %r11                                                           #  19    0x4bcdc  3      
  nop                                                                 #  20    0x4bcdf  1      
  nop                                                                 #  21    0x4bce0  1      
.L_4bd00:                                                             #        0x4bce1  0      
  movl %edi, %edi                                                     #  22    0x4bce1  2      
  movl (%r15,%rdi,1), %eax                                            #  23    0x4bce3  4      
  movl %r8d, %esi                                                     #  24    0x4bce7  3      
  movl %eax, %eax                                                     #  25    0x4bcea  2      
  movl 0x14(%r15,%rax,1), %eax                                        #  26    0x4bcec  5      
  andl $0xffffffe0, %eax                                              #  27    0x4bcf1  5      
  addq %r15, %rax                                                     #  28    0x4bcf6  3      
  jmpq %rax                                                           #  29    0x4bcf9  2      
  nop                                                                 #  30    0x4bcfb  1      
  nop                                                                 #  31    0x4bcfc  1      
  nop                                                                 #  32    0x4bcfd  1      
  nop                                                                 #  33    0x4bcfe  1      
  nop                                                                 #  34    0x4bcff  1      
  nop                                                                 #  35    0x4bd00  1      
  nop                                                                 #  36    0x4bd01  1      
  nop                                                                 #  37    0x4bd02  1      
                                                                                               
.size _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj, .-_ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj

