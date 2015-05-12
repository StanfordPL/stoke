  .text
  .globl _ZNSs4_Rep10_M_disposeERKSaIcE
  .type _ZNSs4_Rep10_M_disposeERKSaIcE, @function

#! file-offset 0x44aa0
#! rip-offset  0x44aa0
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  
._ZNSs4_Rep10_M_disposeERKSaIcE:        #        0x44aa0  0      
  movl %edi, %edi                       #  1     0x44aa0  2      
  movl %esi, %esi                       #  2     0x44aa2  2      
  cmpl $0x10031da0, %edi                #  3     0x44aa4  6      
  jne .L_44ae0                          #  4     0x44aaa  6      
  nop                                   #  5     0x44ab0  1      
  nop                                   #  6     0x44ab1  1      
.L_44ac0:                               #        0x44ab2  0      
  popq %r11                             #  7     0x44ab2  3      
  andl $0xffffffe0, %r11d               #  8     0x44ab5  7      
  addq %r15, %r11                       #  9     0x44abc  3      
  jmpq %r11                             #  10    0x44abf  3      
  nop                                   #  11    0x44ac2  1      
  nop                                   #  12    0x44ac3  1      
.L_44ae0:                               #        0x44ac4  0      
  movl %edi, %edi                       #  13    0x44ac4  2      
  movl 0x8(%r15,%rdi,1), %eax           #  14    0x44ac6  5      
  leal -0x1(%rax), %edx                 #  15    0x44acb  3      
  testl %eax, %eax                      #  16    0x44ace  2      
  movl %edi, %edi                       #  17    0x44ad0  2      
  movl %edx, 0x8(%r15,%rdi,1)           #  18    0x44ad2  5      
  jg .L_44ac0                           #  19    0x44ad7  6      
  jmpq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  20    0x44add  5      
  nop                                   #  21    0x44ae2  1      
  nop                                   #  22    0x44ae3  1      
  nop                                   #  23    0x44ae4  1      
  nop                                   #  24    0x44ae5  1      
  nop                                   #  25    0x44ae6  1      
  nop                                   #  26    0x44ae7  1      
                                                                 
.size _ZNSs4_Rep10_M_disposeERKSaIcE, .-_ZNSs4_Rep10_M_disposeERKSaIcE

