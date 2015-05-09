  .text
  .globl __nacl_add_tp
  .type __nacl_add_tp, @function

#! file-offset 0x67900
#! rip-offset  0x67900
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
.__nacl_add_tp:            #        0x67900  0      
  pushq %rbx               #  1     0x67900  2      
  movl %edi, %ebx          #  2     0x67902  2      
  nop                      #  3     0x67904  1      
  nop                      #  4     0x67905  1      
  callq .nacl_tls_get      #  5     0x67906  5      
  addl %ebx, %eax          #  6     0x6790b  2      
  popq %rbx                #  7     0x6790d  2      
  popq %r11                #  8     0x6790f  3      
  andl $0xffffffe0, %r11d  #  9     0x67912  7      
  addq %r15, %r11          #  10    0x67919  3      
  jmpq %r11                #  11    0x6791c  3      
  nop                      #  12    0x6791f  1      
  nop                      #  13    0x67920  1      
  nop                      #  14    0x67921  1      
  nop                      #  15    0x67922  1      
  nop                      #  16    0x67923  1      
  nop                      #  17    0x67924  1      
  nop                      #  18    0x67925  1      
  nop                      #  19    0x67926  1      
  nop                      #  20    0x67927  1      
  nop                      #  21    0x67928  1      
  nop                      #  22    0x67929  1      
  nop                      #  23    0x6792a  1      
  nop                      #  24    0x6792b  1      
  nop                      #  25    0x6792c  1      
  nop                      #  26    0x6792d  1      
  nop                      #  27    0x6792e  1      
  nop                      #  28    0x6792f  1      
                                                    
.size __nacl_add_tp, .-__nacl_add_tp

