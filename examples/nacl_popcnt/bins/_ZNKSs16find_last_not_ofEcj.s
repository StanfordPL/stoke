  .text
  .globl _ZNKSs16find_last_not_ofEcj
  .type _ZNKSs16find_last_not_ofEcj, @function

#! file-offset 0x44860
#! rip-offset  0x44860
#! capacity    192 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofEcj:  #        0x44860  0      
  movl %edi, %edi              #  1     0x44860  2      
  movl %edi, %edi              #  2     0x44862  2      
  movl (%r15,%rdi,1), %ecx     #  3     0x44864  4      
  leal -0xc(%rcx), %eax        #  4     0x44868  3      
  movl %eax, %eax              #  5     0x4486b  2      
  movl (%r15,%rax,1), %edi     #  6     0x4486d  4      
  testl %edi, %edi             #  7     0x44871  2      
  je .L_448e0                  #  8     0x44873  6      
  leal -0x1(%rdi), %eax        #  9     0x44879  3      
  cmpl %eax, %edx              #  10    0x4487c  2      
  cmovbel %edx, %eax           #  11    0x4487e  3      
  leal (%rax,%rcx,1), %edx     #  12    0x44881  3      
  jmpq .L_448c0                #  13    0x44884  5      
  nop                          #  14    0x44889  1      
  nop                          #  15    0x4488a  1      
.L_448a0:                      #        0x4488b  0      
  subl $0x1, %eax              #  16    0x4488b  3      
  nop                          #  17    0x4488e  1      
  nop                          #  18    0x4488f  1      
.L_448c0:                      #        0x44890  0      
  movl %edx, %ecx              #  19    0x44890  2      
  movl %ecx, %ecx              #  20    0x44892  2      
  cmpb (%r15,%rcx,1), %sil     #  21    0x44894  4      
  jne .L_44900                 #  22    0x44898  6      
  subl $0x1, %edx              #  23    0x4489e  3      
  testl %eax, %eax             #  24    0x448a1  2      
  jne .L_448a0                 #  25    0x448a3  6      
  nop                          #  26    0x448a9  1      
.L_448e0:                      #        0x448aa  0      
  movl $0xffffffff, %eax       #  27    0x448aa  5      
  nop                          #  28    0x448af  1      
  nop                          #  29    0x448b0  1      
.L_44900:                      #        0x448b1  0      
  popq %r11                    #  30    0x448b1  3      
  andl $0xffffffe0, %r11d      #  31    0x448b4  7      
  addq %r15, %r11              #  32    0x448bb  3      
  jmpq %r11                    #  33    0x448be  3      
  nop                          #  34    0x448c1  1      
  nop                          #  35    0x448c2  1      
  nop                          #  36    0x448c3  1      
  nop                          #  37    0x448c4  1      
  nop                          #  38    0x448c5  1      
  nop                          #  39    0x448c6  1      
  nop                          #  40    0x448c7  1      
  nop                          #  41    0x448c8  1      
  nop                          #  42    0x448c9  1      
  nop                          #  43    0x448ca  1      
  nop                          #  44    0x448cb  1      
  nop                          #  45    0x448cc  1      
  nop                          #  46    0x448cd  1      
  nop                          #  47    0x448ce  1      
  nop                          #  48    0x448cf  1      
  nop                          #  49    0x448d0  1      
  nop                          #  50    0x448d1  1      
  nop                          #  51    0x448d2  1      
  nop                          #  52    0x448d3  1      
  nop                          #  53    0x448d4  1      
                                                        
.size _ZNKSs16find_last_not_ofEcj, .-_ZNKSs16find_last_not_ofEcj

