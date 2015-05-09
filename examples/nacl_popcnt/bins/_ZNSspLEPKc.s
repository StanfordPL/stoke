  .text
  .globl _ZNSspLEPKc
  .type _ZNSspLEPKc, @function

#! file-offset 0x466e0
#! rip-offset  0x466e0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSspLEPKc:              #        0x466e0  0      
  movq %r12, -0x8(%rsp)    #  1     0x466e0  5      
  movl %esi, %r12d         #  2     0x466e5  3      
  movq %rbx, -0x10(%rsp)   #  3     0x466e8  5      
  subl $0x18, %esp         #  4     0x466ed  3      
  addq %r15, %rsp          #  5     0x466f0  3      
  movl %edi, %ebx          #  6     0x466f3  2      
  movl %r12d, %edi         #  7     0x466f5  3      
  nop                      #  8     0x466f8  1      
  callq .strlen            #  9     0x466f9  5      
  movl %r12d, %esi         #  10    0x466fe  3      
  movl %ebx, %edi          #  11    0x46701  2      
  movq 0x10(%rsp), %r12    #  12    0x46703  5      
  movq 0x8(%rsp), %rbx     #  13    0x46708  5      
  movl %eax, %edx          #  14    0x4670d  2      
  addl $0x18, %esp         #  15    0x4670f  3      
  addq %r15, %rsp          #  16    0x46712  3      
  jmpq ._ZNSs6appendEPKcj  #  17    0x46715  5      
  nop                      #  18    0x4671a  1      
  nop                      #  19    0x4671b  1      
  nop                      #  20    0x4671c  1      
  nop                      #  21    0x4671d  1      
                                                    
.size _ZNSspLEPKc, .-_ZNSspLEPKc

