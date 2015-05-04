  .text
  .globl _ZNKSs4copyEPcjj
  .type _ZNKSs4copyEPcjj, @function

#! file-offset 0x45ec0
#! rip-offset  0x45ec0
#! capacity    192 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs4copyEPcjj:                      #        0x45ec0  0      
  movl %edi, %eax                       #  1     0x45ec0  2      
  pushq %rbx                            #  2     0x45ec2  2      
  movl %esi, %edi                       #  3     0x45ec4  2      
  movl %eax, %eax                       #  4     0x45ec6  2      
  movl (%r15,%rax,1), %esi              #  5     0x45ec8  4      
  leal -0xc(%rsi), %eax                 #  6     0x45ecc  3      
  movl %eax, %eax                       #  7     0x45ecf  2      
  movl (%r15,%rax,1), %ebx              #  8     0x45ed1  4      
  cmpl %ebx, %ecx                       #  9     0x45ed5  2      
  ja .L_45f60                           #  10    0x45ed7  6      
  subl %ecx, %ebx                       #  11    0x45edd  2      
  cmpl %edx, %ebx                       #  12    0x45edf  2      
  cmoval %edx, %ebx                     #  13    0x45ee1  3      
  testl %ebx, %ebx                      #  14    0x45ee4  2      
  jne .L_45f00                          #  15    0x45ee6  6      
  movl %ebx, %eax                       #  16    0x45eec  2      
  popq %rbx                             #  17    0x45eee  2      
  popq %r11                             #  18    0x45ef0  3      
  andl $0xffffffe0, %r11d               #  19    0x45ef3  7      
  addq %r15, %r11                       #  20    0x45efa  3      
  jmpq %r11                             #  21    0x45efd  3      
  nop                                   #  22    0x45f00  1      
.L_45f00:                               #        0x45f01  0      
  cmpl $0x1, %ebx                       #  23    0x45f01  3      
  leal (%rcx,%rsi,1), %esi              #  24    0x45f04  3      
  je .L_45f40                           #  25    0x45f07  6      
  movl %ebx, %edx                       #  26    0x45f0d  2      
  xchgw %ax, %ax                        #  27    0x45f0f  3      
  nop                                   #  28    0x45f12  1      
  callq .memcpy                         #  29    0x45f13  5      
  movl %ebx, %eax                       #  30    0x45f18  2      
  popq %rbx                             #  31    0x45f1a  2      
  popq %r11                             #  32    0x45f1c  3      
  andl $0xffffffe0, %r11d               #  33    0x45f1f  7      
  addq %r15, %r11                       #  34    0x45f26  3      
  jmpq %r11                             #  35    0x45f29  3      
  xchgw %ax, %ax                        #  36    0x45f2c  3      
  nop                                   #  37    0x45f2f  1      
.L_45f40:                               #        0x45f30  0      
  movl %esi, %esi                       #  38    0x45f30  2      
  movzbl (%r15,%rsi,1), %eax            #  39    0x45f32  5      
  movl %edi, %edi                       #  40    0x45f37  2      
  movb %al, (%r15,%rdi,1)               #  41    0x45f39  4      
  movl %ebx, %eax                       #  42    0x45f3d  2      
  popq %rbx                             #  43    0x45f3f  2      
  popq %r11                             #  44    0x45f41  3      
  andl $0xffffffe0, %r11d               #  45    0x45f44  7      
  addq %r15, %r11                       #  46    0x45f4b  3      
  jmpq %r11                             #  47    0x45f4e  3      
  nop                                   #  48    0x45f51  1      
.L_45f60:                               #        0x45f52  0      
  movl $0x100209ca, %edi                #  49    0x45f52  5      
  nop                                   #  50    0x45f57  1      
  nop                                   #  51    0x45f58  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  52    0x45f59  5      
                                                                 
.size _ZNKSs4copyEPcjj, .-_ZNKSs4copyEPcjj

