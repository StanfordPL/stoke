  .text
  .globl _ZNSsaSESt16initializer_listIcE
  .type _ZNSsaSESt16initializer_listIcE, @function

#! file-offset 0x49460
#! rip-offset  0x49460
#! capacity    96 bytes

# Text                             #  Line  RIP      Bytes  
._ZNSsaSESt16initializer_listIcE:  #        0x49460  0      
  pushq %rbx                       #  1     0x49460  2      
  movl %edi, %ebx                  #  2     0x49462  2      
  movq %rsi, %r8                   #  3     0x49464  3      
  movl %ebx, %ebx                  #  4     0x49467  2      
  movl (%r15,%rbx,1), %eax         #  5     0x49469  4      
  movl %esi, %ecx                  #  6     0x4946d  2      
  movl %ebx, %edi                  #  7     0x4946f  2      
  shrq $0x20, %r8                  #  8     0x49471  4      
  xorl %esi, %esi                  #  9     0x49475  2      
  subl $0xc, %eax                  #  10    0x49477  3      
  movl %eax, %eax                  #  11    0x4947a  2      
  movl (%r15,%rax,1), %edx         #  12    0x4947c  4      
  nop                              #  13    0x49480  1      
  nop                              #  14    0x49481  1      
  nop                              #  15    0x49482  1      
  callq ._ZNSs7replaceEjjPKcj      #  16    0x49483  5      
  movl %ebx, %eax                  #  17    0x49488  2      
  popq %rbx                        #  18    0x4948a  2      
  popq %r11                        #  19    0x4948c  3      
  andl $0xffffffe0, %r11d          #  20    0x4948f  7      
  addq %r15, %r11                  #  21    0x49496  3      
  jmpq %r11                        #  22    0x49499  3      
  nop                              #  23    0x4949c  1      
  nop                              #  24    0x4949d  1      
  nop                              #  25    0x4949e  1      
  nop                              #  26    0x4949f  1      
  nop                              #  27    0x494a0  1      
  nop                              #  28    0x494a1  1      
  nop                              #  29    0x494a2  1      
  nop                              #  30    0x494a3  1      
  nop                              #  31    0x494a4  1      
  nop                              #  32    0x494a5  1      
  nop                              #  33    0x494a6  1      
  nop                              #  34    0x494a7  1      
  nop                              #  35    0x494a8  1      
  nop                              #  36    0x494a9  1      
  nop                              #  37    0x494aa  1      
  nop                              #  38    0x494ab  1      
  nop                              #  39    0x494ac  1      
                                                            
.size _ZNSsaSESt16initializer_listIcE, .-_ZNSsaSESt16initializer_listIcE

