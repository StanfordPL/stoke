  .text
  .globl _wctomb_r
  .type _wctomb_r, @function

#! file-offset 0x77a00
#! rip-offset  0x77a00
#! capacity    128 bytes

# Text                        #  Line  RIP      Bytes  
._wctomb_r:                   #        0x77a00  0      
  movq %rbx, -0x20(%rsp)      #  1     0x77a00  5      
  movq %r12, -0x18(%rsp)      #  2     0x77a05  5      
  movl %ecx, %r8d             #  3     0x77a0a  3      
  movq %r13, -0x10(%rsp)      #  4     0x77a0d  5      
  movq %r14, -0x8(%rsp)       #  5     0x77a12  5      
  subl $0x38, %esp            #  6     0x77a17  3      
  addq %r15, %rsp             #  7     0x77a1a  3      
  nop                         #  8     0x77a1d  1      
  movl 0xffb8f6c(%rip), %ebx  #  9     0x77a1e  6      
  movl %edx, %r14d            #  10    0x77a24  3      
  movl %edi, %r12d            #  11    0x77a27  3      
  movl %esi, %r13d            #  12    0x77a2a  3      
  movq %r8, 0x8(%rsp)         #  13    0x77a2d  5      
  nop                         #  14    0x77a32  1      
  callq .__locale_charset     #  15    0x77a33  5      
  movq 0x8(%rsp), %r8         #  16    0x77a38  5      
  movl %r14d, %edx            #  17    0x77a3d  3      
  movl %r13d, %esi            #  18    0x77a40  3      
  movl %r12d, %edi            #  19    0x77a43  3      
  movq %rbx, %r9              #  20    0x77a46  3      
  movq 0x20(%rsp), %r12       #  21    0x77a49  5      
  movq 0x18(%rsp), %rbx       #  22    0x77a4e  5      
  movq 0x28(%rsp), %r13       #  23    0x77a53  5      
  movl %eax, %ecx             #  24    0x77a58  2      
  movq 0x30(%rsp), %r14       #  25    0x77a5a  5      
  addl $0x38, %esp            #  26    0x77a5f  3      
  addq %r15, %rsp             #  27    0x77a62  3      
  andl $0xffffffe0, %r9d      #  28    0x77a65  7      
  addq %r15, %r9              #  29    0x77a6c  3      
  jmpq %r9                    #  30    0x77a6f  3      
  nop                         #  31    0x77a72  1      
  nop                         #  32    0x77a73  1      
  nop                         #  33    0x77a74  1      
  nop                         #  34    0x77a75  1      
  nop                         #  35    0x77a76  1      
  nop                         #  36    0x77a77  1      
  nop                         #  37    0x77a78  1      
  nop                         #  38    0x77a79  1      
  nop                         #  39    0x77a7a  1      
                                                       
.size _wctomb_r, .-_wctomb_r

