  .text
  .globl _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj
  .type _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj, @function

#! file-offset 0x4bc20
#! rip-offset  0x4bc20
#! capacity    128 bytes

# Text                                                                #  Line  RIP      Bytes  
._ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj:  #        0x4bc20  0      
  movl %edi, %r8d                                                     #  1     0x4bc20  3      
  movl %esi, %edi                                                     #  2     0x4bc23  2      
  movl %edx, %edx                                                     #  3     0x4bc25  2      
  movl %r8d, %r8d                                                     #  4     0x4bc27  3      
  movl 0x4(%r15,%r8,1), %esi                                          #  5     0x4bc2a  5      
  movl %edi, %edi                                                     #  6     0x4bc2f  2      
  cmpl 0x4(%r15,%rdi,1), %esi                                         #  7     0x4bc31  5      
  movl $0x1, %eax                                                     #  8     0x4bc36  5      
  nop                                                                 #  9     0x4bc3b  1      
  je .L_4bc60                                                         #  10    0x4bc3c  6      
  xorl %eax, %eax                                                     #  11    0x4bc42  2      
  cmpl $0x3, %ecx                                                     #  12    0x4bc44  3      
  jbe .L_4bc80                                                        #  13    0x4bc47  6      
  nop                                                                 #  14    0x4bc4d  1      
  nop                                                                 #  15    0x4bc4e  1      
.L_4bc60:                                                             #        0x4bc4f  0      
  popq %r11                                                           #  16    0x4bc4f  3      
  andl $0xffffffe0, %r11d                                             #  17    0x4bc52  7      
  addq %r15, %r11                                                     #  18    0x4bc59  3      
  jmpq %r11                                                           #  19    0x4bc5c  3      
  nop                                                                 #  20    0x4bc5f  1      
  nop                                                                 #  21    0x4bc60  1      
.L_4bc80:                                                             #        0x4bc61  0      
  movl %edi, %edi                                                     #  22    0x4bc61  2      
  movl (%r15,%rdi,1), %eax                                            #  23    0x4bc63  4      
  movl %r8d, %esi                                                     #  24    0x4bc67  3      
  movl %eax, %eax                                                     #  25    0x4bc6a  2      
  movl 0x14(%r15,%rax,1), %eax                                        #  26    0x4bc6c  5      
  andl $0xffffffe0, %eax                                              #  27    0x4bc71  5      
  addq %r15, %rax                                                     #  28    0x4bc76  3      
  jmpq %rax                                                           #  29    0x4bc79  2      
  nop                                                                 #  30    0x4bc7b  1      
  nop                                                                 #  31    0x4bc7c  1      
  nop                                                                 #  32    0x4bc7d  1      
  nop                                                                 #  33    0x4bc7e  1      
  nop                                                                 #  34    0x4bc7f  1      
  nop                                                                 #  35    0x4bc80  1      
  nop                                                                 #  36    0x4bc81  1      
  nop                                                                 #  37    0x4bc82  1      
                                                                                               
.size _ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj, .-_ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj

