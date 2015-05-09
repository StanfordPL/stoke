  .text
  .globl _wctomb_r
  .type _wctomb_r, @function

#! file-offset 0x779e0
#! rip-offset  0x779e0
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
._wctomb_r:                   #        0x779e0  0      
  movq %rbx, -0x20(%rsp)      #  1     0x779e0  5      
  movq %r12, -0x18(%rsp)      #  2     0x779e5  5      
  movl %ecx, %r8d             #  3     0x779ea  3      
  movq %r13, -0x10(%rsp)      #  4     0x779ed  5      
  movq %r14, -0x8(%rsp)       #  5     0x779f2  5      
  subl $0x38, %esp            #  6     0x779f7  3      
  addq %r15, %rsp             #  7     0x779fa  3      
  nop                         #  8     0x779fd  1      
  movl 0xffb8f8c(%rip), %ebx  #  9     0x779fe  6      
  movl %edx, %r14d            #  10    0x77a04  3      
  movl %edi, %r12d            #  11    0x77a07  3      
  movl %esi, %r13d            #  12    0x77a0a  3      
  movq %r8, 0x8(%rsp)         #  13    0x77a0d  5      
  nop                         #  14    0x77a12  1      
  callq .__locale_charset     #  15    0x77a13  5      
  movq 0x8(%rsp), %r8         #  16    0x77a18  5      
  movl %r14d, %edx            #  17    0x77a1d  3      
  movl %r13d, %esi            #  18    0x77a20  3      
  movl %r12d, %edi            #  19    0x77a23  3      
  movq %rbx, %r9              #  20    0x77a26  3      
  movq 0x20(%rsp), %r12       #  21    0x77a29  5      
  movq 0x18(%rsp), %rbx       #  22    0x77a2e  5      
  movq 0x28(%rsp), %r13       #  23    0x77a33  5      
  movl %eax, %ecx             #  24    0x77a38  2      
  movq 0x30(%rsp), %r14       #  25    0x77a3a  5      
  addl $0x38, %esp            #  26    0x77a3f  3      
  addq %r15, %rsp             #  27    0x77a42  3      
  andl $0xffffffe0, %r9d      #  28    0x77a45  7      
  addq %r15, %r9              #  29    0x77a4c  3      
  jmpq %r9                    #  30    0x77a4f  3      
  nop                         #  31    0x77a52  1      
  nop                         #  32    0x77a53  1      
  nop                         #  33    0x77a54  1      
  nop                         #  34    0x77a55  1      
  nop                         #  35    0x77a56  1      
  nop                         #  36    0x77a57  1      
  nop                         #  37    0x77a58  1      
  nop                         #  38    0x77a59  1      
  nop                         #  39    0x77a5a  1      
                                                       
.size _wctomb_r, .-_wctomb_r

