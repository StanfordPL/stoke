  .text
  .globl _mprec_log10
  .type _mprec_log10, @function

#! file-offset 0x7ea80
#! rip-offset  0x7ea80
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._mprec_log10:                          #        0x7ea80  0      
  cmpl $0x17, %edi                      #  1     0x7ea80  3      
  jle .L_7eac0                          #  2     0x7ea83  6      
  movsd 0xffa57ef(%rip), %xmm0          #  3     0x7ea89  8      
  movsd 0xffa57ef(%rip), %xmm1          #  4     0x7ea91  8      
  nop                                   #  5     0x7ea99  1      
.L_7eaa0:                               #        0x7ea9a  0      
  subl $0x1, %edi                       #  6     0x7ea9a  3      
  mulsd %xmm1, %xmm0                    #  7     0x7ea9d  4      
  jne .L_7eaa0                          #  8     0x7eaa1  6      
  popq %r11                             #  9     0x7eaa7  3      
  andl $0xffffffe0, %r11d               #  10    0x7eaaa  7      
  addq %r15, %r11                       #  11    0x7eab1  3      
  jmpq %r11                             #  12    0x7eab4  3      
  nop                                   #  13    0x7eab7  1      
.L_7eac0:                               #        0x7eab8  0      
  shll $0x3, %edi                       #  14    0x7eab8  3      
  movslq %edi, %rdi                     #  15    0x7eabb  3      
  movl %edi, %edi                       #  16    0x7eabe  2      
  movsd 0x100247e0(%r15,%rdi,1), %xmm0  #  17    0x7eac0  10     
  popq %r11                             #  18    0x7eaca  3      
  andl $0xffffffe0, %r11d               #  19    0x7eacd  7      
  addq %r15, %r11                       #  20    0x7ead4  3      
  jmpq %r11                             #  21    0x7ead7  3      
  xchgw %ax, %ax                        #  22    0x7eada  3      
                                                                 
.size _mprec_log10, .-_mprec_log10

