  .text
  .globl pvalloc
  .type pvalloc, @function

#! file-offset 0x66d60
#! rip-offset  0x66d60
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
.pvalloc:                       #        0x66d60  0      
  movl 0xffcfb2a(%rip), %edx    #  1     0x66d60  6      
  pushq %rbx                    #  2     0x66d66  2      
  movl %edi, %ebx               #  3     0x66d68  2      
  testl %edx, %edx              #  4     0x66d6a  2      
  jne .L_66d80                  #  5     0x66d6c  6      
  nop                           #  6     0x66d72  1      
  callq .init_mparams           #  7     0x66d73  5      
.L_66d80:                       #        0x66d78  0      
  movl 0xffcfb16(%rip), %edi    #  8     0x66d78  6      
  leal -0x1(%rdi,%rbx,1), %esi  #  9     0x66d7e  4      
  movl %edi, %eax               #  10    0x66d82  2      
  popq %rbx                     #  11    0x66d84  2      
  negl %eax                     #  12    0x66d86  2      
  andl %eax, %esi               #  13    0x66d88  2      
  jmpq .memalign                #  14    0x66d8a  5      
  nop                           #  15    0x66d8f  1      
                                                         
.size pvalloc, .-pvalloc

