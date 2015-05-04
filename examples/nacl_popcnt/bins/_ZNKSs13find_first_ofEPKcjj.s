  .text
  .globl _ZNKSs13find_first_ofEPKcjj
  .type _ZNKSs13find_first_ofEPKcjj, @function

#! file-offset 0x453a0
#! rip-offset  0x453a0
#! capacity    192 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs13find_first_ofEPKcjj:  #        0x453a0  0      
  pushq %r14                   #  1     0x453a0  3      
  movl %esi, %esi              #  2     0x453a3  2      
  movl %ecx, %r14d             #  3     0x453a5  3      
  movl %edi, %edi              #  4     0x453a8  2      
  pushq %r13                   #  5     0x453aa  3      
  pushq %r12                   #  6     0x453ad  3      
  pushq %rbx                   #  7     0x453b0  2      
  movl %edx, %ebx              #  8     0x453b2  2      
  subl $0x18, %esp             #  9     0x453b4  3      
  addq %r15, %rsp              #  10    0x453b7  3      
  testl %ecx, %ecx             #  11    0x453ba  2      
  movq %rsi, 0x8(%rsp)         #  12    0x453bc  5      
  nop                          #  13    0x453c1  1      
  je .L_45420                  #  14    0x453c2  6      
  movl %edi, %edi              #  15    0x453c8  2      
  movl (%r15,%rdi,1), %r12d    #  16    0x453ca  4      
  leal -0xc(%r12), %eax        #  17    0x453ce  5      
  leal (%rbx,%r12,1), %r12d    #  18    0x453d3  4      
  movl %eax, %eax              #  19    0x453d7  2      
  movl (%r15,%rax,1), %r13d    #  20    0x453d9  4      
  cmpl %r13d, %edx             #  21    0x453dd  3      
  jae .L_45420                 #  22    0x453e0  6      
  nop                          #  23    0x453e6  1      
.L_453e0:                      #        0x453e7  0      
  movl %r12d, %eax             #  24    0x453e7  3      
  movl 0x8(%rsp), %edi         #  25    0x453ea  4      
  movl %r14d, %edx             #  26    0x453ee  3      
  movl %eax, %eax              #  27    0x453f1  2      
  movsbl (%r15,%rax,1), %esi   #  28    0x453f3  5      
  nop                          #  29    0x453f8  1      
  callq .memchr                #  30    0x453f9  5      
  testl %eax, %eax             #  31    0x453fe  2      
  jne .L_45440                 #  32    0x45400  6      
  addl $0x1, %ebx              #  33    0x45406  3      
  addl $0x1, %r12d             #  34    0x45409  4      
  cmpl %r13d, %ebx             #  35    0x4540d  3      
  jb .L_453e0                  #  36    0x45410  6      
  nop                          #  37    0x45416  1      
  nop                          #  38    0x45417  1      
.L_45420:                      #        0x45418  0      
  movl $0xffffffff, %ebx       #  39    0x45418  5      
  nop                          #  40    0x4541d  1      
  nop                          #  41    0x4541e  1      
.L_45440:                      #        0x4541f  0      
  addl $0x18, %esp             #  42    0x4541f  3      
  addq %r15, %rsp              #  43    0x45422  3      
  movl %ebx, %eax              #  44    0x45425  2      
  popq %rbx                    #  45    0x45427  2      
  popq %r12                    #  46    0x45429  3      
  popq %r13                    #  47    0x4542c  3      
  popq %r14                    #  48    0x4542f  3      
  popq %r11                    #  49    0x45432  3      
  andl $0xffffffe0, %r11d      #  50    0x45435  7      
  addq %r15, %r11              #  51    0x4543c  3      
  jmpq %r11                    #  52    0x4543f  3      
  nop                          #  53    0x45442  1      
  nop                          #  54    0x45443  1      
  nop                          #  55    0x45444  1      
  nop                          #  56    0x45445  1      
  nop                          #  57    0x45446  1      
                                                        
.size _ZNKSs13find_first_ofEPKcjj, .-_ZNKSs13find_first_ofEPKcjj

