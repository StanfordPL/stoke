  .text
  .globl _wctomb_r
  .type _wctomb_r, @function

#! file-offset 0x77a80
#! rip-offset  0x77a80
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
._wctomb_r:                   #        0x77a80  0      
  movq %rbx, -0x20(%rsp)      #  1     0x77a80  5      
  movq %r12, -0x18(%rsp)      #  2     0x77a85  5      
  movl %ecx, %r8d             #  3     0x77a8a  3      
  movq %r13, -0x10(%rsp)      #  4     0x77a8d  5      
  movq %r14, -0x8(%rsp)       #  5     0x77a92  5      
  subl $0x38, %esp            #  6     0x77a97  3      
  addq %r15, %rsp             #  7     0x77a9a  3      
  nop                         #  8     0x77a9d  1      
  movl 0xffb8eec(%rip), %ebx  #  9     0x77a9e  6      
  movl %edx, %r14d            #  10    0x77aa4  3      
  movl %edi, %r12d            #  11    0x77aa7  3      
  movl %esi, %r13d            #  12    0x77aaa  3      
  movq %r8, 0x8(%rsp)         #  13    0x77aad  5      
  nop                         #  14    0x77ab2  1      
  callq .__locale_charset     #  15    0x77ab3  5      
  movq 0x8(%rsp), %r8         #  16    0x77ab8  5      
  movl %r14d, %edx            #  17    0x77abd  3      
  movl %r13d, %esi            #  18    0x77ac0  3      
  movl %r12d, %edi            #  19    0x77ac3  3      
  movq %rbx, %r9              #  20    0x77ac6  3      
  movq 0x20(%rsp), %r12       #  21    0x77ac9  5      
  movq 0x18(%rsp), %rbx       #  22    0x77ace  5      
  movq 0x28(%rsp), %r13       #  23    0x77ad3  5      
  movl %eax, %ecx             #  24    0x77ad8  2      
  movq 0x30(%rsp), %r14       #  25    0x77ada  5      
  addl $0x38, %esp            #  26    0x77adf  3      
  addq %r15, %rsp             #  27    0x77ae2  3      
  andl $0xffffffe0, %r9d      #  28    0x77ae5  7      
  addq %r15, %r9              #  29    0x77aec  3      
  jmpq %r9                    #  30    0x77aef  3      
  nop                         #  31    0x77af2  1      
  nop                         #  32    0x77af3  1      
  nop                         #  33    0x77af4  1      
  nop                         #  34    0x77af5  1      
  nop                         #  35    0x77af6  1      
  nop                         #  36    0x77af7  1      
  nop                         #  37    0x77af8  1      
  nop                         #  38    0x77af9  1      
  nop                         #  39    0x77afa  1      
                                                       
.size _wctomb_r, .-_wctomb_r

