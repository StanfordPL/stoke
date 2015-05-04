  .text
  .globl __nacl_add_tp
  .type __nacl_add_tp, @function

#! file-offset 0x679a0
#! rip-offset  0x679a0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
.__nacl_add_tp:            #        0x679a0  0      
  pushq %rbx               #  1     0x679a0  2      
  movl %edi, %ebx          #  2     0x679a2  2      
  nop                      #  3     0x679a4  1      
  nop                      #  4     0x679a5  1      
  callq .nacl_tls_get      #  5     0x679a6  5      
  addl %ebx, %eax          #  6     0x679ab  2      
  popq %rbx                #  7     0x679ad  2      
  popq %r11                #  8     0x679af  3      
  andl $0xffffffe0, %r11d  #  9     0x679b2  7      
  addq %r15, %r11          #  10    0x679b9  3      
  jmpq %r11                #  11    0x679bc  3      
  nop                      #  12    0x679bf  1      
  nop                      #  13    0x679c0  1      
  nop                      #  14    0x679c1  1      
  nop                      #  15    0x679c2  1      
  nop                      #  16    0x679c3  1      
  nop                      #  17    0x679c4  1      
  nop                      #  18    0x679c5  1      
  nop                      #  19    0x679c6  1      
  nop                      #  20    0x679c7  1      
  nop                      #  21    0x679c8  1      
  nop                      #  22    0x679c9  1      
  nop                      #  23    0x679ca  1      
  nop                      #  24    0x679cb  1      
  nop                      #  25    0x679cc  1      
  nop                      #  26    0x679cd  1      
  nop                      #  27    0x679ce  1      
  nop                      #  28    0x679cf  1      
                                                    
.size __nacl_add_tp, .-__nacl_add_tp

