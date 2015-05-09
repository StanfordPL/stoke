  .text
  .globl _fprintf_r
  .type _fprintf_r, @function

#! file-offset 0x68600
#! rip-offset  0x68600
#! capacity    192 bytes

# Text                              #  Line  RIP      Bytes  
._fprintf_r:                        #        0x68600  0      
  subl $0xc8, %esp                  #  1     0x68600  3      
  addq %r15, %rsp                   #  2     0x68603  3      
  movl %edi, %edi                   #  3     0x68606  2      
  movl %esi, %esi                   #  4     0x68608  2      
  leal 0xbf(%rsp), %eax             #  5     0x6860a  7      
  movq %rcx, 0x28(%rsp)             #  6     0x68611  5      
  movq %r8, 0x30(%rsp)              #  7     0x68616  5      
  xchgw %ax, %ax                    #  8     0x6861b  3      
  movq %r9, 0x38(%rsp)              #  9     0x6861e  5      
  movl %esp, %ecx                   #  10    0x68623  2      
  movl %edx, %edx                   #  11    0x68625  2      
  movl %eax, %eax                   #  12    0x68627  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  13    0x68629  6      
  movl %eax, %eax                   #  14    0x6862f  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  15    0x68631  6      
  nop                               #  16    0x68637  1      
  movl %eax, %eax                   #  17    0x68638  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  18    0x6863a  6      
  movl %eax, %eax                   #  19    0x68640  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  20    0x68642  6      
  movl %eax, %eax                   #  21    0x68648  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  22    0x6864a  6      
  movl %eax, %eax                   #  23    0x68650  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  24    0x68652  6      
  movl %eax, %eax                   #  25    0x68658  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  26    0x6865a  6      
  movl %eax, %eax                   #  27    0x68660  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  28    0x68662  6      
  leal 0xd0(%rsp), %eax             #  29    0x68668  7      
  movl $0x18, (%rsp)                #  30    0x6866f  7      
  xchgw %ax, %ax                    #  31    0x68676  3      
  movl $0x30, 0x4(%rsp)             #  32    0x68679  8      
  movl %eax, 0x8(%rsp)              #  33    0x68681  4      
  leal 0x10(%rsp), %eax             #  34    0x68685  4      
  movl %eax, 0xc(%rsp)              #  35    0x68689  4      
  nop                               #  36    0x6868d  1      
  callq ._vfprintf_r                #  37    0x6868e  5      
  addl $0xc8, %esp                  #  38    0x68693  3      
  addq %r15, %rsp                   #  39    0x68696  3      
  popq %r11                         #  40    0x68699  3      
  andl $0xffffffe0, %r11d           #  41    0x6869c  7      
  addq %r15, %r11                   #  42    0x686a3  3      
  jmpq %r11                         #  43    0x686a6  3      
  nop                               #  44    0x686a9  1      
  nop                               #  45    0x686aa  1      
  nop                               #  46    0x686ab  1      
  nop                               #  47    0x686ac  1      
  nop                               #  48    0x686ad  1      
  nop                               #  49    0x686ae  1      
  nop                               #  50    0x686af  1      
  nop                               #  51    0x686b0  1      
  nop                               #  52    0x686b1  1      
  nop                               #  53    0x686b2  1      
  nop                               #  54    0x686b3  1      
                                                             
.size _fprintf_r, .-_fprintf_r

