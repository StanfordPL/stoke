  .text
  .globl _ZNSs4_Rep10_M_refcopyEv
  .type _ZNSs4_Rep10_M_refcopyEv, @function

#! file-offset 0x44a00
#! rip-offset  0x44a00
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
._ZNSs4_Rep10_M_refcopyEv:     #        0x44a00  0      
  movl %edi, %eax              #  1     0x44a00  2      
  cmpl $0x10031da0, %eax       #  2     0x44a02  5      
  jne .L_44a40                 #  3     0x44a07  6      
  nop                          #  4     0x44a0d  1      
  nop                          #  5     0x44a0e  1      
.L_44a20:                      #        0x44a0f  0      
  popq %r11                    #  6     0x44a0f  3      
  addl $0xc, %eax              #  7     0x44a12  3      
  andl $0xffffffe0, %r11d      #  8     0x44a15  7      
  addq %r15, %r11              #  9     0x44a1c  3      
  jmpq %r11                    #  10    0x44a1f  3      
  xchgw %ax, %ax               #  11    0x44a22  3      
  nop                          #  12    0x44a25  1      
.L_44a40:                      #        0x44a26  0      
  movl %eax, %eax              #  13    0x44a26  2      
  addl $0x1, 0x8(%r15,%rax,1)  #  14    0x44a28  6      
  jmpq .L_44a20                #  15    0x44a2e  5      
  nop                          #  16    0x44a33  1      
  nop                          #  17    0x44a34  1      
  nop                          #  18    0x44a35  1      
  nop                          #  19    0x44a36  1      
  nop                          #  20    0x44a37  1      
  nop                          #  21    0x44a38  1      
  nop                          #  22    0x44a39  1      
  nop                          #  23    0x44a3a  1      
  nop                          #  24    0x44a3b  1      
  nop                          #  25    0x44a3c  1      
  nop                          #  26    0x44a3d  1      
  nop                          #  27    0x44a3e  1      
  nop                          #  28    0x44a3f  1      
  nop                          #  29    0x44a40  1      
  nop                          #  30    0x44a41  1      
  nop                          #  31    0x44a42  1      
  nop                          #  32    0x44a43  1      
  nop                          #  33    0x44a44  1      
  nop                          #  34    0x44a45  1      
  nop                          #  35    0x44a46  1      
  nop                          #  36    0x44a47  1      
  nop                          #  37    0x44a48  1      
                                                        
.size _ZNSs4_Rep10_M_refcopyEv, .-_ZNSs4_Rep10_M_refcopyEv

