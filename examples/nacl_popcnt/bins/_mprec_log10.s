  .text
  .globl _mprec_log10
  .type _mprec_log10, @function

#! file-offset 0x7ea60
#! rip-offset  0x7ea60
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._mprec_log10:                          #        0x7ea60  0      
  cmpl $0x17, %edi                      #  1     0x7ea60  3      
  jle .L_7eaa0                          #  2     0x7ea63  6      
  movsd 0xffa580f(%rip), %xmm0          #  3     0x7ea69  8      
  movsd 0xffa580f(%rip), %xmm1          #  4     0x7ea71  8      
  nop                                   #  5     0x7ea79  1      
.L_7ea80:                               #        0x7ea7a  0      
  subl $0x1, %edi                       #  6     0x7ea7a  3      
  mulsd %xmm1, %xmm0                    #  7     0x7ea7d  4      
  jne .L_7ea80                          #  8     0x7ea81  6      
  popq %r11                             #  9     0x7ea87  3      
  andl $0xffffffe0, %r11d               #  10    0x7ea8a  7      
  addq %r15, %r11                       #  11    0x7ea91  3      
  jmpq %r11                             #  12    0x7ea94  3      
  nop                                   #  13    0x7ea97  1      
.L_7eaa0:                               #        0x7ea98  0      
  shll $0x3, %edi                       #  14    0x7ea98  3      
  movslq %edi, %rdi                     #  15    0x7ea9b  3      
  movl %edi, %edi                       #  16    0x7ea9e  2      
  movsd 0x100247e0(%r15,%rdi,1), %xmm0  #  17    0x7eaa0  10     
  popq %r11                             #  18    0x7eaaa  3      
  andl $0xffffffe0, %r11d               #  19    0x7eaad  7      
  addq %r15, %r11                       #  20    0x7eab4  3      
  jmpq %r11                             #  21    0x7eab7  3      
  xchgw %ax, %ax                        #  22    0x7eaba  3      
                                                                 
.size _mprec_log10, .-_mprec_log10

