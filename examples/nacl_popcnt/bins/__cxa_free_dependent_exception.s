  .text
  .globl __cxa_free_dependent_exception
  .type __cxa_free_dependent_exception, @function

#! file-offset 0x4bf20
#! rip-offset  0x4bf20
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_free_dependent_exception:  #        0x4bf20  0      
  movl %edi, %edi                 #  1     0x4bf20  2      
  movl $0x10031e00, %edx          #  2     0x4bf22  5      
  cmpl %edi, %edx                 #  3     0x4bf27  2      
  ja .L_4bf40                     #  4     0x4bf29  6      
  leal 0xa00(%rdx), %eax          #  5     0x4bf2f  6      
  cmpl %edi, %eax                 #  6     0x4bf35  2      
  ja .L_4bf60                     #  7     0x4bf37  6      
  nop                             #  8     0x4bf3d  1      
.L_4bf40:                         #        0x4bf3e  0      
  jmpq .free                      #  9     0x4bf3e  5      
  nop                             #  10    0x4bf43  1      
  nop                             #  11    0x4bf44  1      
.L_4bf60:                         #        0x4bf45  0      
  subl %edx, %edi                 #  12    0x4bf45  2      
  movl $0xcccccccd, %ecx          #  13    0x4bf47  5      
  movl $0xfffffffe, %esi          #  14    0x4bf4c  5      
  movl %edi, %eax                 #  15    0x4bf51  2      
  mull %ecx                       #  16    0x4bf53  2      
  popq %r11                       #  17    0x4bf55  3      
  shrl $0x6, %edx                 #  18    0x4bf58  3      
  movl %edx, %ecx                 #  19    0x4bf5b  2      
  roll %cl, %esi                  #  20    0x4bf5d  2      
  andl %esi, 0xffe689b(%rip)      #  21    0x4bf5f  6      
  nop                             #  22    0x4bf65  1      
  andl $0xffffffe0, %r11d         #  23    0x4bf66  7      
  addq %r15, %r11                 #  24    0x4bf6d  3      
  jmpq %r11                       #  25    0x4bf70  3      
  nop                             #  26    0x4bf73  1      
  nop                             #  27    0x4bf74  1      
  nop                             #  28    0x4bf75  1      
  nop                             #  29    0x4bf76  1      
  nop                             #  30    0x4bf77  1      
  nop                             #  31    0x4bf78  1      
  nop                             #  32    0x4bf79  1      
  nop                             #  33    0x4bf7a  1      
  nop                             #  34    0x4bf7b  1      
  nop                             #  35    0x4bf7c  1      
  nop                             #  36    0x4bf7d  1      
  nop                             #  37    0x4bf7e  1      
  nop                             #  38    0x4bf7f  1      
  nop                             #  39    0x4bf80  1      
  nop                             #  40    0x4bf81  1      
  nop                             #  41    0x4bf82  1      
  nop                             #  42    0x4bf83  1      
  nop                             #  43    0x4bf84  1      
  nop                             #  44    0x4bf85  1      
  nop                             #  45    0x4bf86  1      
  nop                             #  46    0x4bf87  1      
  nop                             #  47    0x4bf88  1      
                                                           
.size __cxa_free_dependent_exception, .-__cxa_free_dependent_exception

