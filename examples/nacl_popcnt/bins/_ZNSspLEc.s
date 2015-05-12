  .text
  .globl _ZNSspLEc
  .type _ZNSspLEc, @function

#! file-offset 0x46ce0
#! rip-offset  0x46ce0
#! capacity    256 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSspLEc:                     #        0x46ce0  0      
  movq %rbx, -0x18(%rsp)        #  1     0x46ce0  5      
  movl %edi, %ebx               #  2     0x46ce5  2      
  movq %r12, -0x10(%rsp)        #  3     0x46ce7  5      
  movq %r13, -0x8(%rsp)         #  4     0x46cec  5      
  subl $0x18, %esp              #  5     0x46cf1  3      
  addq %r15, %rsp               #  6     0x46cf4  3      
  movl %ebx, %ebx               #  7     0x46cf7  2      
  movl (%r15,%rbx,1), %eax      #  8     0x46cf9  4      
  movl %esi, %r13d              #  9     0x46cfd  3      
  leal -0xc(%rax), %ecx         #  10    0x46d00  3      
  movl %ecx, %ecx               #  11    0x46d03  2      
  movl (%r15,%rcx,1), %edx      #  12    0x46d05  4      
  leal 0x1(%rdx), %r12d         #  13    0x46d09  4      
  movl %ecx, %ecx               #  14    0x46d0d  2      
  cmpl 0x4(%r15,%rcx,1), %r12d  #  15    0x46d0f  5      
  ja .L_46d40                   #  16    0x46d14  6      
  movl %ecx, %ecx               #  17    0x46d1a  2      
  movl 0x8(%r15,%rcx,1), %r10d  #  18    0x46d1c  5      
  testl %r10d, %r10d            #  19    0x46d21  3      
  jle .L_46d80                  #  20    0x46d24  6      
  nop                           #  21    0x46d2a  1      
  nop                           #  22    0x46d2b  1      
.L_46d40:                       #        0x46d2c  0      
  movl %r12d, %esi              #  23    0x46d2c  3      
  movl %ebx, %edi               #  24    0x46d2f  2      
  nop                           #  25    0x46d31  1      
  nop                           #  26    0x46d32  1      
  callq ._ZNSs7reserveEj        #  27    0x46d33  5      
  movl %ebx, %ebx               #  28    0x46d38  2      
  movl (%r15,%rbx,1), %eax      #  29    0x46d3a  4      
  leal -0xc(%rax), %edx         #  30    0x46d3e  3      
  movl %edx, %edx               #  31    0x46d41  2      
  movl (%r15,%rdx,1), %edx      #  32    0x46d43  4      
  xchgw %ax, %ax                #  33    0x46d47  3      
  nop                           #  34    0x46d4a  1      
.L_46d80:                       #        0x46d4b  0      
  leal (%rdx,%rax,1), %eax      #  35    0x46d4b  3      
  movl %eax, %eax               #  36    0x46d4e  2      
  movb %r13b, (%r15,%rax,1)     #  37    0x46d50  4      
  movl %ebx, %ebx               #  38    0x46d54  2      
  movl (%r15,%rbx,1), %eax      #  39    0x46d56  4      
  subl $0xc, %eax               #  40    0x46d5a  3      
  movl %eax, %eax               #  41    0x46d5d  2      
  movl %r12d, (%r15,%rax,1)     #  42    0x46d5f  4      
  addl %eax, %r12d              #  43    0x46d63  3      
  nop                           #  44    0x46d66  1      
  movl %eax, %eax               #  45    0x46d67  2      
  movl $0x0, 0x8(%r15,%rax,1)   #  46    0x46d69  9      
  movl %r12d, %r12d             #  47    0x46d72  3      
  movb $0x0, 0xc(%r15,%r12,1)   #  48    0x46d75  6      
  movl %ebx, %eax               #  49    0x46d7b  2      
  movq 0x8(%rsp), %r12          #  50    0x46d7d  5      
  movq (%rsp), %rbx             #  51    0x46d82  4      
  nop                           #  52    0x46d86  1      
  movq 0x10(%rsp), %r13         #  53    0x46d87  5      
  addl $0x18, %esp              #  54    0x46d8c  3      
  addq %r15, %rsp               #  55    0x46d8f  3      
  popq %r11                     #  56    0x46d92  3      
  andl $0xffffffe0, %r11d       #  57    0x46d95  7      
  addq %r15, %r11               #  58    0x46d9c  3      
  jmpq %r11                     #  59    0x46d9f  3      
  nop                           #  60    0x46da2  1      
  nop                           #  61    0x46da3  1      
  nop                           #  62    0x46da4  1      
  nop                           #  63    0x46da5  1      
  nop                           #  64    0x46da6  1      
  nop                           #  65    0x46da7  1      
  nop                           #  66    0x46da8  1      
  nop                           #  67    0x46da9  1      
  nop                           #  68    0x46daa  1      
                                                         
.size _ZNSspLEc, .-_ZNSspLEc

