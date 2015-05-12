  .text
  .globl _ZNKSs17find_first_not_ofEcj
  .type _ZNKSs17find_first_not_ofEcj, @function

#! file-offset 0x44700
#! rip-offset  0x44700
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofEcj:  #        0x44700  0      
  movl %edi, %edi               #  1     0x44700  2      
  movl %edx, %eax               #  2     0x44702  2      
  movl %edi, %edi               #  3     0x44704  2      
  movl (%r15,%rdi,1), %edx      #  4     0x44706  4      
  leal -0xc(%rdx), %ecx         #  5     0x4470a  3      
  movl %ecx, %ecx               #  6     0x4470d  2      
  movl (%r15,%rcx,1), %edi      #  7     0x4470f  4      
  cmpl %edi, %eax               #  8     0x44713  2      
  jae .L_44780                  #  9     0x44715  6      
  leal (%rax,%rdx,1), %ecx      #  10    0x4471b  3      
  movl %ecx, %ecx               #  11    0x4471e  2      
  cmpb (%r15,%rcx,1), %sil      #  12    0x44720  4      
  movl %ecx, %edx               #  13    0x44724  2      
  je .L_44760                   #  14    0x44726  6      
  jmpq .L_447c0                 #  15    0x4472c  5      
  nop                           #  16    0x44731  1      
  nop                           #  17    0x44732  1      
.L_44740:                       #        0x44733  0      
  movl %edx, %ecx               #  18    0x44733  2      
  addl $0x1, %edx               #  19    0x44735  3      
  movl %ecx, %ecx               #  20    0x44738  2      
  cmpb 0x1(%r15,%rcx,1), %sil   #  21    0x4473a  5      
  jne .L_447a0                  #  22    0x4473f  6      
  nop                           #  23    0x44745  1      
  nop                           #  24    0x44746  1      
.L_44760:                       #        0x44747  0      
  addl $0x1, %eax               #  25    0x44747  3      
  cmpl %edi, %eax               #  26    0x4474a  2      
  jb .L_44740                   #  27    0x4474c  6      
  nop                           #  28    0x44752  1      
  nop                           #  29    0x44753  1      
.L_44780:                       #        0x44754  0      
  movl $0xffffffff, %eax        #  30    0x44754  5      
  nop                           #  31    0x44759  1      
  nop                           #  32    0x4475a  1      
.L_447a0:                       #        0x4475b  0      
  popq %r11                     #  33    0x4475b  3      
  andl $0xffffffe0, %r11d       #  34    0x4475e  7      
  addq %r15, %r11               #  35    0x44765  3      
  jmpq %r11                     #  36    0x44768  3      
  nop                           #  37    0x4476b  1      
  nop                           #  38    0x4476c  1      
.L_447c0:                       #        0x4476d  0      
  popq %r11                     #  39    0x4476d  3      
  andl $0xffffffe0, %r11d       #  40    0x44770  7      
  addq %r15, %r11               #  41    0x44777  3      
  jmpq %r11                     #  42    0x4477a  3      
  nop                           #  43    0x4477d  1      
  nop                           #  44    0x4477e  1      
  nop                           #  45    0x4477f  1      
  nop                           #  46    0x44780  1      
  nop                           #  47    0x44781  1      
  nop                           #  48    0x44782  1      
  nop                           #  49    0x44783  1      
  nop                           #  50    0x44784  1      
  nop                           #  51    0x44785  1      
  nop                           #  52    0x44786  1      
  nop                           #  53    0x44787  1      
  nop                           #  54    0x44788  1      
  nop                           #  55    0x44789  1      
  nop                           #  56    0x4478a  1      
  nop                           #  57    0x4478b  1      
  nop                           #  58    0x4478c  1      
  nop                           #  59    0x4478d  1      
  nop                           #  60    0x4478e  1      
  nop                           #  61    0x4478f  1      
  nop                           #  62    0x44790  1      
                                                         
.size _ZNKSs17find_first_not_ofEcj, .-_ZNKSs17find_first_not_ofEcj

