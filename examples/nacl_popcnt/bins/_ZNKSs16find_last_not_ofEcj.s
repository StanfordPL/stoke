  .text
  .globl _ZNKSs16find_last_not_ofEcj
  .type _ZNKSs16find_last_not_ofEcj, @function

#! file-offset 0x447e0
#! rip-offset  0x447e0
#! capacity    192 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofEcj:  #        0x447e0  0      
  movl %edi, %edi              #  1     0x447e0  2      
  movl %edi, %edi              #  2     0x447e2  2      
  movl (%r15,%rdi,1), %ecx     #  3     0x447e4  4      
  leal -0xc(%rcx), %eax        #  4     0x447e8  3      
  movl %eax, %eax              #  5     0x447eb  2      
  movl (%r15,%rax,1), %edi     #  6     0x447ed  4      
  testl %edi, %edi             #  7     0x447f1  2      
  je .L_44860                  #  8     0x447f3  6      
  leal -0x1(%rdi), %eax        #  9     0x447f9  3      
  cmpl %eax, %edx              #  10    0x447fc  2      
  cmovbel %edx, %eax           #  11    0x447fe  3      
  leal (%rax,%rcx,1), %edx     #  12    0x44801  3      
  jmpq .L_44840                #  13    0x44804  5      
  nop                          #  14    0x44809  1      
  nop                          #  15    0x4480a  1      
.L_44820:                      #        0x4480b  0      
  subl $0x1, %eax              #  16    0x4480b  3      
  nop                          #  17    0x4480e  1      
  nop                          #  18    0x4480f  1      
.L_44840:                      #        0x44810  0      
  movl %edx, %ecx              #  19    0x44810  2      
  movl %ecx, %ecx              #  20    0x44812  2      
  cmpb (%r15,%rcx,1), %sil     #  21    0x44814  4      
  jne .L_44880                 #  22    0x44818  6      
  subl $0x1, %edx              #  23    0x4481e  3      
  testl %eax, %eax             #  24    0x44821  2      
  jne .L_44820                 #  25    0x44823  6      
  nop                          #  26    0x44829  1      
.L_44860:                      #        0x4482a  0      
  movl $0xffffffff, %eax       #  27    0x4482a  5      
  nop                          #  28    0x4482f  1      
  nop                          #  29    0x44830  1      
.L_44880:                      #        0x44831  0      
  popq %r11                    #  30    0x44831  3      
  andl $0xffffffe0, %r11d      #  31    0x44834  7      
  addq %r15, %r11              #  32    0x4483b  3      
  jmpq %r11                    #  33    0x4483e  3      
  nop                          #  34    0x44841  1      
  nop                          #  35    0x44842  1      
  nop                          #  36    0x44843  1      
  nop                          #  37    0x44844  1      
  nop                          #  38    0x44845  1      
  nop                          #  39    0x44846  1      
  nop                          #  40    0x44847  1      
  nop                          #  41    0x44848  1      
  nop                          #  42    0x44849  1      
  nop                          #  43    0x4484a  1      
  nop                          #  44    0x4484b  1      
  nop                          #  45    0x4484c  1      
  nop                          #  46    0x4484d  1      
  nop                          #  47    0x4484e  1      
  nop                          #  48    0x4484f  1      
  nop                          #  49    0x44850  1      
  nop                          #  50    0x44851  1      
  nop                          #  51    0x44852  1      
  nop                          #  52    0x44853  1      
  nop                          #  53    0x44854  1      
                                                        
.size _ZNKSs16find_last_not_ofEcj, .-_ZNKSs16find_last_not_ofEcj

