  .text
  .globl _ZNSs6assignEPKc
  .type _ZNSs6assignEPKc, @function

#! file-offset 0x48420
#! rip-offset  0x48420
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSs6assignEPKc:         #        0x48420  0      
  movq %r12, -0x8(%rsp)    #  1     0x48420  5      
  movl %esi, %r12d         #  2     0x48425  3      
  movq %rbx, -0x10(%rsp)   #  3     0x48428  5      
  subl $0x18, %esp         #  4     0x4842d  3      
  addq %r15, %rsp          #  5     0x48430  3      
  movl %edi, %ebx          #  6     0x48433  2      
  movl %r12d, %edi         #  7     0x48435  3      
  nop                      #  8     0x48438  1      
  callq .strlen            #  9     0x48439  5      
  movl %r12d, %esi         #  10    0x4843e  3      
  movl %ebx, %edi          #  11    0x48441  2      
  movq 0x10(%rsp), %r12    #  12    0x48443  5      
  movq 0x8(%rsp), %rbx     #  13    0x48448  5      
  movl %eax, %edx          #  14    0x4844d  2      
  addl $0x18, %esp         #  15    0x4844f  3      
  addq %r15, %rsp          #  16    0x48452  3      
  jmpq ._ZNSs6assignEPKcj  #  17    0x48455  5      
  nop                      #  18    0x4845a  1      
  nop                      #  19    0x4845b  1      
  nop                      #  20    0x4845c  1      
  nop                      #  21    0x4845d  1      
                                                    
.size _ZNSs6assignEPKc, .-_ZNSs6assignEPKc

