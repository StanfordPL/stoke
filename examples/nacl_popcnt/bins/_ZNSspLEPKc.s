  .text
  .globl _ZNSspLEPKc
  .type _ZNSspLEPKc, @function

#! file-offset 0x46700
#! rip-offset  0x46700
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSspLEPKc:              #        0x46700  0      
  movq %r12, -0x8(%rsp)    #  1     0x46700  5      
  movl %esi, %r12d         #  2     0x46705  3      
  movq %rbx, -0x10(%rsp)   #  3     0x46708  5      
  subl $0x18, %esp         #  4     0x4670d  3      
  addq %r15, %rsp          #  5     0x46710  3      
  movl %edi, %ebx          #  6     0x46713  2      
  movl %r12d, %edi         #  7     0x46715  3      
  nop                      #  8     0x46718  1      
  callq .strlen            #  9     0x46719  5      
  movl %r12d, %esi         #  10    0x4671e  3      
  movl %ebx, %edi          #  11    0x46721  2      
  movq 0x10(%rsp), %r12    #  12    0x46723  5      
  movq 0x8(%rsp), %rbx     #  13    0x46728  5      
  movl %eax, %edx          #  14    0x4672d  2      
  addl $0x18, %esp         #  15    0x4672f  3      
  addq %r15, %rsp          #  16    0x46732  3      
  jmpq ._ZNSs6appendEPKcj  #  17    0x46735  5      
  nop                      #  18    0x4673a  1      
  nop                      #  19    0x4673b  1      
  nop                      #  20    0x4673c  1      
  nop                      #  21    0x4673d  1      
                                                    
.size _ZNSspLEPKc, .-_ZNSspLEPKc

