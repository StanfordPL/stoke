  .text
  .globl __cxa_free_dependent_exception
  .type __cxa_free_dependent_exception, @function

#! file-offset 0x4bf40
#! rip-offset  0x4bf40
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
.__cxa_free_dependent_exception:  #        0x4bf40  0      
  movl %edi, %edi                 #  1     0x4bf40  2      
  movl $0x10031e00, %edx          #  2     0x4bf42  5      
  cmpl %edi, %edx                 #  3     0x4bf47  2      
  ja .L_4bf60                     #  4     0x4bf49  6      
  leal 0xa00(%rdx), %eax          #  5     0x4bf4f  6      
  cmpl %edi, %eax                 #  6     0x4bf55  2      
  ja .L_4bf80                     #  7     0x4bf57  6      
  nop                             #  8     0x4bf5d  1      
.L_4bf60:                         #        0x4bf5e  0      
  jmpq .free                      #  9     0x4bf5e  5      
  nop                             #  10    0x4bf63  1      
  nop                             #  11    0x4bf64  1      
.L_4bf80:                         #        0x4bf65  0      
  subl %edx, %edi                 #  12    0x4bf65  2      
  movl $0xcccccccd, %ecx          #  13    0x4bf67  5      
  movl $0xfffffffe, %esi          #  14    0x4bf6c  5      
  movl %edi, %eax                 #  15    0x4bf71  2      
  mull %ecx                       #  16    0x4bf73  2      
  popq %r11                       #  17    0x4bf75  3      
  shrl $0x6, %edx                 #  18    0x4bf78  3      
  movl %edx, %ecx                 #  19    0x4bf7b  2      
  roll %cl, %esi                  #  20    0x4bf7d  2      
  andl %esi, 0xffe687b(%rip)      #  21    0x4bf7f  6      
  nop                             #  22    0x4bf85  1      
  andl $0xffffffe0, %r11d         #  23    0x4bf86  7      
  addq %r15, %r11                 #  24    0x4bf8d  3      
  jmpq %r11                       #  25    0x4bf90  3      
  nop                             #  26    0x4bf93  1      
  nop                             #  27    0x4bf94  1      
  nop                             #  28    0x4bf95  1      
  nop                             #  29    0x4bf96  1      
  nop                             #  30    0x4bf97  1      
  nop                             #  31    0x4bf98  1      
  nop                             #  32    0x4bf99  1      
  nop                             #  33    0x4bf9a  1      
  nop                             #  34    0x4bf9b  1      
  nop                             #  35    0x4bf9c  1      
  nop                             #  36    0x4bf9d  1      
  nop                             #  37    0x4bf9e  1      
  nop                             #  38    0x4bf9f  1      
  nop                             #  39    0x4bfa0  1      
  nop                             #  40    0x4bfa1  1      
  nop                             #  41    0x4bfa2  1      
  nop                             #  42    0x4bfa3  1      
  nop                             #  43    0x4bfa4  1      
  nop                             #  44    0x4bfa5  1      
  nop                             #  45    0x4bfa6  1      
  nop                             #  46    0x4bfa7  1      
  nop                             #  47    0x4bfa8  1      
                                                           
.size __cxa_free_dependent_exception, .-__cxa_free_dependent_exception

