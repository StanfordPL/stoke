  .text
  .globl _ZL15get_ttype_entryP16lsda_header_infom
  .type _ZL15get_ttype_entryP16lsda_header_infom, @function

#! file-offset 0x49f80
#! rip-offset  0x49f80
#! capacity    320 bytes

# Text                                             #  Line  RIP      Bytes  
._ZL15get_ttype_entryP16lsda_header_infom:         #        0x49f80  0      
  movl %edi, %eax                                  #  1     0x49f80  2      
  subl $0x18, %esp                                 #  2     0x49f82  3      
  addq %r15, %rsp                                  #  3     0x49f85  3      
  movl %eax, %eax                                  #  4     0x49f88  2      
  movzbl 0x14(%r15,%rax,1), %ecx                   #  5     0x49f8a  6      
  cmpb $0xff, %cl                                  #  6     0x49f90  3      
  movzbl %cl, %edi                                 #  7     0x49f93  3      
  je .L_4a0a0                                      #  8     0x49f96  6      
  movl %edi, %ecx                                  #  9     0x49f9c  2      
  xchgw %ax, %ax                                   #  10    0x49f9e  3      
  andl $0x7, %ecx                                  #  11    0x49fa1  3      
  cmpl $0x2, %ecx                                  #  12    0x49fa4  3      
  je .L_4a080                                      #  13    0x49fa7  6      
  jle .L_49fe0                                     #  14    0x49fad  6      
  cmpl $0x3, %ecx                                  #  15    0x49fb3  3      
  je .L_4a000                                      #  16    0x49fb6  6      
  cmpl $0x4, %ecx                                  #  17    0x49fbc  3      
  je .L_4a060                                      #  18    0x49fbf  6      
  nop                                              #  19    0x49fc5  1      
.L_49fc0:                                          #        0x49fc6  0      
  nop                                              #  20    0x49fc6  1      
  nop                                              #  21    0x49fc7  1      
  callq .abort                                     #  22    0x49fc8  5      
.L_49fe0:                                          #        0x49fcd  0      
  testl %ecx, %ecx                                 #  23    0x49fcd  2      
  jne .L_49fc0                                     #  24    0x49fcf  6      
  nop                                              #  25    0x49fd5  1      
  nop                                              #  26    0x49fd6  1      
.L_4a000:                                          #        0x49fd7  0      
  leal (,%rsi,4), %edx                             #  27    0x49fd7  7      
  negl %edx                                        #  28    0x49fde  2      
  nop                                              #  29    0x49fe0  1      
  nop                                              #  30    0x49fe1  1      
.L_4a020:                                          #        0x49fe2  0      
  movl %eax, %eax                                  #  31    0x49fe2  2      
  addl 0xc(%r15,%rax,1), %edx                      #  32    0x49fe4  5      
  movl %eax, %eax                                  #  33    0x49fe9  2      
  movl 0x8(%r15,%rax,1), %esi                      #  34    0x49feb  5      
  leal 0xc(%rsp), %ecx                             #  35    0x49ff0  4      
  nop                                              #  36    0x49ff4  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj  #  37    0x49ff5  5      
  movl 0xc(%rsp), %eax                             #  38    0x49ffa  4      
  addl $0x18, %esp                                 #  39    0x49ffe  3      
  addq %r15, %rsp                                  #  40    0x4a001  3      
  popq %r11                                        #  41    0x4a004  3      
  andl $0xffffffe0, %r11d                          #  42    0x4a007  7      
  addq %r15, %r11                                  #  43    0x4a00e  3      
  jmpq %r11                                        #  44    0x4a011  3      
  nop                                              #  45    0x4a014  1      
.L_4a060:                                          #        0x4a015  0      
  leal (,%rsi,8), %edx                             #  46    0x4a015  7      
  negl %edx                                        #  47    0x4a01c  2      
  jmpq .L_4a020                                    #  48    0x4a01e  5      
  nop                                              #  49    0x4a023  1      
  nop                                              #  50    0x4a024  1      
.L_4a080:                                          #        0x4a025  0      
  leal (%rsi,%rsi,1), %edx                         #  51    0x4a025  3      
  negl %edx                                        #  52    0x4a028  2      
  jmpq .L_4a020                                    #  53    0x4a02a  5      
  nop                                              #  54    0x4a02f  1      
  nop                                              #  55    0x4a030  1      
.L_4a0a0:                                          #        0x4a031  0      
  xorl %edx, %edx                                  #  56    0x4a031  2      
  jmpq .L_4a020                                    #  57    0x4a033  5      
  nop                                              #  58    0x4a038  1      
  nop                                              #  59    0x4a039  1      
  nop                                              #  60    0x4a03a  1      
  nop                                              #  61    0x4a03b  1      
  nop                                              #  62    0x4a03c  1      
  nop                                              #  63    0x4a03d  1      
  nop                                              #  64    0x4a03e  1      
  nop                                              #  65    0x4a03f  1      
  nop                                              #  66    0x4a040  1      
  nop                                              #  67    0x4a041  1      
  nop                                              #  68    0x4a042  1      
  nop                                              #  69    0x4a043  1      
  nop                                              #  70    0x4a044  1      
  nop                                              #  71    0x4a045  1      
  nop                                              #  72    0x4a046  1      
  nop                                              #  73    0x4a047  1      
  nop                                              #  74    0x4a048  1      
  nop                                              #  75    0x4a049  1      
  nop                                              #  76    0x4a04a  1      
  nop                                              #  77    0x4a04b  1      
  nop                                              #  78    0x4a04c  1      
  nop                                              #  79    0x4a04d  1      
  nop                                              #  80    0x4a04e  1      
  nop                                              #  81    0x4a04f  1      
  nop                                              #  82    0x4a050  1      
                                                                            
.size _ZL15get_ttype_entryP16lsda_header_infom, .-_ZL15get_ttype_entryP16lsda_header_infom

