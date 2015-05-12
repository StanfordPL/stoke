  .text
  .globl __nacl_add_tp
  .type __nacl_add_tp, @function

#! file-offset 0x67920
#! rip-offset  0x67920
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
.__nacl_add_tp:            #        0x67920  0      
  pushq %rbx               #  1     0x67920  2      
  movl %edi, %ebx          #  2     0x67922  2      
  nop                      #  3     0x67924  1      
  nop                      #  4     0x67925  1      
  callq .nacl_tls_get      #  5     0x67926  5      
  addl %ebx, %eax          #  6     0x6792b  2      
  popq %rbx                #  7     0x6792d  2      
  popq %r11                #  8     0x6792f  3      
  andl $0xffffffe0, %r11d  #  9     0x67932  7      
  addq %r15, %r11          #  10    0x67939  3      
  jmpq %r11                #  11    0x6793c  3      
  nop                      #  12    0x6793f  1      
  nop                      #  13    0x67940  1      
  nop                      #  14    0x67941  1      
  nop                      #  15    0x67942  1      
  nop                      #  16    0x67943  1      
  nop                      #  17    0x67944  1      
  nop                      #  18    0x67945  1      
  nop                      #  19    0x67946  1      
  nop                      #  20    0x67947  1      
  nop                      #  21    0x67948  1      
  nop                      #  22    0x67949  1      
  nop                      #  23    0x6794a  1      
  nop                      #  24    0x6794b  1      
  nop                      #  25    0x6794c  1      
  nop                      #  26    0x6794d  1      
  nop                      #  27    0x6794e  1      
  nop                      #  28    0x6794f  1      
                                                    
.size __nacl_add_tp, .-__nacl_add_tp

