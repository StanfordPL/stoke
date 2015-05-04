  .text
  .globl _mprec_log10
  .type _mprec_log10, @function

#! file-offset 0x7eb00
#! rip-offset  0x7eb00
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._mprec_log10:                          #        0x7eb00  0      
  cmpl $0x17, %edi                      #  1     0x7eb00  3      
  jle .L_7eb40                          #  2     0x7eb03  6      
  movsd 0xffa576f(%rip), %xmm0          #  3     0x7eb09  8      
  movsd 0xffa576f(%rip), %xmm1          #  4     0x7eb11  8      
  nop                                   #  5     0x7eb19  1      
.L_7eb20:                               #        0x7eb1a  0      
  subl $0x1, %edi                       #  6     0x7eb1a  3      
  mulsd %xmm1, %xmm0                    #  7     0x7eb1d  4      
  jne .L_7eb20                          #  8     0x7eb21  6      
  popq %r11                             #  9     0x7eb27  3      
  andl $0xffffffe0, %r11d               #  10    0x7eb2a  7      
  addq %r15, %r11                       #  11    0x7eb31  3      
  jmpq %r11                             #  12    0x7eb34  3      
  nop                                   #  13    0x7eb37  1      
.L_7eb40:                               #        0x7eb38  0      
  shll $0x3, %edi                       #  14    0x7eb38  3      
  movslq %edi, %rdi                     #  15    0x7eb3b  3      
  movl %edi, %edi                       #  16    0x7eb3e  2      
  movsd 0x100247e0(%r15,%rdi,1), %xmm0  #  17    0x7eb40  10     
  popq %r11                             #  18    0x7eb4a  3      
  andl $0xffffffe0, %r11d               #  19    0x7eb4d  7      
  addq %r15, %r11                       #  20    0x7eb54  3      
  jmpq %r11                             #  21    0x7eb57  3      
  xchgw %ax, %ax                        #  22    0x7eb5a  3      
                                                                 
.size _mprec_log10, .-_mprec_log10

