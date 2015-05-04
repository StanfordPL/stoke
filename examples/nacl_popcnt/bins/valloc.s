  .text
  .globl valloc
  .type valloc, @function

#! file-offset 0x66e40
#! rip-offset  0x66e40
#! capacity    64 bytes

# Text                        #  Line  RIP      Bytes  
.valloc:                      #        0x66e40  0      
  movl 0xffcfa4a(%rip), %ecx  #  1     0x66e40  6      
  pushq %rbx                  #  2     0x66e46  2      
  movl %edi, %ebx             #  3     0x66e48  2      
  testl %ecx, %ecx            #  4     0x66e4a  2      
  jne .L_66e60                #  5     0x66e4c  6      
  nop                         #  6     0x66e52  1      
  callq .init_mparams         #  7     0x66e53  5      
.L_66e60:                     #        0x66e58  0      
  movl %ebx, %esi             #  8     0x66e58  2      
  movl 0xffcfa34(%rip), %edi  #  9     0x66e5a  6      
  popq %rbx                   #  10    0x66e60  2      
  jmpq .memalign              #  11    0x66e62  5      
  nop                         #  12    0x66e67  1      
  nop                         #  13    0x66e68  1      
                                                       
.size valloc, .-valloc

