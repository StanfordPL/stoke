  .text
  .globl _ZNSs6appendEPKc
  .type _ZNSs6appendEPKc, @function

#! file-offset 0x466a0
#! rip-offset  0x466a0
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSs6appendEPKc:         #        0x466a0  0      
  movq %r12, -0x8(%rsp)    #  1     0x466a0  5      
  movl %esi, %r12d         #  2     0x466a5  3      
  movq %rbx, -0x10(%rsp)   #  3     0x466a8  5      
  subl $0x18, %esp         #  4     0x466ad  3      
  addq %r15, %rsp          #  5     0x466b0  3      
  movl %edi, %ebx          #  6     0x466b3  2      
  movl %r12d, %edi         #  7     0x466b5  3      
  nop                      #  8     0x466b8  1      
  callq .strlen            #  9     0x466b9  5      
  movl %r12d, %esi         #  10    0x466be  3      
  movl %ebx, %edi          #  11    0x466c1  2      
  movq 0x10(%rsp), %r12    #  12    0x466c3  5      
  movq 0x8(%rsp), %rbx     #  13    0x466c8  5      
  movl %eax, %edx          #  14    0x466cd  2      
  addl $0x18, %esp         #  15    0x466cf  3      
  addq %r15, %rsp          #  16    0x466d2  3      
  jmpq ._ZNSs6appendEPKcj  #  17    0x466d5  5      
  nop                      #  18    0x466da  1      
  nop                      #  19    0x466db  1      
  nop                      #  20    0x466dc  1      
  nop                      #  21    0x466dd  1      
                                                    
.size _ZNSs6appendEPKc, .-_ZNSs6appendEPKc

