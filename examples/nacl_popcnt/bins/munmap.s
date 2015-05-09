  .text
  .globl munmap
  .type munmap, @function

#! file-offset 0x67a60
#! rip-offset  0x67a60
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.munmap:                      #        0x67a60  0      
  movl 0xffcf406(%rip), %eax  #  1     0x67a60  6      
  pushq %rbx                  #  2     0x67a66  2      
  movl %edi, %edi             #  3     0x67a68  2      
  nop                         #  4     0x67a6a  1      
  andl $0xffffffe0, %eax      #  5     0x67a6b  5      
  addq %r15, %rax             #  6     0x67a70  3      
  callq %rax                  #  7     0x67a73  2      
  testl %eax, %eax            #  8     0x67a75  2      
  movl %eax, %ebx             #  9     0x67a77  2      
  jne .L_67ac0                #  10    0x67a79  6      
  xorl %eax, %eax             #  11    0x67a7f  2      
  nop                         #  12    0x67a81  1      
  nop                         #  13    0x67a82  1      
.L_67aa0:                     #        0x67a83  0      
  popq %rbx                   #  14    0x67a83  2      
  popq %r11                   #  15    0x67a85  3      
  andl $0xffffffe0, %r11d     #  16    0x67a88  7      
  addq %r15, %r11             #  17    0x67a8f  3      
  jmpq %r11                   #  18    0x67a92  3      
  nop                         #  19    0x67a95  1      
  nop                         #  20    0x67a96  1      
.L_67ac0:                     #        0x67a97  0      
  nop                         #  21    0x67a97  1      
  nop                         #  22    0x67a98  1      
  callq .__errno              #  23    0x67a99  5      
  movl %eax, %eax             #  24    0x67a9e  2      
  movl %eax, %eax             #  25    0x67aa0  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x67aa2  4      
  movl $0xffffffff, %eax      #  27    0x67aa6  5      
  jmpq .L_67aa0               #  28    0x67aab  5      
  nop                         #  29    0x67ab0  1      
  nop                         #  30    0x67ab1  1      
  nop                         #  31    0x67ab2  1      
  nop                         #  32    0x67ab3  1      
  nop                         #  33    0x67ab4  1      
  nop                         #  34    0x67ab5  1      
  nop                         #  35    0x67ab6  1      
  nop                         #  36    0x67ab7  1      
  nop                         #  37    0x67ab8  1      
  nop                         #  38    0x67ab9  1      
  nop                         #  39    0x67aba  1      
  nop                         #  40    0x67abb  1      
  nop                         #  41    0x67abc  1      
  nop                         #  42    0x67abd  1      
  nop                         #  43    0x67abe  1      
  nop                         #  44    0x67abf  1      
  nop                         #  45    0x67ac0  1      
                                                       
.size munmap, .-munmap

