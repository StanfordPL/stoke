  .text
  .globl valloc
  .type valloc, @function

#! file-offset 0x66dc0
#! rip-offset  0x66dc0
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
.valloc:                      #        0x66dc0  0      
  movl 0xffcfaca(%rip), %ecx  #  1     0x66dc0  6      
  pushq %rbx                  #  2     0x66dc6  2      
  movl %edi, %ebx             #  3     0x66dc8  2      
  testl %ecx, %ecx            #  4     0x66dca  2      
  jne .L_66de0                #  5     0x66dcc  6      
  nop                         #  6     0x66dd2  1      
  callq .init_mparams         #  7     0x66dd3  5      
.L_66de0:                     #        0x66dd8  0      
  movl %ebx, %esi             #  8     0x66dd8  2      
  movl 0xffcfab4(%rip), %edi  #  9     0x66dda  6      
  popq %rbx                   #  10    0x66de0  2      
  jmpq .memalign              #  11    0x66de2  5      
  nop                         #  12    0x66de7  1      
  nop                         #  13    0x66de8  1      
                                                       
.size valloc, .-valloc

