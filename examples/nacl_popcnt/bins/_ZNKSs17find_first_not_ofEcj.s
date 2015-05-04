  .text
  .globl _ZNKSs17find_first_not_ofEcj
  .type _ZNKSs17find_first_not_ofEcj, @function

#! file-offset 0x44780
#! rip-offset  0x44780
#! capacity    224 bytes

# Text                          #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofEcj:  #        0x44780  0      
  movl %edi, %edi               #  1     0x44780  2      
  movl %edx, %eax               #  2     0x44782  2      
  movl %edi, %edi               #  3     0x44784  2      
  movl (%r15,%rdi,1), %edx      #  4     0x44786  4      
  leal -0xc(%rdx), %ecx         #  5     0x4478a  3      
  movl %ecx, %ecx               #  6     0x4478d  2      
  movl (%r15,%rcx,1), %edi      #  7     0x4478f  4      
  cmpl %edi, %eax               #  8     0x44793  2      
  jae .L_44800                  #  9     0x44795  6      
  leal (%rax,%rdx,1), %ecx      #  10    0x4479b  3      
  movl %ecx, %ecx               #  11    0x4479e  2      
  cmpb (%r15,%rcx,1), %sil      #  12    0x447a0  4      
  movl %ecx, %edx               #  13    0x447a4  2      
  je .L_447e0                   #  14    0x447a6  6      
  jmpq .L_44840                 #  15    0x447ac  5      
  nop                           #  16    0x447b1  1      
  nop                           #  17    0x447b2  1      
.L_447c0:                       #        0x447b3  0      
  movl %edx, %ecx               #  18    0x447b3  2      
  addl $0x1, %edx               #  19    0x447b5  3      
  movl %ecx, %ecx               #  20    0x447b8  2      
  cmpb 0x1(%r15,%rcx,1), %sil   #  21    0x447ba  5      
  jne .L_44820                  #  22    0x447bf  6      
  nop                           #  23    0x447c5  1      
  nop                           #  24    0x447c6  1      
.L_447e0:                       #        0x447c7  0      
  addl $0x1, %eax               #  25    0x447c7  3      
  cmpl %edi, %eax               #  26    0x447ca  2      
  jb .L_447c0                   #  27    0x447cc  6      
  nop                           #  28    0x447d2  1      
  nop                           #  29    0x447d3  1      
.L_44800:                       #        0x447d4  0      
  movl $0xffffffff, %eax        #  30    0x447d4  5      
  nop                           #  31    0x447d9  1      
  nop                           #  32    0x447da  1      
.L_44820:                       #        0x447db  0      
  popq %r11                     #  33    0x447db  3      
  andl $0xffffffe0, %r11d       #  34    0x447de  7      
  addq %r15, %r11               #  35    0x447e5  3      
  jmpq %r11                     #  36    0x447e8  3      
  nop                           #  37    0x447eb  1      
  nop                           #  38    0x447ec  1      
.L_44840:                       #        0x447ed  0      
  popq %r11                     #  39    0x447ed  3      
  andl $0xffffffe0, %r11d       #  40    0x447f0  7      
  addq %r15, %r11               #  41    0x447f7  3      
  jmpq %r11                     #  42    0x447fa  3      
  nop                           #  43    0x447fd  1      
  nop                           #  44    0x447fe  1      
  nop                           #  45    0x447ff  1      
  nop                           #  46    0x44800  1      
  nop                           #  47    0x44801  1      
  nop                           #  48    0x44802  1      
  nop                           #  49    0x44803  1      
  nop                           #  50    0x44804  1      
  nop                           #  51    0x44805  1      
  nop                           #  52    0x44806  1      
  nop                           #  53    0x44807  1      
  nop                           #  54    0x44808  1      
  nop                           #  55    0x44809  1      
  nop                           #  56    0x4480a  1      
  nop                           #  57    0x4480b  1      
  nop                           #  58    0x4480c  1      
  nop                           #  59    0x4480d  1      
  nop                           #  60    0x4480e  1      
  nop                           #  61    0x4480f  1      
  nop                           #  62    0x44810  1      
                                                         
.size _ZNKSs17find_first_not_ofEcj, .-_ZNKSs17find_first_not_ofEcj

