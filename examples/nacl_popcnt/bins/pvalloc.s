  .text
  .globl pvalloc
  .type pvalloc, @function

#! file-offset 0x66d80
#! rip-offset  0x66d80
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
.pvalloc:                       #        0x66d80  0      
  movl 0xffcfb0a(%rip), %edx    #  1     0x66d80  6      
  pushq %rbx                    #  2     0x66d86  2      
  movl %edi, %ebx               #  3     0x66d88  2      
  testl %edx, %edx              #  4     0x66d8a  2      
  jne .L_66da0                  #  5     0x66d8c  6      
  nop                           #  6     0x66d92  1      
  callq .init_mparams           #  7     0x66d93  5      
.L_66da0:                       #        0x66d98  0      
  movl 0xffcfaf6(%rip), %edi    #  8     0x66d98  6      
  leal -0x1(%rdi,%rbx,1), %esi  #  9     0x66d9e  4      
  movl %edi, %eax               #  10    0x66da2  2      
  popq %rbx                     #  11    0x66da4  2      
  negl %eax                     #  12    0x66da6  2      
  andl %eax, %esi               #  13    0x66da8  2      
  jmpq .memalign                #  14    0x66daa  5      
  nop                           #  15    0x66daf  1      
                                                         
.size pvalloc, .-pvalloc

