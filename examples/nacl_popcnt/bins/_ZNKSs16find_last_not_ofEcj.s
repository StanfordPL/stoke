  .text
  .globl _ZNKSs16find_last_not_ofEcj
  .type _ZNKSs16find_last_not_ofEcj, @function

#! file-offset 0x447c0
#! rip-offset  0x447c0
#! capacity    192 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofEcj:  #        0x447c0  0      
  movl %edi, %edi              #  1     0x447c0  2      
  movl %edi, %edi              #  2     0x447c2  2      
  movl (%r15,%rdi,1), %ecx     #  3     0x447c4  4      
  leal -0xc(%rcx), %eax        #  4     0x447c8  3      
  movl %eax, %eax              #  5     0x447cb  2      
  movl (%r15,%rax,1), %edi     #  6     0x447cd  4      
  testl %edi, %edi             #  7     0x447d1  2      
  je .L_44840                  #  8     0x447d3  6      
  leal -0x1(%rdi), %eax        #  9     0x447d9  3      
  cmpl %eax, %edx              #  10    0x447dc  2      
  cmovbel %edx, %eax           #  11    0x447de  3      
  leal (%rax,%rcx,1), %edx     #  12    0x447e1  3      
  jmpq .L_44820                #  13    0x447e4  5      
  nop                          #  14    0x447e9  1      
  nop                          #  15    0x447ea  1      
.L_44800:                      #        0x447eb  0      
  subl $0x1, %eax              #  16    0x447eb  3      
  nop                          #  17    0x447ee  1      
  nop                          #  18    0x447ef  1      
.L_44820:                      #        0x447f0  0      
  movl %edx, %ecx              #  19    0x447f0  2      
  movl %ecx, %ecx              #  20    0x447f2  2      
  cmpb (%r15,%rcx,1), %sil     #  21    0x447f4  4      
  jne .L_44860                 #  22    0x447f8  6      
  subl $0x1, %edx              #  23    0x447fe  3      
  testl %eax, %eax             #  24    0x44801  2      
  jne .L_44800                 #  25    0x44803  6      
  nop                          #  26    0x44809  1      
.L_44840:                      #        0x4480a  0      
  movl $0xffffffff, %eax       #  27    0x4480a  5      
  nop                          #  28    0x4480f  1      
  nop                          #  29    0x44810  1      
.L_44860:                      #        0x44811  0      
  popq %r11                    #  30    0x44811  3      
  andl $0xffffffe0, %r11d      #  31    0x44814  7      
  addq %r15, %r11              #  32    0x4481b  3      
  jmpq %r11                    #  33    0x4481e  3      
  nop                          #  34    0x44821  1      
  nop                          #  35    0x44822  1      
  nop                          #  36    0x44823  1      
  nop                          #  37    0x44824  1      
  nop                          #  38    0x44825  1      
  nop                          #  39    0x44826  1      
  nop                          #  40    0x44827  1      
  nop                          #  41    0x44828  1      
  nop                          #  42    0x44829  1      
  nop                          #  43    0x4482a  1      
  nop                          #  44    0x4482b  1      
  nop                          #  45    0x4482c  1      
  nop                          #  46    0x4482d  1      
  nop                          #  47    0x4482e  1      
  nop                          #  48    0x4482f  1      
  nop                          #  49    0x44830  1      
  nop                          #  50    0x44831  1      
  nop                          #  51    0x44832  1      
  nop                          #  52    0x44833  1      
  nop                          #  53    0x44834  1      
                                                        
.size _ZNKSs16find_last_not_ofEcj, .-_ZNKSs16find_last_not_ofEcj

