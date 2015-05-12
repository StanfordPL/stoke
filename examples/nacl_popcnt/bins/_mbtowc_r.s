  .text
  .globl _mbtowc_r
  .type _mbtowc_r, @function

#! file-offset 0x7e300
#! rip-offset  0x7e300
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
._mbtowc_r:                    #        0x7e300  0      
  movq %rbx, -0x20(%rsp)       #  1     0x7e300  5      
  movq %r12, -0x18(%rsp)       #  2     0x7e305  5      
  movl %r8d, %r9d              #  3     0x7e30a  3      
  movq %r13, -0x10(%rsp)       #  4     0x7e30d  5      
  movq %r14, -0x8(%rsp)        #  5     0x7e312  5      
  subl $0x38, %esp             #  6     0x7e317  3      
  addq %r15, %rsp              #  7     0x7e31a  3      
  nop                          #  8     0x7e31d  1      
  movl 0xffb289b(%rip), %r12d  #  9     0x7e31e  7      
  movl %edi, %ebx              #  10    0x7e325  2      
  movl %esi, %r13d             #  11    0x7e327  3      
  movl %edx, %r14d             #  12    0x7e32a  3      
  movl %ecx, 0x8(%rsp)         #  13    0x7e32d  4      
  movq %r9, (%rsp)             #  14    0x7e331  4      
  nop                          #  15    0x7e335  1      
  callq .__locale_charset      #  16    0x7e336  5      
  movq (%rsp), %r9             #  17    0x7e33b  4      
  movl 0x8(%rsp), %ecx         #  18    0x7e33f  4      
  movl %r14d, %edx             #  19    0x7e343  3      
  movl %r13d, %esi             #  20    0x7e346  3      
  movl %ebx, %edi              #  21    0x7e349  2      
  movq %r12, %r10              #  22    0x7e34b  3      
  movq 0x18(%rsp), %rbx        #  23    0x7e34e  5      
  movq 0x20(%rsp), %r12        #  24    0x7e353  5      
  movl %eax, %r8d              #  25    0x7e358  3      
  movq 0x28(%rsp), %r13        #  26    0x7e35b  5      
  movq 0x30(%rsp), %r14        #  27    0x7e360  5      
  addl $0x38, %esp             #  28    0x7e365  3      
  addq %r15, %rsp              #  29    0x7e368  3      
  andl $0xffffffe0, %r10d      #  30    0x7e36b  7      
  addq %r15, %r10              #  31    0x7e372  3      
  jmpq %r10                    #  32    0x7e375  3      
  nop                          #  33    0x7e378  1      
  nop                          #  34    0x7e379  1      
  nop                          #  35    0x7e37a  1      
  nop                          #  36    0x7e37b  1      
  nop                          #  37    0x7e37c  1      
  nop                          #  38    0x7e37d  1      
                                                        
.size _mbtowc_r, .-_mbtowc_r

