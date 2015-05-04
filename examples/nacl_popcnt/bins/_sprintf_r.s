  .text
  .globl _sprintf_r
  .type _sprintf_r, @function

#! file-offset 0x6ada0
#! rip-offset  0x6ada0
#! capacity    288 bytes

# Text                              #  Line  RIP      Bytes  
._sprintf_r:                        #        0x6ada0  0      
  subl $0x148, %esp                 #  1     0x6ada0  6      
  addq %r15, %rsp                   #  2     0x6ada6  3      
  movl %esi, %esi                   #  3     0x6ada9  2      
  movl %edx, %edx                   #  4     0x6adab  2      
  leal 0x13f(%rsp), %eax            #  5     0x6adad  7      
  movq %rcx, 0xa8(%rsp)             #  6     0x6adb4  8      
  nop                               #  7     0x6adbc  1      
  movq %r8, 0xb0(%rsp)              #  8     0x6adbd  8      
  movq %r9, 0xb8(%rsp)              #  9     0x6adc5  8      
  leal 0x80(%rsp), %ecx             #  10    0x6adcd  7      
  movl %edi, %edi                   #  11    0x6add4  2      
  nop                               #  12    0x6add6  1      
  movl %eax, %eax                   #  13    0x6add7  2      
  movaps %xmm7, -0xf(%r15,%rax,1)   #  14    0x6add9  6      
  movl %eax, %eax                   #  15    0x6addf  2      
  movaps %xmm6, -0x1f(%r15,%rax,1)  #  16    0x6ade1  6      
  movl %eax, %eax                   #  17    0x6ade7  2      
  movaps %xmm5, -0x2f(%r15,%rax,1)  #  18    0x6ade9  6      
  movl %eax, %eax                   #  19    0x6adef  2      
  movaps %xmm4, -0x3f(%r15,%rax,1)  #  20    0x6adf1  6      
  movl %eax, %eax                   #  21    0x6adf7  2      
  movaps %xmm3, -0x4f(%r15,%rax,1)  #  22    0x6adf9  6      
  movl %eax, %eax                   #  23    0x6adff  2      
  movaps %xmm2, -0x5f(%r15,%rax,1)  #  24    0x6ae01  6      
  movl %eax, %eax                   #  25    0x6ae07  2      
  movaps %xmm1, -0x6f(%r15,%rax,1)  #  26    0x6ae09  6      
  movl %eax, %eax                   #  27    0x6ae0f  2      
  movaps %xmm0, -0x7f(%r15,%rax,1)  #  28    0x6ae11  6      
  leal 0x150(%rsp), %eax            #  29    0x6ae17  7      
  movl %esi, (%rsp)                 #  30    0x6ae1e  3      
  movl %esi, 0x10(%rsp)             #  31    0x6ae21  4      
  movl %esp, %esi                   #  32    0x6ae25  2      
  movw $0x208, 0xc(%rsp)            #  33    0x6ae27  7      
  movl %eax, 0x88(%rsp)             #  34    0x6ae2e  7      
  xchgw %ax, %ax                    #  35    0x6ae35  3      
  leal 0x90(%rsp), %eax             #  36    0x6ae38  7      
  movl $0x7fffffff, 0x8(%rsp)       #  37    0x6ae3f  8      
  movl $0x7fffffff, 0x14(%rsp)      #  38    0x6ae47  8      
  movw $0xffff, 0xe(%rsp)           #  39    0x6ae4f  7      
  xchgw %ax, %ax                    #  40    0x6ae56  3      
  movl $0x18, 0x80(%rsp)            #  41    0x6ae59  11     
  movl $0x30, 0x84(%rsp)            #  42    0x6ae64  11     
  movl %eax, 0x8c(%rsp)             #  43    0x6ae6f  7      
  nop                               #  44    0x6ae76  1      
  nop                               #  45    0x6ae77  1      
  nop                               #  46    0x6ae78  1      
  callq ._svfprintf_r               #  47    0x6ae79  5      
  movl (%rsp), %edx                 #  48    0x6ae7e  3      
  movl %edx, %edx                   #  49    0x6ae81  2      
  movb $0x0, (%r15,%rdx,1)          #  50    0x6ae83  5      
  addl $0x148, %esp                 #  51    0x6ae88  6      
  addq %r15, %rsp                   #  52    0x6ae8e  3      
  popq %r11                         #  53    0x6ae91  3      
  andl $0xffffffe0, %r11d           #  54    0x6ae94  7      
  addq %r15, %r11                   #  55    0x6ae9b  3      
  jmpq %r11                         #  56    0x6ae9e  3      
  nop                               #  57    0x6aea1  1      
                                                             
.size _sprintf_r, .-_sprintf_r

