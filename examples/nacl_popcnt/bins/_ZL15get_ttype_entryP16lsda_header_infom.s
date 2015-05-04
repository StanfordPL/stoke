  .text
  .globl _ZL15get_ttype_entryP16lsda_header_infom
  .type _ZL15get_ttype_entryP16lsda_header_infom, @function

#! file-offset 0x4a020
#! rip-offset  0x4a020
#! capacity    320 bytes

# Text                                             #  Line  RIP      Bytes  
._ZL15get_ttype_entryP16lsda_header_infom:         #        0x4a020  0      
  movl %edi, %eax                                  #  1     0x4a020  2      
  subl $0x18, %esp                                 #  2     0x4a022  3      
  addq %r15, %rsp                                  #  3     0x4a025  3      
  movl %eax, %eax                                  #  4     0x4a028  2      
  movzbl 0x14(%r15,%rax,1), %ecx                   #  5     0x4a02a  6      
  cmpb $0xff, %cl                                  #  6     0x4a030  3      
  movzbl %cl, %edi                                 #  7     0x4a033  3      
  je .L_4a140                                      #  8     0x4a036  6      
  movl %edi, %ecx                                  #  9     0x4a03c  2      
  xchgw %ax, %ax                                   #  10    0x4a03e  3      
  andl $0x7, %ecx                                  #  11    0x4a041  3      
  cmpl $0x2, %ecx                                  #  12    0x4a044  3      
  je .L_4a120                                      #  13    0x4a047  6      
  jle .L_4a080                                     #  14    0x4a04d  6      
  cmpl $0x3, %ecx                                  #  15    0x4a053  3      
  je .L_4a0a0                                      #  16    0x4a056  6      
  cmpl $0x4, %ecx                                  #  17    0x4a05c  3      
  je .L_4a100                                      #  18    0x4a05f  6      
  nop                                              #  19    0x4a065  1      
.L_4a060:                                          #        0x4a066  0      
  nop                                              #  20    0x4a066  1      
  nop                                              #  21    0x4a067  1      
  callq .abort                                     #  22    0x4a068  5      
.L_4a080:                                          #        0x4a06d  0      
  testl %ecx, %ecx                                 #  23    0x4a06d  2      
  jne .L_4a060                                     #  24    0x4a06f  6      
  nop                                              #  25    0x4a075  1      
  nop                                              #  26    0x4a076  1      
.L_4a0a0:                                          #        0x4a077  0      
  leal (,%rsi,4), %edx                             #  27    0x4a077  7      
  negl %edx                                        #  28    0x4a07e  2      
  nop                                              #  29    0x4a080  1      
  nop                                              #  30    0x4a081  1      
.L_4a0c0:                                          #        0x4a082  0      
  movl %eax, %eax                                  #  31    0x4a082  2      
  addl 0xc(%r15,%rax,1), %edx                      #  32    0x4a084  5      
  movl %eax, %eax                                  #  33    0x4a089  2      
  movl 0x8(%r15,%rax,1), %esi                      #  34    0x4a08b  5      
  leal 0xc(%rsp), %ecx                             #  35    0x4a090  4      
  nop                                              #  36    0x4a094  1      
  callq ._ZL28read_encoded_value_with_basehjPKhPj  #  37    0x4a095  5      
  movl 0xc(%rsp), %eax                             #  38    0x4a09a  4      
  addl $0x18, %esp                                 #  39    0x4a09e  3      
  addq %r15, %rsp                                  #  40    0x4a0a1  3      
  popq %r11                                        #  41    0x4a0a4  3      
  andl $0xffffffe0, %r11d                          #  42    0x4a0a7  7      
  addq %r15, %r11                                  #  43    0x4a0ae  3      
  jmpq %r11                                        #  44    0x4a0b1  3      
  nop                                              #  45    0x4a0b4  1      
.L_4a100:                                          #        0x4a0b5  0      
  leal (,%rsi,8), %edx                             #  46    0x4a0b5  7      
  negl %edx                                        #  47    0x4a0bc  2      
  jmpq .L_4a0c0                                    #  48    0x4a0be  5      
  nop                                              #  49    0x4a0c3  1      
  nop                                              #  50    0x4a0c4  1      
.L_4a120:                                          #        0x4a0c5  0      
  leal (%rsi,%rsi,1), %edx                         #  51    0x4a0c5  3      
  negl %edx                                        #  52    0x4a0c8  2      
  jmpq .L_4a0c0                                    #  53    0x4a0ca  5      
  nop                                              #  54    0x4a0cf  1      
  nop                                              #  55    0x4a0d0  1      
.L_4a140:                                          #        0x4a0d1  0      
  xorl %edx, %edx                                  #  56    0x4a0d1  2      
  jmpq .L_4a0c0                                    #  57    0x4a0d3  5      
  nop                                              #  58    0x4a0d8  1      
  nop                                              #  59    0x4a0d9  1      
  nop                                              #  60    0x4a0da  1      
  nop                                              #  61    0x4a0db  1      
  nop                                              #  62    0x4a0dc  1      
  nop                                              #  63    0x4a0dd  1      
  nop                                              #  64    0x4a0de  1      
  nop                                              #  65    0x4a0df  1      
  nop                                              #  66    0x4a0e0  1      
  nop                                              #  67    0x4a0e1  1      
  nop                                              #  68    0x4a0e2  1      
  nop                                              #  69    0x4a0e3  1      
  nop                                              #  70    0x4a0e4  1      
  nop                                              #  71    0x4a0e5  1      
  nop                                              #  72    0x4a0e6  1      
  nop                                              #  73    0x4a0e7  1      
  nop                                              #  74    0x4a0e8  1      
  nop                                              #  75    0x4a0e9  1      
  nop                                              #  76    0x4a0ea  1      
  nop                                              #  77    0x4a0eb  1      
  nop                                              #  78    0x4a0ec  1      
  nop                                              #  79    0x4a0ed  1      
  nop                                              #  80    0x4a0ee  1      
  nop                                              #  81    0x4a0ef  1      
  nop                                              #  82    0x4a0f0  1      
                                                                            
.size _ZL15get_ttype_entryP16lsda_header_infom, .-_ZL15get_ttype_entryP16lsda_header_infom

