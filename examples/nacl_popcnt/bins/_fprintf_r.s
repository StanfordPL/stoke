  .text
  .globl _fprintf_r
  .type _fprintf_r, @function

#! file-offset 0x686a0
#! rip-offset  0x686a0
#! capacity    192 bytes

# Text                              #  Line  RIP      Bytes  
._fprintf_r:                        #        0x686a0  0      
  subl $0xc8, %esp                  #  1     0x686a0  3      
  addq %r15, %rsp                   #  2     0x686a3  3      
  movl %edi, %edi                   #  3     0x686a6  2      
  movl %esi, %esi                   #  4     0x686a8  2      
  leal 0xbf(%rsp), %eax             #  5     0x686aa  7      
  movq %rcx, 0x28(%rsp)             #  6     0x686b1  5      
  movq %r8, 0x30(%rsp)              #  7     0x686b6  5      
  xchgw %ax, %ax                    #  8     0x686bb  3      
  movq %r9, 0x38(%rsp)              #  9     0x686be  5      
  movl %esp, %ecx                   #  10    0x686c3  2      
  movl %edx, %edx                   #  11    0x686c5  2      
  movl %eax, %eax                   #  12    0x686c7  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  13    0x686c9  6      
  movl %eax, %eax                   #  14    0x686cf  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  15    0x686d1  6      
  nop                               #  16    0x686d7  1      
  movl %eax, %eax                   #  17    0x686d8  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  18    0x686da  6      
  movl %eax, %eax                   #  19    0x686e0  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  20    0x686e2  6      
  movl %eax, %eax                   #  21    0x686e8  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  22    0x686ea  6      
  movl %eax, %eax                   #  23    0x686f0  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  24    0x686f2  6      
  movl %eax, %eax                   #  25    0x686f8  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  26    0x686fa  6      
  movl %eax, %eax                   #  27    0x68700  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  28    0x68702  6      
  leal 0xd0(%rsp), %eax             #  29    0x68708  7      
  movl $0x18, (%rsp)                #  30    0x6870f  7      
  xchgw %ax, %ax                    #  31    0x68716  3      
  movl $0x30, 0x4(%rsp)             #  32    0x68719  8      
  movl %eax, 0x8(%rsp)              #  33    0x68721  4      
  leal 0x10(%rsp), %eax             #  34    0x68725  4      
  movl %eax, 0xc(%rsp)              #  35    0x68729  4      
  nop                               #  36    0x6872d  1      
  callq ._vfprintf_r                #  37    0x6872e  5      
  addl $0xc8, %esp                  #  38    0x68733  3      
  addq %r15, %rsp                   #  39    0x68736  3      
  popq %r11                         #  40    0x68739  3      
  andl $0xffffffe0, %r11d           #  41    0x6873c  7      
  addq %r15, %r11                   #  42    0x68743  3      
  jmpq %r11                         #  43    0x68746  3      
  nop                               #  44    0x68749  1      
  nop                               #  45    0x6874a  1      
  nop                               #  46    0x6874b  1      
  nop                               #  47    0x6874c  1      
  nop                               #  48    0x6874d  1      
  nop                               #  49    0x6874e  1      
  nop                               #  50    0x6874f  1      
  nop                               #  51    0x68750  1      
  nop                               #  52    0x68751  1      
  nop                               #  53    0x68752  1      
  nop                               #  54    0x68753  1      
                                                             
.size _fprintf_r, .-_fprintf_r

