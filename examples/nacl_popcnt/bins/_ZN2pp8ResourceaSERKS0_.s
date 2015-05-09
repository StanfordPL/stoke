  .text
  .globl _ZN2pp8ResourceaSERKS0_
  .type _ZN2pp8ResourceaSERKS0_, @function

#! file-offset 0x26e40
#! rip-offset  0x26e40
#! capacity    320 bytes

# Text                          #  Line  RIP      Bytes  
._ZN2pp8ResourceaSERKS0_:       #        0x26e40  0      
  movq %r12, -0x10(%rsp)        #  1     0x26e40  5      
  movl %esi, %r12d              #  2     0x26e45  3      
  movq %rbx, -0x18(%rsp)        #  3     0x26e48  5      
  movq %r13, -0x8(%rsp)         #  4     0x26e4d  5      
  subl $0x18, %esp              #  5     0x26e52  3      
  addq %r15, %rsp               #  6     0x26e55  3      
  movl %r12d, %r12d             #  7     0x26e58  3      
  movl 0x4(%r15,%r12,1), %r13d  #  8     0x26e5b  5      
  movl %edi, %ebx               #  9     0x26e60  2      
  testl %r13d, %r13d            #  10    0x26e62  3      
  jne .L_26f20                  #  11    0x26e65  6      
  nop                           #  12    0x26e6b  1      
  nop                           #  13    0x26e6c  1      
.L_26e80:                       #        0x26e6d  0      
  movl %ebx, %ebx               #  14    0x26e6d  2      
  movl 0x4(%r15,%rbx,1), %r13d  #  15    0x26e6f  5      
  testl %r13d, %r13d            #  16    0x26e74  3      
  je .L_26ee0                   #  17    0x26e77  6      
  nop                           #  18    0x26e7d  1      
  callq ._ZN2pp6Module3GetEv    #  19    0x26e7e  5      
  movl %eax, %eax               #  20    0x26e83  2      
  movl %r13d, %edi              #  21    0x26e85  3      
  movl %eax, %eax               #  22    0x26e88  2      
  movl 0x24(%r15,%rax,1), %eax  #  23    0x26e8a  5      
  movl %eax, %eax               #  24    0x26e8f  2      
  movl (%r15,%rax,1), %eax      #  25    0x26e91  4      
  movl %eax, %eax               #  26    0x26e95  2      
  movl 0x4(%r15,%rax,1), %eax   #  27    0x26e97  5      
  nop                           #  28    0x26e9c  1      
  nop                           #  29    0x26e9d  1      
  nop                           #  30    0x26e9e  1      
  andl $0xffffffe0, %eax        #  31    0x26e9f  5      
  addq %r15, %rax               #  32    0x26ea4  3      
  callq %rax                    #  33    0x26ea7  2      
.L_26ee0:                       #        0x26ea9  0      
  movl %r12d, %r12d             #  34    0x26ea9  3      
  movl 0x4(%r15,%r12,1), %eax   #  35    0x26eac  5      
  movq 0x10(%rsp), %r13         #  36    0x26eb1  5      
  movq 0x8(%rsp), %r12          #  37    0x26eb6  5      
  movl %ebx, %ebx               #  38    0x26ebb  2      
  movl %eax, 0x4(%r15,%rbx,1)   #  39    0x26ebd  5      
  movl %ebx, %eax               #  40    0x26ec2  2      
  movq (%rsp), %rbx             #  41    0x26ec4  4      
  nop                           #  42    0x26ec8  1      
  addl $0x18, %esp              #  43    0x26ec9  3      
  addq %r15, %rsp               #  44    0x26ecc  3      
  popq %r11                     #  45    0x26ecf  3      
  andl $0xffffffe0, %r11d       #  46    0x26ed2  7      
  addq %r15, %r11               #  47    0x26ed9  3      
  jmpq %r11                     #  48    0x26edc  3      
  nop                           #  49    0x26edf  1      
.L_26f20:                       #        0x26ee0  0      
  nop                           #  50    0x26ee0  1      
  nop                           #  51    0x26ee1  1      
  callq ._ZN2pp6Module3GetEv    #  52    0x26ee2  5      
  movl %eax, %eax               #  53    0x26ee7  2      
  movl %r13d, %edi              #  54    0x26ee9  3      
  movl %eax, %eax               #  55    0x26eec  2      
  movl 0x24(%r15,%rax,1), %eax  #  56    0x26eee  5      
  movl %eax, %eax               #  57    0x26ef3  2      
  movl (%r15,%rax,1), %eax      #  58    0x26ef5  4      
  movl %eax, %eax               #  59    0x26ef9  2      
  movl (%r15,%rax,1), %eax      #  60    0x26efb  4      
  andl $0xffffffe0, %eax        #  61    0x26eff  5      
  addq %r15, %rax               #  62    0x26f04  3      
  callq %rax                    #  63    0x26f07  2      
  jmpq .L_26e80                 #  64    0x26f09  5      
  nop                           #  65    0x26f0e  1      
  nop                           #  66    0x26f0f  1      
  nop                           #  67    0x26f10  1      
                                                         
.size _ZN2pp8ResourceaSERKS0_, .-_ZN2pp8ResourceaSERKS0_

