  .text
  .globl _ZNSs6appendEPKc
  .type _ZNSs6appendEPKc, @function

#! file-offset 0x466c0
#! rip-offset  0x466c0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSs6appendEPKc:         #        0x466c0  0      
  movq %r12, -0x8(%rsp)    #  1     0x466c0  5      
  movl %esi, %r12d         #  2     0x466c5  3      
  movq %rbx, -0x10(%rsp)   #  3     0x466c8  5      
  subl $0x18, %esp         #  4     0x466cd  3      
  addq %r15, %rsp          #  5     0x466d0  3      
  movl %edi, %ebx          #  6     0x466d3  2      
  movl %r12d, %edi         #  7     0x466d5  3      
  nop                      #  8     0x466d8  1      
  callq .strlen            #  9     0x466d9  5      
  movl %r12d, %esi         #  10    0x466de  3      
  movl %ebx, %edi          #  11    0x466e1  2      
  movq 0x10(%rsp), %r12    #  12    0x466e3  5      
  movq 0x8(%rsp), %rbx     #  13    0x466e8  5      
  movl %eax, %edx          #  14    0x466ed  2      
  addl $0x18, %esp         #  15    0x466ef  3      
  addq %r15, %rsp          #  16    0x466f2  3      
  jmpq ._ZNSs6appendEPKcj  #  17    0x466f5  5      
  nop                      #  18    0x466fa  1      
  nop                      #  19    0x466fb  1      
  nop                      #  20    0x466fc  1      
  nop                      #  21    0x466fd  1      
                                                    
.size _ZNSs6appendEPKc, .-_ZNSs6appendEPKc

