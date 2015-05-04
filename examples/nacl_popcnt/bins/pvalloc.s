  .text
  .globl pvalloc
  .type pvalloc, @function

#! file-offset 0x66e00
#! rip-offset  0x66e00
#! capacity    64 bytes

# Text                          #  Line  RIP      Bytes  
.pvalloc:                       #        0x66e00  0      
  movl 0xffcfa8a(%rip), %edx    #  1     0x66e00  6      
  pushq %rbx                    #  2     0x66e06  2      
  movl %edi, %ebx               #  3     0x66e08  2      
  testl %edx, %edx              #  4     0x66e0a  2      
  jne .L_66e20                  #  5     0x66e0c  6      
  nop                           #  6     0x66e12  1      
  callq .init_mparams           #  7     0x66e13  5      
.L_66e20:                       #        0x66e18  0      
  movl 0xffcfa76(%rip), %edi    #  8     0x66e18  6      
  leal -0x1(%rdi,%rbx,1), %esi  #  9     0x66e1e  4      
  movl %edi, %eax               #  10    0x66e22  2      
  popq %rbx                     #  11    0x66e24  2      
  negl %eax                     #  12    0x66e26  2      
  andl %eax, %esi               #  13    0x66e28  2      
  jmpq .memalign                #  14    0x66e2a  5      
  nop                           #  15    0x66e2f  1      
                                                         
.size pvalloc, .-pvalloc

