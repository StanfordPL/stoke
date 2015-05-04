  .text
  .globl _ZNSspLEc
  .type _ZNSspLEc, @function

#! file-offset 0x46d60
#! rip-offset  0x46d60
#! capacity    256 bytes

# Text                          #  Line  RIP      Bytes  
._ZNSspLEc:                     #        0x46d60  0      
  movq %rbx, -0x18(%rsp)        #  1     0x46d60  5      
  movl %edi, %ebx               #  2     0x46d65  2      
  movq %r12, -0x10(%rsp)        #  3     0x46d67  5      
  movq %r13, -0x8(%rsp)         #  4     0x46d6c  5      
  subl $0x18, %esp              #  5     0x46d71  3      
  addq %r15, %rsp               #  6     0x46d74  3      
  movl %ebx, %ebx               #  7     0x46d77  2      
  movl (%r15,%rbx,1), %eax      #  8     0x46d79  4      
  movl %esi, %r13d              #  9     0x46d7d  3      
  leal -0xc(%rax), %ecx         #  10    0x46d80  3      
  movl %ecx, %ecx               #  11    0x46d83  2      
  movl (%r15,%rcx,1), %edx      #  12    0x46d85  4      
  leal 0x1(%rdx), %r12d         #  13    0x46d89  4      
  movl %ecx, %ecx               #  14    0x46d8d  2      
  cmpl 0x4(%r15,%rcx,1), %r12d  #  15    0x46d8f  5      
  ja .L_46dc0                   #  16    0x46d94  6      
  movl %ecx, %ecx               #  17    0x46d9a  2      
  movl 0x8(%r15,%rcx,1), %r10d  #  18    0x46d9c  5      
  testl %r10d, %r10d            #  19    0x46da1  3      
  jle .L_46e00                  #  20    0x46da4  6      
  nop                           #  21    0x46daa  1      
  nop                           #  22    0x46dab  1      
.L_46dc0:                       #        0x46dac  0      
  movl %r12d, %esi              #  23    0x46dac  3      
  movl %ebx, %edi               #  24    0x46daf  2      
  nop                           #  25    0x46db1  1      
  nop                           #  26    0x46db2  1      
  callq ._ZNSs7reserveEj        #  27    0x46db3  5      
  movl %ebx, %ebx               #  28    0x46db8  2      
  movl (%r15,%rbx,1), %eax      #  29    0x46dba  4      
  leal -0xc(%rax), %edx         #  30    0x46dbe  3      
  movl %edx, %edx               #  31    0x46dc1  2      
  movl (%r15,%rdx,1), %edx      #  32    0x46dc3  4      
  xchgw %ax, %ax                #  33    0x46dc7  3      
  nop                           #  34    0x46dca  1      
.L_46e00:                       #        0x46dcb  0      
  leal (%rdx,%rax,1), %eax      #  35    0x46dcb  3      
  movl %eax, %eax               #  36    0x46dce  2      
  movb %r13b, (%r15,%rax,1)     #  37    0x46dd0  4      
  movl %ebx, %ebx               #  38    0x46dd4  2      
  movl (%r15,%rbx,1), %eax      #  39    0x46dd6  4      
  subl $0xc, %eax               #  40    0x46dda  3      
  movl %eax, %eax               #  41    0x46ddd  2      
  movl %r12d, (%r15,%rax,1)     #  42    0x46ddf  4      
  addl %eax, %r12d              #  43    0x46de3  3      
  nop                           #  44    0x46de6  1      
  movl %eax, %eax               #  45    0x46de7  2      
  movl $0x0, 0x8(%r15,%rax,1)   #  46    0x46de9  9      
  movl %r12d, %r12d             #  47    0x46df2  3      
  movb $0x0, 0xc(%r15,%r12,1)   #  48    0x46df5  6      
  movl %ebx, %eax               #  49    0x46dfb  2      
  movq 0x8(%rsp), %r12          #  50    0x46dfd  5      
  movq (%rsp), %rbx             #  51    0x46e02  4      
  nop                           #  52    0x46e06  1      
  movq 0x10(%rsp), %r13         #  53    0x46e07  5      
  addl $0x18, %esp              #  54    0x46e0c  3      
  addq %r15, %rsp               #  55    0x46e0f  3      
  popq %r11                     #  56    0x46e12  3      
  andl $0xffffffe0, %r11d       #  57    0x46e15  7      
  addq %r15, %r11               #  58    0x46e1c  3      
  jmpq %r11                     #  59    0x46e1f  3      
  nop                           #  60    0x46e22  1      
  nop                           #  61    0x46e23  1      
  nop                           #  62    0x46e24  1      
  nop                           #  63    0x46e25  1      
  nop                           #  64    0x46e26  1      
  nop                           #  65    0x46e27  1      
  nop                           #  66    0x46e28  1      
  nop                           #  67    0x46e29  1      
  nop                           #  68    0x46e2a  1      
                                                         
.size _ZNSspLEc, .-_ZNSspLEc

