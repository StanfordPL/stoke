  .text
  .globl posix_memalign
  .type posix_memalign, @function

#! file-offset 0x66de0
#! rip-offset  0x66de0
#! capacity    288 bytes

# Text                      #  Line  RIP      Bytes  
.posix_memalign:            #        0x66de0  0      
  cmpl $0x8, %esi           #  1     0x66de0  3      
  pushq %rbx                #  2     0x66de3  2      
  movl %esi, %eax           #  3     0x66de5  2      
  movl %edi, %ebx           #  4     0x66de7  2      
  je .L_66ec0               #  5     0x66de9  6      
  movl %esi, %ecx           #  6     0x66def  2      
  shrl $0x2, %ecx           #  7     0x66df1  3      
  testl %ecx, %ecx          #  8     0x66df4  2      
  je .L_66e00               #  9     0x66df6  6      
  testb $0x3, %al           #  10    0x66dfc  2      
  je .L_66e20               #  11    0x66dfe  6      
  nop                       #  12    0x66e04  1      
.L_66e00:                   #        0x66e05  0      
  popq %rbx                 #  13    0x66e05  2      
  popq %r11                 #  14    0x66e07  3      
  movl $0x16, %eax          #  15    0x66e0a  5      
  andl $0xffffffe0, %r11d   #  16    0x66e0f  7      
  addq %r15, %r11           #  17    0x66e16  3      
  jmpq %r11                 #  18    0x66e19  3      
  nop                       #  19    0x66e1c  1      
.L_66e20:                   #        0x66e1d  0      
  leal -0x1(%rcx), %esi     #  20    0x66e1d  3      
  testl %ecx, %esi          #  21    0x66e20  2      
  jne .L_66e00              #  22    0x66e22  6      
  movl $0xffffffc0, %ecx    #  23    0x66e28  5      
  subl %eax, %ecx           #  24    0x66e2d  2      
  cmpl %ecx, %edx           #  25    0x66e2f  2      
  ja .L_66ea0               #  26    0x66e31  6      
  cmpl $0xf, %eax           #  27    0x66e37  3      
  movl $0x10, %ecx          #  28    0x66e3a  5      
  movl %edx, %esi           #  29    0x66e3f  2      
  cmovbel %ecx, %eax        #  30    0x66e41  3      
  nop                       #  31    0x66e44  1      
  movl %eax, %edi           #  32    0x66e45  2      
  nop                       #  33    0x66e47  1      
  nop                       #  34    0x66e48  1      
  callq .T_277              #  35    0x66e49  5      
  movl %eax, %eax           #  36    0x66e4e  2      
  nop                       #  37    0x66e50  1      
  nop                       #  38    0x66e51  1      
.L_66e80:                   #        0x66e52  0      
  testq %rax, %rax          #  39    0x66e52  3      
  je .L_66ea0               #  40    0x66e55  6      
  movl %ebx, %ebx           #  41    0x66e5b  2      
  movl %eax, (%r15,%rbx,1)  #  42    0x66e5d  4      
  xorl %eax, %eax           #  43    0x66e61  2      
  popq %rbx                 #  44    0x66e63  2      
  popq %r11                 #  45    0x66e65  3      
  andl $0xffffffe0, %r11d   #  46    0x66e68  7      
  addq %r15, %r11           #  47    0x66e6f  3      
  jmpq %r11                 #  48    0x66e72  3      
  nop                       #  49    0x66e75  1      
.L_66ea0:                   #        0x66e76  0      
  popq %rbx                 #  50    0x66e76  2      
  popq %r11                 #  51    0x66e78  3      
  movl $0xc, %eax           #  52    0x66e7b  5      
  andl $0xffffffe0, %r11d   #  53    0x66e80  7      
  addq %r15, %r11           #  54    0x66e87  3      
  jmpq %r11                 #  55    0x66e8a  3      
  nop                       #  56    0x66e8d  1      
.L_66ec0:                   #        0x66e8e  0      
  movl %edx, %edi           #  57    0x66e8e  2      
  nop                       #  58    0x66e90  1      
  nop                       #  59    0x66e91  1      
  callq .malloc             #  60    0x66e92  5      
  movl %eax, %eax           #  61    0x66e97  2      
  jmpq .L_66e80             #  62    0x66e99  5      
  nop                       #  63    0x66e9e  1      
  nop                       #  64    0x66e9f  1      
                                                     
.size posix_memalign, .-posix_memalign

