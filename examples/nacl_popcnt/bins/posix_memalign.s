  .text
  .globl posix_memalign
  .type posix_memalign, @function

#! file-offset 0x66e80
#! rip-offset  0x66e80
#! capacity    288 bytes

# Text                      #  Line  RIP      Bytes  
.posix_memalign:            #        0x66e80  0      
  cmpl $0x8, %esi           #  1     0x66e80  3      
  pushq %rbx                #  2     0x66e83  2      
  movl %esi, %eax           #  3     0x66e85  2      
  movl %edi, %ebx           #  4     0x66e87  2      
  je .L_66f60               #  5     0x66e89  6      
  movl %esi, %ecx           #  6     0x66e8f  2      
  shrl $0x2, %ecx           #  7     0x66e91  3      
  testl %ecx, %ecx          #  8     0x66e94  2      
  je .L_66ea0               #  9     0x66e96  6      
  testb $0x3, %al           #  10    0x66e9c  2      
  je .L_66ec0               #  11    0x66e9e  6      
  nop                       #  12    0x66ea4  1      
.L_66ea0:                   #        0x66ea5  0      
  popq %rbx                 #  13    0x66ea5  2      
  popq %r11                 #  14    0x66ea7  3      
  movl $0x16, %eax          #  15    0x66eaa  5      
  andl $0xffffffe0, %r11d   #  16    0x66eaf  7      
  addq %r15, %r11           #  17    0x66eb6  3      
  jmpq %r11                 #  18    0x66eb9  3      
  nop                       #  19    0x66ebc  1      
.L_66ec0:                   #        0x66ebd  0      
  leal -0x1(%rcx), %esi     #  20    0x66ebd  3      
  testl %ecx, %esi          #  21    0x66ec0  2      
  jne .L_66ea0              #  22    0x66ec2  6      
  movl $0xffffffc0, %ecx    #  23    0x66ec8  5      
  subl %eax, %ecx           #  24    0x66ecd  2      
  cmpl %ecx, %edx           #  25    0x66ecf  2      
  ja .L_66f40               #  26    0x66ed1  6      
  cmpl $0xf, %eax           #  27    0x66ed7  3      
  movl $0x10, %ecx          #  28    0x66eda  5      
  movl %edx, %esi           #  29    0x66edf  2      
  cmovbel %ecx, %eax        #  30    0x66ee1  3      
  nop                       #  31    0x66ee4  1      
  movl %eax, %edi           #  32    0x66ee5  2      
  nop                       #  33    0x66ee7  1      
  nop                       #  34    0x66ee8  1      
  callq .T_277              #  35    0x66ee9  5      
  movl %eax, %eax           #  36    0x66eee  2      
  nop                       #  37    0x66ef0  1      
  nop                       #  38    0x66ef1  1      
.L_66f20:                   #        0x66ef2  0      
  testq %rax, %rax          #  39    0x66ef2  3      
  je .L_66f40               #  40    0x66ef5  6      
  movl %ebx, %ebx           #  41    0x66efb  2      
  movl %eax, (%r15,%rbx,1)  #  42    0x66efd  4      
  xorl %eax, %eax           #  43    0x66f01  2      
  popq %rbx                 #  44    0x66f03  2      
  popq %r11                 #  45    0x66f05  3      
  andl $0xffffffe0, %r11d   #  46    0x66f08  7      
  addq %r15, %r11           #  47    0x66f0f  3      
  jmpq %r11                 #  48    0x66f12  3      
  nop                       #  49    0x66f15  1      
.L_66f40:                   #        0x66f16  0      
  popq %rbx                 #  50    0x66f16  2      
  popq %r11                 #  51    0x66f18  3      
  movl $0xc, %eax           #  52    0x66f1b  5      
  andl $0xffffffe0, %r11d   #  53    0x66f20  7      
  addq %r15, %r11           #  54    0x66f27  3      
  jmpq %r11                 #  55    0x66f2a  3      
  nop                       #  56    0x66f2d  1      
.L_66f60:                   #        0x66f2e  0      
  movl %edx, %edi           #  57    0x66f2e  2      
  nop                       #  58    0x66f30  1      
  nop                       #  59    0x66f31  1      
  callq .malloc             #  60    0x66f32  5      
  movl %eax, %eax           #  61    0x66f37  2      
  jmpq .L_66f20             #  62    0x66f39  5      
  nop                       #  63    0x66f3e  1      
  nop                       #  64    0x66f3f  1      
                                                     
.size posix_memalign, .-posix_memalign

