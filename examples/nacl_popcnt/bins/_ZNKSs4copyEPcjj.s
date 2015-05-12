  .text
  .globl _ZNKSs4copyEPcjj
  .type _ZNKSs4copyEPcjj, @function

#! file-offset 0x45e40
#! rip-offset  0x45e40
#! capacity    192 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNKSs4copyEPcjj:                      #        0x45e40  0      
  movl %edi, %eax                       #  1     0x45e40  2      
  pushq %rbx                            #  2     0x45e42  2      
  movl %esi, %edi                       #  3     0x45e44  2      
  movl %eax, %eax                       #  4     0x45e46  2      
  movl (%r15,%rax,1), %esi              #  5     0x45e48  4      
  leal -0xc(%rsi), %eax                 #  6     0x45e4c  3      
  movl %eax, %eax                       #  7     0x45e4f  2      
  movl (%r15,%rax,1), %ebx              #  8     0x45e51  4      
  cmpl %ebx, %ecx                       #  9     0x45e55  2      
  ja .L_45ee0                           #  10    0x45e57  6      
  subl %ecx, %ebx                       #  11    0x45e5d  2      
  cmpl %edx, %ebx                       #  12    0x45e5f  2      
  cmoval %edx, %ebx                     #  13    0x45e61  3      
  testl %ebx, %ebx                      #  14    0x45e64  2      
  jne .L_45e80                          #  15    0x45e66  6      
  movl %ebx, %eax                       #  16    0x45e6c  2      
  popq %rbx                             #  17    0x45e6e  2      
  popq %r11                             #  18    0x45e70  3      
  andl $0xffffffe0, %r11d               #  19    0x45e73  7      
  addq %r15, %r11                       #  20    0x45e7a  3      
  jmpq %r11                             #  21    0x45e7d  3      
  nop                                   #  22    0x45e80  1      
.L_45e80:                               #        0x45e81  0      
  cmpl $0x1, %ebx                       #  23    0x45e81  3      
  leal (%rcx,%rsi,1), %esi              #  24    0x45e84  3      
  je .L_45ec0                           #  25    0x45e87  6      
  movl %ebx, %edx                       #  26    0x45e8d  2      
  xchgw %ax, %ax                        #  27    0x45e8f  3      
  nop                                   #  28    0x45e92  1      
  callq .memcpy                         #  29    0x45e93  5      
  movl %ebx, %eax                       #  30    0x45e98  2      
  popq %rbx                             #  31    0x45e9a  2      
  popq %r11                             #  32    0x45e9c  3      
  andl $0xffffffe0, %r11d               #  33    0x45e9f  7      
  addq %r15, %r11                       #  34    0x45ea6  3      
  jmpq %r11                             #  35    0x45ea9  3      
  xchgw %ax, %ax                        #  36    0x45eac  3      
  nop                                   #  37    0x45eaf  1      
.L_45ec0:                               #        0x45eb0  0      
  movl %esi, %esi                       #  38    0x45eb0  2      
  movzbl (%r15,%rsi,1), %eax            #  39    0x45eb2  5      
  movl %edi, %edi                       #  40    0x45eb7  2      
  movb %al, (%r15,%rdi,1)               #  41    0x45eb9  4      
  movl %ebx, %eax                       #  42    0x45ebd  2      
  popq %rbx                             #  43    0x45ebf  2      
  popq %r11                             #  44    0x45ec1  3      
  andl $0xffffffe0, %r11d               #  45    0x45ec4  7      
  addq %r15, %r11                       #  46    0x45ecb  3      
  jmpq %r11                             #  47    0x45ece  3      
  nop                                   #  48    0x45ed1  1      
.L_45ee0:                               #        0x45ed2  0      
  movl $0x100209ca, %edi                #  49    0x45ed2  5      
  nop                                   #  50    0x45ed7  1      
  nop                                   #  51    0x45ed8  1      
  callq ._ZSt20__throw_out_of_rangePKc  #  52    0x45ed9  5      
                                                                 
.size _ZNKSs4copyEPcjj, .-_ZNKSs4copyEPcjj

