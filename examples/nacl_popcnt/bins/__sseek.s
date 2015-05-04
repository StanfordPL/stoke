  .text
  .globl __sseek
  .type __sseek, @function

#! file-offset 0x800c0
#! rip-offset  0x800c0
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
.__sseek:                         #        0x800c0  0      
  pushq %rbx                      #  1     0x800c0  2      
  movl %esi, %ebx                 #  2     0x800c2  2      
  movslq %edx, %rsi               #  3     0x800c4  3      
  movl %ebx, %ebx                 #  4     0x800c7  2      
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x800c9  6      
  movl %ecx, %edx                 #  6     0x800cf  2      
  nop                             #  7     0x800d1  1      
  callq .lseek                    #  8     0x800d2  5      
  cmpq $0xffffffffffffffff, %rax  #  9     0x800d7  4      
  je .L_80120                     #  10    0x800db  6      
  movl %ebx, %ebx                 #  11    0x800e1  2      
  orw $0x1000, 0xc(%r15,%rbx,1)   #  12    0x800e3  8      
  movl %ebx, %ebx                 #  13    0x800eb  2      
  movq %rax, 0x50(%r15,%rbx,1)    #  14    0x800ed  5      
  popq %rbx                       #  15    0x800f2  2      
  popq %r11                       #  16    0x800f4  3      
  nop                             #  17    0x800f7  1      
  andl $0xffffffe0, %r11d         #  18    0x800f8  7      
  addq %r15, %r11                 #  19    0x800ff  3      
  jmpq %r11                       #  20    0x80102  3      
  nop                             #  21    0x80105  1      
  nop                             #  22    0x80106  1      
.L_80120:                         #        0x80107  0      
  movl %ebx, %ebx                 #  23    0x80107  2      
  andw $0xefff, 0xc(%r15,%rbx,1)  #  24    0x80109  8      
  popq %rbx                       #  25    0x80111  2      
  popq %r11                       #  26    0x80113  3      
  andl $0xffffffe0, %r11d         #  27    0x80116  7      
  addq %r15, %r11                 #  28    0x8011d  3      
  jmpq %r11                       #  29    0x80120  3      
  nop                             #  30    0x80123  1      
                                                           
.size __sseek, .-__sseek

