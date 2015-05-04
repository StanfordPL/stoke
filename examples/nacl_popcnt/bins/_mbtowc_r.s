  .text
  .globl _mbtowc_r
  .type _mbtowc_r, @function

#! file-offset 0x7e380
#! rip-offset  0x7e380
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
._mbtowc_r:                    #        0x7e380  0      
  movq %rbx, -0x20(%rsp)       #  1     0x7e380  5      
  movq %r12, -0x18(%rsp)       #  2     0x7e385  5      
  movl %r8d, %r9d              #  3     0x7e38a  3      
  movq %r13, -0x10(%rsp)       #  4     0x7e38d  5      
  movq %r14, -0x8(%rsp)        #  5     0x7e392  5      
  subl $0x38, %esp             #  6     0x7e397  3      
  addq %r15, %rsp              #  7     0x7e39a  3      
  nop                          #  8     0x7e39d  1      
  movl 0xffb281b(%rip), %r12d  #  9     0x7e39e  7      
  movl %edi, %ebx              #  10    0x7e3a5  2      
  movl %esi, %r13d             #  11    0x7e3a7  3      
  movl %edx, %r14d             #  12    0x7e3aa  3      
  movl %ecx, 0x8(%rsp)         #  13    0x7e3ad  4      
  movq %r9, (%rsp)             #  14    0x7e3b1  4      
  nop                          #  15    0x7e3b5  1      
  callq .__locale_charset      #  16    0x7e3b6  5      
  movq (%rsp), %r9             #  17    0x7e3bb  4      
  movl 0x8(%rsp), %ecx         #  18    0x7e3bf  4      
  movl %r14d, %edx             #  19    0x7e3c3  3      
  movl %r13d, %esi             #  20    0x7e3c6  3      
  movl %ebx, %edi              #  21    0x7e3c9  2      
  movq %r12, %r10              #  22    0x7e3cb  3      
  movq 0x18(%rsp), %rbx        #  23    0x7e3ce  5      
  movq 0x20(%rsp), %r12        #  24    0x7e3d3  5      
  movl %eax, %r8d              #  25    0x7e3d8  3      
  movq 0x28(%rsp), %r13        #  26    0x7e3db  5      
  movq 0x30(%rsp), %r14        #  27    0x7e3e0  5      
  addl $0x38, %esp             #  28    0x7e3e5  3      
  addq %r15, %rsp              #  29    0x7e3e8  3      
  andl $0xffffffe0, %r10d      #  30    0x7e3eb  7      
  addq %r15, %r10              #  31    0x7e3f2  3      
  jmpq %r10                    #  32    0x7e3f5  3      
  nop                          #  33    0x7e3f8  1      
  nop                          #  34    0x7e3f9  1      
  nop                          #  35    0x7e3fa  1      
  nop                          #  36    0x7e3fb  1      
  nop                          #  37    0x7e3fc  1      
  nop                          #  38    0x7e3fd  1      
                                                        
.size _mbtowc_r, .-_mbtowc_r

