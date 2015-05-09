  .text
  .globl _ZNKSs17find_first_not_ofEcj
  .type _ZNKSs17find_first_not_ofEcj, @function

#! file-offset 0x446e0
#! rip-offset  0x446e0
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofEcj:  #        0x446e0  0      
  movl %edi, %edi               #  1     0x446e0  2      
  movl %edx, %eax               #  2     0x446e2  2      
  movl %edi, %edi               #  3     0x446e4  2      
  movl (%r15,%rdi,1), %edx      #  4     0x446e6  4      
  leal -0xc(%rdx), %ecx         #  5     0x446ea  3      
  movl %ecx, %ecx               #  6     0x446ed  2      
  movl (%r15,%rcx,1), %edi      #  7     0x446ef  4      
  cmpl %edi, %eax               #  8     0x446f3  2      
  jae .L_44760                  #  9     0x446f5  6      
  leal (%rax,%rdx,1), %ecx      #  10    0x446fb  3      
  movl %ecx, %ecx               #  11    0x446fe  2      
  cmpb (%r15,%rcx,1), %sil      #  12    0x44700  4      
  movl %ecx, %edx               #  13    0x44704  2      
  je .L_44740                   #  14    0x44706  6      
  jmpq .L_447a0                 #  15    0x4470c  5      
  nop                           #  16    0x44711  1      
  nop                           #  17    0x44712  1      
.L_44720:                       #        0x44713  0      
  movl %edx, %ecx               #  18    0x44713  2      
  addl $0x1, %edx               #  19    0x44715  3      
  movl %ecx, %ecx               #  20    0x44718  2      
  cmpb 0x1(%r15,%rcx,1), %sil   #  21    0x4471a  5      
  jne .L_44780                  #  22    0x4471f  6      
  nop                           #  23    0x44725  1      
  nop                           #  24    0x44726  1      
.L_44740:                       #        0x44727  0      
  addl $0x1, %eax               #  25    0x44727  3      
  cmpl %edi, %eax               #  26    0x4472a  2      
  jb .L_44720                   #  27    0x4472c  6      
  nop                           #  28    0x44732  1      
  nop                           #  29    0x44733  1      
.L_44760:                       #        0x44734  0      
  movl $0xffffffff, %eax        #  30    0x44734  5      
  nop                           #  31    0x44739  1      
  nop                           #  32    0x4473a  1      
.L_44780:                       #        0x4473b  0      
  popq %r11                     #  33    0x4473b  3      
  andl $0xffffffe0, %r11d       #  34    0x4473e  7      
  addq %r15, %r11               #  35    0x44745  3      
  jmpq %r11                     #  36    0x44748  3      
  nop                           #  37    0x4474b  1      
  nop                           #  38    0x4474c  1      
.L_447a0:                       #        0x4474d  0      
  popq %r11                     #  39    0x4474d  3      
  andl $0xffffffe0, %r11d       #  40    0x44750  7      
  addq %r15, %r11               #  41    0x44757  3      
  jmpq %r11                     #  42    0x4475a  3      
  nop                           #  43    0x4475d  1      
  nop                           #  44    0x4475e  1      
  nop                           #  45    0x4475f  1      
  nop                           #  46    0x44760  1      
  nop                           #  47    0x44761  1      
  nop                           #  48    0x44762  1      
  nop                           #  49    0x44763  1      
  nop                           #  50    0x44764  1      
  nop                           #  51    0x44765  1      
  nop                           #  52    0x44766  1      
  nop                           #  53    0x44767  1      
  nop                           #  54    0x44768  1      
  nop                           #  55    0x44769  1      
  nop                           #  56    0x4476a  1      
  nop                           #  57    0x4476b  1      
  nop                           #  58    0x4476c  1      
  nop                           #  59    0x4476d  1      
  nop                           #  60    0x4476e  1      
  nop                           #  61    0x4476f  1      
  nop                           #  62    0x44770  1      
                                                         
.size _ZNKSs17find_first_not_ofEcj, .-_ZNKSs17find_first_not_ofEcj

