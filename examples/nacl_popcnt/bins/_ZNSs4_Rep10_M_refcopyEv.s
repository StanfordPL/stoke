  .text
  .globl _ZNSs4_Rep10_M_refcopyEv
  .type _ZNSs4_Rep10_M_refcopyEv, @function

#! file-offset 0x44aa0
#! rip-offset  0x44aa0
#! capacity    96 bytes

# Text                         #  Line  RIP      Bytes  
._ZNSs4_Rep10_M_refcopyEv:     #        0x44aa0  0      
  movl %edi, %eax              #  1     0x44aa0  2      
  cmpl $0x10031da0, %eax       #  2     0x44aa2  5      
  jne .L_44ae0                 #  3     0x44aa7  6      
  nop                          #  4     0x44aad  1      
  nop                          #  5     0x44aae  1      
.L_44ac0:                      #        0x44aaf  0      
  popq %r11                    #  6     0x44aaf  3      
  addl $0xc, %eax              #  7     0x44ab2  3      
  andl $0xffffffe0, %r11d      #  8     0x44ab5  7      
  addq %r15, %r11              #  9     0x44abc  3      
  jmpq %r11                    #  10    0x44abf  3      
  xchgw %ax, %ax               #  11    0x44ac2  3      
  nop                          #  12    0x44ac5  1      
.L_44ae0:                      #        0x44ac6  0      
  movl %eax, %eax              #  13    0x44ac6  2      
  addl $0x1, 0x8(%r15,%rax,1)  #  14    0x44ac8  6      
  jmpq .L_44ac0                #  15    0x44ace  5      
  nop                          #  16    0x44ad3  1      
  nop                          #  17    0x44ad4  1      
  nop                          #  18    0x44ad5  1      
  nop                          #  19    0x44ad6  1      
  nop                          #  20    0x44ad7  1      
  nop                          #  21    0x44ad8  1      
  nop                          #  22    0x44ad9  1      
  nop                          #  23    0x44ada  1      
  nop                          #  24    0x44adb  1      
  nop                          #  25    0x44adc  1      
  nop                          #  26    0x44add  1      
  nop                          #  27    0x44ade  1      
  nop                          #  28    0x44adf  1      
  nop                          #  29    0x44ae0  1      
  nop                          #  30    0x44ae1  1      
  nop                          #  31    0x44ae2  1      
  nop                          #  32    0x44ae3  1      
  nop                          #  33    0x44ae4  1      
  nop                          #  34    0x44ae5  1      
  nop                          #  35    0x44ae6  1      
  nop                          #  36    0x44ae7  1      
  nop                          #  37    0x44ae8  1      
                                                        
.size _ZNSs4_Rep10_M_refcopyEv, .-_ZNSs4_Rep10_M_refcopyEv

