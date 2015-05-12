  .text
  .globl munmap
  .type munmap, @function

#! file-offset 0x67a80
#! rip-offset  0x67a80
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.munmap:                      #        0x67a80  0      
  movl 0xffcf3e6(%rip), %eax  #  1     0x67a80  6      
  pushq %rbx                  #  2     0x67a86  2      
  movl %edi, %edi             #  3     0x67a88  2      
  nop                         #  4     0x67a8a  1      
  andl $0xffffffe0, %eax      #  5     0x67a8b  5      
  addq %r15, %rax             #  6     0x67a90  3      
  callq %rax                  #  7     0x67a93  2      
  testl %eax, %eax            #  8     0x67a95  2      
  movl %eax, %ebx             #  9     0x67a97  2      
  jne .L_67ae0                #  10    0x67a99  6      
  xorl %eax, %eax             #  11    0x67a9f  2      
  nop                         #  12    0x67aa1  1      
  nop                         #  13    0x67aa2  1      
.L_67ac0:                     #        0x67aa3  0      
  popq %rbx                   #  14    0x67aa3  2      
  popq %r11                   #  15    0x67aa5  3      
  andl $0xffffffe0, %r11d     #  16    0x67aa8  7      
  addq %r15, %r11             #  17    0x67aaf  3      
  jmpq %r11                   #  18    0x67ab2  3      
  nop                         #  19    0x67ab5  1      
  nop                         #  20    0x67ab6  1      
.L_67ae0:                     #        0x67ab7  0      
  nop                         #  21    0x67ab7  1      
  nop                         #  22    0x67ab8  1      
  callq .__errno              #  23    0x67ab9  5      
  movl %eax, %eax             #  24    0x67abe  2      
  movl %eax, %eax             #  25    0x67ac0  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x67ac2  4      
  movl $0xffffffff, %eax      #  27    0x67ac6  5      
  jmpq .L_67ac0               #  28    0x67acb  5      
  nop                         #  29    0x67ad0  1      
  nop                         #  30    0x67ad1  1      
  nop                         #  31    0x67ad2  1      
  nop                         #  32    0x67ad3  1      
  nop                         #  33    0x67ad4  1      
  nop                         #  34    0x67ad5  1      
  nop                         #  35    0x67ad6  1      
  nop                         #  36    0x67ad7  1      
  nop                         #  37    0x67ad8  1      
  nop                         #  38    0x67ad9  1      
  nop                         #  39    0x67ada  1      
  nop                         #  40    0x67adb  1      
  nop                         #  41    0x67adc  1      
  nop                         #  42    0x67add  1      
  nop                         #  43    0x67ade  1      
  nop                         #  44    0x67adf  1      
  nop                         #  45    0x67ae0  1      
                                                       
.size munmap, .-munmap

