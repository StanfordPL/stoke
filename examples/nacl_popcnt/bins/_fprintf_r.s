  .text
  .globl _fprintf_r
  .type _fprintf_r, @function

#! file-offset 0x68620
#! rip-offset  0x68620
#! capacity    192 bytes

# Text                              #  Line  RIP      Bytes  
._fprintf_r:                        #        0x68620  0      
  subl $0xc8, %esp                  #  1     0x68620  3      
  addq %r15, %rsp                   #  2     0x68623  3      
  movl %edi, %edi                   #  3     0x68626  2      
  movl %esi, %esi                   #  4     0x68628  2      
  leal 0xbf(%rsp), %eax             #  5     0x6862a  7      
  movq %rcx, 0x28(%rsp)             #  6     0x68631  5      
  movq %r8, 0x30(%rsp)              #  7     0x68636  5      
  xchgw %ax, %ax                    #  8     0x6863b  3      
  movq %r9, 0x38(%rsp)              #  9     0x6863e  5      
  movl %esp, %ecx                   #  10    0x68643  2      
  movl %edx, %edx                   #  11    0x68645  2      
  movl %eax, %eax                   #  12    0x68647  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  13    0x68649  6      
  movl %eax, %eax                   #  14    0x6864f  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  15    0x68651  6      
  nop                               #  16    0x68657  1      
  movl %eax, %eax                   #  17    0x68658  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  18    0x6865a  6      
  movl %eax, %eax                   #  19    0x68660  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  20    0x68662  6      
  movl %eax, %eax                   #  21    0x68668  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  22    0x6866a  6      
  movl %eax, %eax                   #  23    0x68670  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  24    0x68672  6      
  movl %eax, %eax                   #  25    0x68678  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  26    0x6867a  6      
  movl %eax, %eax                   #  27    0x68680  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  28    0x68682  6      
  leal 0xd0(%rsp), %eax             #  29    0x68688  7      
  movl $0x18, (%rsp)                #  30    0x6868f  7      
  xchgw %ax, %ax                    #  31    0x68696  3      
  movl $0x30, 0x4(%rsp)             #  32    0x68699  8      
  movl %eax, 0x8(%rsp)              #  33    0x686a1  4      
  leal 0x10(%rsp), %eax             #  34    0x686a5  4      
  movl %eax, 0xc(%rsp)              #  35    0x686a9  4      
  nop                               #  36    0x686ad  1      
  callq ._vfprintf_r                #  37    0x686ae  5      
  addl $0xc8, %esp                  #  38    0x686b3  3      
  addq %r15, %rsp                   #  39    0x686b6  3      
  popq %r11                         #  40    0x686b9  3      
  andl $0xffffffe0, %r11d           #  41    0x686bc  7      
  addq %r15, %r11                   #  42    0x686c3  3      
  jmpq %r11                         #  43    0x686c6  3      
  nop                               #  44    0x686c9  1      
  nop                               #  45    0x686ca  1      
  nop                               #  46    0x686cb  1      
  nop                               #  47    0x686cc  1      
  nop                               #  48    0x686cd  1      
  nop                               #  49    0x686ce  1      
  nop                               #  50    0x686cf  1      
  nop                               #  51    0x686d0  1      
  nop                               #  52    0x686d1  1      
  nop                               #  53    0x686d2  1      
  nop                               #  54    0x686d3  1      
                                                             
.size _fprintf_r, .-_fprintf_r

