  .text
  .globl munmap
  .type munmap, @function

#! file-offset 0x67b00
#! rip-offset  0x67b00
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.munmap:                      #        0x67b00  0      
  movl 0xffcf366(%rip), %eax  #  1     0x67b00  6      
  pushq %rbx                  #  2     0x67b06  2      
  movl %edi, %edi             #  3     0x67b08  2      
  nop                         #  4     0x67b0a  1      
  andl $0xffffffe0, %eax      #  5     0x67b0b  5      
  addq %r15, %rax             #  6     0x67b10  3      
  callq %rax                  #  7     0x67b13  2      
  testl %eax, %eax            #  8     0x67b15  2      
  movl %eax, %ebx             #  9     0x67b17  2      
  jne .L_67b60                #  10    0x67b19  6      
  xorl %eax, %eax             #  11    0x67b1f  2      
  nop                         #  12    0x67b21  1      
  nop                         #  13    0x67b22  1      
.L_67b40:                     #        0x67b23  0      
  popq %rbx                   #  14    0x67b23  2      
  popq %r11                   #  15    0x67b25  3      
  andl $0xffffffe0, %r11d     #  16    0x67b28  7      
  addq %r15, %r11             #  17    0x67b2f  3      
  jmpq %r11                   #  18    0x67b32  3      
  nop                         #  19    0x67b35  1      
  nop                         #  20    0x67b36  1      
.L_67b60:                     #        0x67b37  0      
  nop                         #  21    0x67b37  1      
  nop                         #  22    0x67b38  1      
  callq .__errno              #  23    0x67b39  5      
  movl %eax, %eax             #  24    0x67b3e  2      
  movl %eax, %eax             #  25    0x67b40  2      
  movl %ebx, (%r15,%rax,1)    #  26    0x67b42  4      
  movl $0xffffffff, %eax      #  27    0x67b46  5      
  jmpq .L_67b40               #  28    0x67b4b  5      
  nop                         #  29    0x67b50  1      
  nop                         #  30    0x67b51  1      
  nop                         #  31    0x67b52  1      
  nop                         #  32    0x67b53  1      
  nop                         #  33    0x67b54  1      
  nop                         #  34    0x67b55  1      
  nop                         #  35    0x67b56  1      
  nop                         #  36    0x67b57  1      
  nop                         #  37    0x67b58  1      
  nop                         #  38    0x67b59  1      
  nop                         #  39    0x67b5a  1      
  nop                         #  40    0x67b5b  1      
  nop                         #  41    0x67b5c  1      
  nop                         #  42    0x67b5d  1      
  nop                         #  43    0x67b5e  1      
  nop                         #  44    0x67b5f  1      
  nop                         #  45    0x67b60  1      
                                                       
.size munmap, .-munmap

