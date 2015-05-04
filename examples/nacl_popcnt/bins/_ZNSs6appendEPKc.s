  .text
  .globl _ZNSs6appendEPKc
  .type _ZNSs6appendEPKc, @function

#! file-offset 0x46740
#! rip-offset  0x46740
#! capacity    64 bytes

# Text                     #  Line  RIP      Bytes  
._ZNSs6appendEPKc:         #        0x46740  0      
  movq %r12, -0x8(%rsp)    #  1     0x46740  5      
  movl %esi, %r12d         #  2     0x46745  3      
  movq %rbx, -0x10(%rsp)   #  3     0x46748  5      
  subl $0x18, %esp         #  4     0x4674d  3      
  addq %r15, %rsp          #  5     0x46750  3      
  movl %edi, %ebx          #  6     0x46753  2      
  movl %r12d, %edi         #  7     0x46755  3      
  nop                      #  8     0x46758  1      
  callq .strlen            #  9     0x46759  5      
  movl %r12d, %esi         #  10    0x4675e  3      
  movl %ebx, %edi          #  11    0x46761  2      
  movq 0x10(%rsp), %r12    #  12    0x46763  5      
  movq 0x8(%rsp), %rbx     #  13    0x46768  5      
  movl %eax, %edx          #  14    0x4676d  2      
  addl $0x18, %esp         #  15    0x4676f  3      
  addq %r15, %rsp          #  16    0x46772  3      
  jmpq ._ZNSs6appendEPKcj  #  17    0x46775  5      
  nop                      #  18    0x4677a  1      
  nop                      #  19    0x4677b  1      
  nop                      #  20    0x4677c  1      
  nop                      #  21    0x4677d  1      
                                                    
.size _ZNSs6appendEPKc, .-_ZNSs6appendEPKc

