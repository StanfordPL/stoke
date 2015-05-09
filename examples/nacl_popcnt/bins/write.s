  .text
  .globl write
  .type write, @function

#! file-offset 0x67f80
#! rip-offset  0x67f80
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.write:                       #        0x67f80  0      
  pushq %rbx                  #  1     0x67f80  2      
  movl %esi, %esi             #  2     0x67f82  2      
  subl $0x10, %esp            #  3     0x67f84  3      
  addq %r15, %rsp             #  4     0x67f87  3      
  movl 0xffc8580(%rip), %eax  #  5     0x67f8a  6      
  leal 0xc(%rsp), %ecx        #  6     0x67f90  4      
  nop                         #  7     0x67f94  1      
  andl $0xffffffe0, %eax      #  8     0x67f95  5      
  addq %r15, %rax             #  9     0x67f9a  3      
  callq %rax                  #  10    0x67f9d  2      
  testl %eax, %eax            #  11    0x67f9f  2      
  movl %eax, %ebx             #  12    0x67fa1  2      
  jne .L_67fe0                #  13    0x67fa3  6      
  movl 0xc(%rsp), %eax        #  14    0x67fa9  4      
  nop                         #  15    0x67fad  1      
  nop                         #  16    0x67fae  1      
.L_67fc0:                     #        0x67faf  0      
  addl $0x10, %esp            #  17    0x67faf  3      
  addq %r15, %rsp             #  18    0x67fb2  3      
  popq %rbx                   #  19    0x67fb5  2      
  popq %r11                   #  20    0x67fb7  3      
  andl $0xffffffe0, %r11d     #  21    0x67fba  7      
  addq %r15, %r11             #  22    0x67fc1  3      
  jmpq %r11                   #  23    0x67fc4  3      
  nop                         #  24    0x67fc7  1      
.L_67fe0:                     #        0x67fc8  0      
  nop                         #  25    0x67fc8  1      
  nop                         #  26    0x67fc9  1      
  callq .__errno              #  27    0x67fca  5      
  movl %eax, %eax             #  28    0x67fcf  2      
  movl %eax, %eax             #  29    0x67fd1  2      
  movl %ebx, (%r15,%rax,1)    #  30    0x67fd3  4      
  movl $0xffffffff, %eax      #  31    0x67fd7  5      
  jmpq .L_67fc0               #  32    0x67fdc  5      
  nop                         #  33    0x67fe1  1      
  nop                         #  34    0x67fe2  1      
  nop                         #  35    0x67fe3  1      
  nop                         #  36    0x67fe4  1      
  nop                         #  37    0x67fe5  1      
  nop                         #  38    0x67fe6  1      
  nop                         #  39    0x67fe7  1      
  nop                         #  40    0x67fe8  1      
  nop                         #  41    0x67fe9  1      
  nop                         #  42    0x67fea  1      
  nop                         #  43    0x67feb  1      
  nop                         #  44    0x67fec  1      
  nop                         #  45    0x67fed  1      
  nop                         #  46    0x67fee  1      
  nop                         #  47    0x67fef  1      
  nop                         #  48    0x67ff0  1      
  nop                         #  49    0x67ff1  1      
                                                       
.size write, .-write

