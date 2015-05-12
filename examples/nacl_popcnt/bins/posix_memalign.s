  .text
  .globl posix_memalign
  .type posix_memalign, @function

#! file-offset 0x66e00
#! rip-offset  0x66e00
#! capacity    288 bytes

# Text                      #  Line  RIP      Bytes  
.posix_memalign:            #        0x66e00  0      
  cmpl $0x8, %esi           #  1     0x66e00  3      
  pushq %rbx                #  2     0x66e03  2      
  movl %esi, %eax           #  3     0x66e05  2      
  movl %edi, %ebx           #  4     0x66e07  2      
  je .L_66ee0               #  5     0x66e09  6      
  movl %esi, %ecx           #  6     0x66e0f  2      
  shrl $0x2, %ecx           #  7     0x66e11  3      
  testl %ecx, %ecx          #  8     0x66e14  2      
  je .L_66e20               #  9     0x66e16  6      
  testb $0x3, %al           #  10    0x66e1c  2      
  je .L_66e40               #  11    0x66e1e  6      
  nop                       #  12    0x66e24  1      
.L_66e20:                   #        0x66e25  0      
  popq %rbx                 #  13    0x66e25  2      
  popq %r11                 #  14    0x66e27  3      
  movl $0x16, %eax          #  15    0x66e2a  5      
  andl $0xffffffe0, %r11d   #  16    0x66e2f  7      
  addq %r15, %r11           #  17    0x66e36  3      
  jmpq %r11                 #  18    0x66e39  3      
  nop                       #  19    0x66e3c  1      
.L_66e40:                   #        0x66e3d  0      
  leal -0x1(%rcx), %esi     #  20    0x66e3d  3      
  testl %ecx, %esi          #  21    0x66e40  2      
  jne .L_66e20              #  22    0x66e42  6      
  movl $0xffffffc0, %ecx    #  23    0x66e48  5      
  subl %eax, %ecx           #  24    0x66e4d  2      
  cmpl %ecx, %edx           #  25    0x66e4f  2      
  ja .L_66ec0               #  26    0x66e51  6      
  cmpl $0xf, %eax           #  27    0x66e57  3      
  movl $0x10, %ecx          #  28    0x66e5a  5      
  movl %edx, %esi           #  29    0x66e5f  2      
  cmovbel %ecx, %eax        #  30    0x66e61  3      
  nop                       #  31    0x66e64  1      
  movl %eax, %edi           #  32    0x66e65  2      
  nop                       #  33    0x66e67  1      
  nop                       #  34    0x66e68  1      
  callq .T_277              #  35    0x66e69  5      
  movl %eax, %eax           #  36    0x66e6e  2      
  nop                       #  37    0x66e70  1      
  nop                       #  38    0x66e71  1      
.L_66ea0:                   #        0x66e72  0      
  testq %rax, %rax          #  39    0x66e72  3      
  je .L_66ec0               #  40    0x66e75  6      
  movl %ebx, %ebx           #  41    0x66e7b  2      
  movl %eax, (%r15,%rbx,1)  #  42    0x66e7d  4      
  xorl %eax, %eax           #  43    0x66e81  2      
  popq %rbx                 #  44    0x66e83  2      
  popq %r11                 #  45    0x66e85  3      
  andl $0xffffffe0, %r11d   #  46    0x66e88  7      
  addq %r15, %r11           #  47    0x66e8f  3      
  jmpq %r11                 #  48    0x66e92  3      
  nop                       #  49    0x66e95  1      
.L_66ec0:                   #        0x66e96  0      
  popq %rbx                 #  50    0x66e96  2      
  popq %r11                 #  51    0x66e98  3      
  movl $0xc, %eax           #  52    0x66e9b  5      
  andl $0xffffffe0, %r11d   #  53    0x66ea0  7      
  addq %r15, %r11           #  54    0x66ea7  3      
  jmpq %r11                 #  55    0x66eaa  3      
  nop                       #  56    0x66ead  1      
.L_66ee0:                   #        0x66eae  0      
  movl %edx, %edi           #  57    0x66eae  2      
  nop                       #  58    0x66eb0  1      
  nop                       #  59    0x66eb1  1      
  callq .malloc             #  60    0x66eb2  5      
  movl %eax, %eax           #  61    0x66eb7  2      
  jmpq .L_66ea0             #  62    0x66eb9  5      
  nop                       #  63    0x66ebe  1      
  nop                       #  64    0x66ebf  1      
                                                     
.size posix_memalign, .-posix_memalign

