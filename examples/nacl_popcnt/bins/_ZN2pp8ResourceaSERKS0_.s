  .text
  .globl _ZN2pp8ResourceaSERKS0_
  .type _ZN2pp8ResourceaSERKS0_, @function

#! file-offset 0x26ee0
#! rip-offset  0x26ee0
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
._ZN2pp8ResourceaSERKS0_:       #        0x26ee0  0      
  movq %r12, -0x10(%rsp)        #  1     0x26ee0  5      
  movl %esi, %r12d              #  2     0x26ee5  3      
  movq %rbx, -0x18(%rsp)        #  3     0x26ee8  5      
  movq %r13, -0x8(%rsp)         #  4     0x26eed  5      
  subl $0x18, %esp              #  5     0x26ef2  3      
  addq %r15, %rsp               #  6     0x26ef5  3      
  movl %r12d, %r12d             #  7     0x26ef8  3      
  movl 0x4(%r15,%r12,1), %r13d  #  8     0x26efb  5      
  movl %edi, %ebx               #  9     0x26f00  2      
  testl %r13d, %r13d            #  10    0x26f02  3      
  jne .L_26fc0                  #  11    0x26f05  6      
  nop                           #  12    0x26f0b  1      
  nop                           #  13    0x26f0c  1      
.L_26f20:                       #        0x26f0d  0      
  movl %ebx, %ebx               #  14    0x26f0d  2      
  movl 0x4(%r15,%rbx,1), %r13d  #  15    0x26f0f  5      
  testl %r13d, %r13d            #  16    0x26f14  3      
  je .L_26f80                   #  17    0x26f17  6      
  nop                           #  18    0x26f1d  1      
  callq ._ZN2pp6Module3GetEv    #  19    0x26f1e  5      
  movl %eax, %eax               #  20    0x26f23  2      
  movl %r13d, %edi              #  21    0x26f25  3      
  movl %eax, %eax               #  22    0x26f28  2      
  movl 0x24(%r15,%rax,1), %eax  #  23    0x26f2a  5      
  movl %eax, %eax               #  24    0x26f2f  2      
  movl (%r15,%rax,1), %eax      #  25    0x26f31  4      
  movl %eax, %eax               #  26    0x26f35  2      
  movl 0x4(%r15,%rax,1), %eax   #  27    0x26f37  5      
  nop                           #  28    0x26f3c  1      
  nop                           #  29    0x26f3d  1      
  nop                           #  30    0x26f3e  1      
  andl $0xffffffe0, %eax        #  31    0x26f3f  5      
  addq %r15, %rax               #  32    0x26f44  3      
  callq %rax                    #  33    0x26f47  2      
.L_26f80:                       #        0x26f49  0      
  movl %r12d, %r12d             #  34    0x26f49  3      
  movl 0x4(%r15,%r12,1), %eax   #  35    0x26f4c  5      
  movq 0x10(%rsp), %r13         #  36    0x26f51  5      
  movq 0x8(%rsp), %r12          #  37    0x26f56  5      
  movl %ebx, %ebx               #  38    0x26f5b  2      
  movl %eax, 0x4(%r15,%rbx,1)   #  39    0x26f5d  5      
  movl %ebx, %eax               #  40    0x26f62  2      
  movq (%rsp), %rbx             #  41    0x26f64  4      
  nop                           #  42    0x26f68  1      
  addl $0x18, %esp              #  43    0x26f69  3      
  addq %r15, %rsp               #  44    0x26f6c  3      
  popq %r11                     #  45    0x26f6f  3      
  andl $0xffffffe0, %r11d       #  46    0x26f72  7      
  addq %r15, %r11               #  47    0x26f79  3      
  jmpq %r11                     #  48    0x26f7c  3      
  nop                           #  49    0x26f7f  1      
.L_26fc0:                       #        0x26f80  0      
  nop                           #  50    0x26f80  1      
  nop                           #  51    0x26f81  1      
  callq ._ZN2pp6Module3GetEv    #  52    0x26f82  5      
  movl %eax, %eax               #  53    0x26f87  2      
  movl %r13d, %edi              #  54    0x26f89  3      
  movl %eax, %eax               #  55    0x26f8c  2      
  movl 0x24(%r15,%rax,1), %eax  #  56    0x26f8e  5      
  movl %eax, %eax               #  57    0x26f93  2      
  movl (%r15,%rax,1), %eax      #  58    0x26f95  4      
  movl %eax, %eax               #  59    0x26f99  2      
  movl (%r15,%rax,1), %eax      #  60    0x26f9b  4      
  andl $0xffffffe0, %eax        #  61    0x26f9f  5      
  addq %r15, %rax               #  62    0x26fa4  3      
  callq %rax                    #  63    0x26fa7  2      
  jmpq .L_26f20                 #  64    0x26fa9  5      
  nop                           #  65    0x26fae  1      
  nop                           #  66    0x26faf  1      
  nop                           #  67    0x26fb0  1      
                                                         
.size _ZN2pp8ResourceaSERKS0_, .-_ZN2pp8ResourceaSERKS0_

