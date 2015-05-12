  .text
  .globl _ZL15get_ttype_entryP16lsda_header_infom
  .type _ZL15get_ttype_entryP16lsda_header_infom, @function

#! file-offset 0x49fa0
#! rip-offset  0x49fa0
#! capacity    320 bytes

# Text                                             #  Line  RIP      Bytes  
._ZL15get_ttype_entryP16lsda_header_infom:         #        0x49fa0  0      
  movl %edi, %eax                                  #  1     0x49fa0  2      
  subl $0x18, %esp                                 #  2     0x49fa2  3      
  addq %r15, %rsp                                  #  3     0x49fa5  3      
  movl %eax, %eax                                  #  4     0x49fa8  2      
  movzbl 0x14(%r15,%rax,1), %ecx                   #  5     0x49faa  6      
  cmpb $0xff, %cl                                  #  6     0x49fb0  3      
  movzbl %cl, %edi                                 #  7     0x49fb3  3      
  je .L_4a0c0                                      #  8     0x49fb6  6      
  movl %edi, %ecx                                  #  9     0x49fbc  2      
  xchgw %ax, %ax                                   #  10    0x49fbe  3      
  andl $0x7, %ecx                                  #  11    0x49fc1  3      
  cmpl $0x2, %ecx                                  #  12    0x49fc4  3      
  je .L_4a0a0                                      #  13    0x49fc7  6      
  jle .L_4a000                                     #  14    0x49fcd  6      
  cmpl $0x3, %ecx                                  #  15    0x49fd3  3      
  je .L_4a020                                      #  16    0x49fd6  6      
  cmpl $0x4, %ecx                                  #  17    0x49fdc  3      
  je .L_4a080                                      #  18    0x49fdf  6      
  nop                                              #  19    0x49fe5  1      
.L_49fe0:                                          #        0x49fe6  0      
  nop                                              #  20    0x49fe6  1      
  nop                                              #  21    0x49fe7  1      
  callq .abort                                     #  22    0x49fe8  5      
.L_4a000:                                          #        0x49fed  0      
  testl %ecx, %ecx                                 #  23    0x49fed  2      
  jne .L_49fe0                                     #  24    0x49fef  6      
  nop                                              #  25    0x49ff5  1      
  nop                                              #  26    0x49ff6  1      
.L_4a020:                                          #        0x49ff7  0      
  leal (,%rsi,4), %edx                             #  27    0x49ff7  7      
  negl %edx                                        #  28    0x49ffe  2      
  nop                                              #  29    0x4a000  1      
  nop                                              #  30    0x4a001  1      
.L_4a040:                                          #        0x4a002  0      
  movl %eax, %eax                                  #  31    0x4a002  2      
  addl 0xc(%r15,%rax,1), %edx                      #  32    0x4a004  5      
  movl %eax, %eax                                  #  33    0x4a009  2      
  movl 0x8(%r15,%rax,1), %esi                      #  34    0x4a00b  5      
  leal 0xc(%rsp), %ecx                             #  35    0x4a010  4      
  nop                                              #  36    0x4a014  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj  #  37    0x4a015  5      
  movl 0xc(%rsp), %eax                             #  38    0x4a01a  4      
  addl $0x18, %esp                                 #  39    0x4a01e  3      
  addq %r15, %rsp                                  #  40    0x4a021  3      
  popq %r11                                        #  41    0x4a024  3      
  andl $0xffffffe0, %r11d                          #  42    0x4a027  7      
  addq %r15, %r11                                  #  43    0x4a02e  3      
  jmpq %r11                                        #  44    0x4a031  3      
  nop                                              #  45    0x4a034  1      
.L_4a080:                                          #        0x4a035  0      
  leal (,%rsi,8), %edx                             #  46    0x4a035  7      
  negl %edx                                        #  47    0x4a03c  2      
  jmpq .L_4a040                                    #  48    0x4a03e  5      
  nop                                              #  49    0x4a043  1      
  nop                                              #  50    0x4a044  1      
.L_4a0a0:                                          #        0x4a045  0      
  leal (%rsi,%rsi,1), %edx                         #  51    0x4a045  3      
  negl %edx                                        #  52    0x4a048  2      
  jmpq .L_4a040                                    #  53    0x4a04a  5      
  nop                                              #  54    0x4a04f  1      
  nop                                              #  55    0x4a050  1      
.L_4a0c0:                                          #        0x4a051  0      
  xorl %edx, %edx                                  #  56    0x4a051  2      
  jmpq .L_4a040                                    #  57    0x4a053  5      
  nop                                              #  58    0x4a058  1      
  nop                                              #  59    0x4a059  1      
  nop                                              #  60    0x4a05a  1      
  nop                                              #  61    0x4a05b  1      
  nop                                              #  62    0x4a05c  1      
  nop                                              #  63    0x4a05d  1      
  nop                                              #  64    0x4a05e  1      
  nop                                              #  65    0x4a05f  1      
  nop                                              #  66    0x4a060  1      
  nop                                              #  67    0x4a061  1      
  nop                                              #  68    0x4a062  1      
  nop                                              #  69    0x4a063  1      
  nop                                              #  70    0x4a064  1      
  nop                                              #  71    0x4a065  1      
  nop                                              #  72    0x4a066  1      
  nop                                              #  73    0x4a067  1      
  nop                                              #  74    0x4a068  1      
  nop                                              #  75    0x4a069  1      
  nop                                              #  76    0x4a06a  1      
  nop                                              #  77    0x4a06b  1      
  nop                                              #  78    0x4a06c  1      
  nop                                              #  79    0x4a06d  1      
  nop                                              #  80    0x4a06e  1      
  nop                                              #  81    0x4a06f  1      
  nop                                              #  82    0x4a070  1      
                                                                            
.size _ZL15get_ttype_entryP16lsda_header_infom, .-_ZL15get_ttype_entryP16lsda_header_infom

