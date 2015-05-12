  .text
  .globl _ZNSs4_Rep10_M_refcopyEv
  .type _ZNSs4_Rep10_M_refcopyEv, @function

#! file-offset 0x44a20
#! rip-offset  0x44a20
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
._ZNSs4_Rep10_M_refcopyEv:     #        0x44a20  0      
  movl %edi, %eax              #  1     0x44a20  2      
  cmpl $0x10031da0, %eax       #  2     0x44a22  5      
  jne .L_44a60                 #  3     0x44a27  6      
  nop                          #  4     0x44a2d  1      
  nop                          #  5     0x44a2e  1      
.L_44a40:                      #        0x44a2f  0      
  popq %r11                    #  6     0x44a2f  3      
  addl $0xc, %eax              #  7     0x44a32  3      
  andl $0xffffffe0, %r11d      #  8     0x44a35  7      
  addq %r15, %r11              #  9     0x44a3c  3      
  jmpq %r11                    #  10    0x44a3f  3      
  xchgw %ax, %ax               #  11    0x44a42  3      
  nop                          #  12    0x44a45  1      
.L_44a60:                      #        0x44a46  0      
  movl %eax, %eax              #  13    0x44a46  2      
  addl $0x1, 0x8(%r15,%rax,1)  #  14    0x44a48  6      
  jmpq .L_44a40                #  15    0x44a4e  5      
  nop                          #  16    0x44a53  1      
  nop                          #  17    0x44a54  1      
  nop                          #  18    0x44a55  1      
  nop                          #  19    0x44a56  1      
  nop                          #  20    0x44a57  1      
  nop                          #  21    0x44a58  1      
  nop                          #  22    0x44a59  1      
  nop                          #  23    0x44a5a  1      
  nop                          #  24    0x44a5b  1      
  nop                          #  25    0x44a5c  1      
  nop                          #  26    0x44a5d  1      
  nop                          #  27    0x44a5e  1      
  nop                          #  28    0x44a5f  1      
  nop                          #  29    0x44a60  1      
  nop                          #  30    0x44a61  1      
  nop                          #  31    0x44a62  1      
  nop                          #  32    0x44a63  1      
  nop                          #  33    0x44a64  1      
  nop                          #  34    0x44a65  1      
  nop                          #  35    0x44a66  1      
  nop                          #  36    0x44a67  1      
  nop                          #  37    0x44a68  1      
                                                        
.size _ZNSs4_Rep10_M_refcopyEv, .-_ZNSs4_Rep10_M_refcopyEv

