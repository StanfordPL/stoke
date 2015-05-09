  .text
  .globl read
  .type read, @function

#! file-offset 0x88480
#! rip-offset  0x88480
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.read:                        #        0x88480  0      
  pushq %rbx                  #  1     0x88480  2      
  movl %esi, %esi             #  2     0x88482  2      
  subl $0x10, %esp            #  3     0x88484  3      
  addq %r15, %rsp             #  4     0x88487  3      
  movl 0xffa807c(%rip), %eax  #  5     0x8848a  6      
  leal 0xc(%rsp), %ecx        #  6     0x88490  4      
  nop                         #  7     0x88494  1      
  andl $0xffffffe0, %eax      #  8     0x88495  5      
  addq %r15, %rax             #  9     0x8849a  3      
  callq %rax                  #  10    0x8849d  2      
  testl %eax, %eax            #  11    0x8849f  2      
  movl %eax, %ebx             #  12    0x884a1  2      
  jne .L_884e0                #  13    0x884a3  6      
  movl 0xc(%rsp), %eax        #  14    0x884a9  4      
  nop                         #  15    0x884ad  1      
  nop                         #  16    0x884ae  1      
.L_884c0:                     #        0x884af  0      
  addl $0x10, %esp            #  17    0x884af  3      
  addq %r15, %rsp             #  18    0x884b2  3      
  popq %rbx                   #  19    0x884b5  2      
  popq %r11                   #  20    0x884b7  3      
  andl $0xffffffe0, %r11d     #  21    0x884ba  7      
  addq %r15, %r11             #  22    0x884c1  3      
  jmpq %r11                   #  23    0x884c4  3      
  nop                         #  24    0x884c7  1      
.L_884e0:                     #        0x884c8  0      
  nop                         #  25    0x884c8  1      
  nop                         #  26    0x884c9  1      
  callq .__errno              #  27    0x884ca  5      
  movl %eax, %eax             #  28    0x884cf  2      
  movl %eax, %eax             #  29    0x884d1  2      
  movl %ebx, (%r15,%rax,1)    #  30    0x884d3  4      
  movl $0xffffffff, %eax      #  31    0x884d7  5      
  jmpq .L_884c0               #  32    0x884dc  5      
  nop                         #  33    0x884e1  1      
  nop                         #  34    0x884e2  1      
  nop                         #  35    0x884e3  1      
  nop                         #  36    0x884e4  1      
  nop                         #  37    0x884e5  1      
  nop                         #  38    0x884e6  1      
  nop                         #  39    0x884e7  1      
  nop                         #  40    0x884e8  1      
  nop                         #  41    0x884e9  1      
  nop                         #  42    0x884ea  1      
  nop                         #  43    0x884eb  1      
  nop                         #  44    0x884ec  1      
  nop                         #  45    0x884ed  1      
  nop                         #  46    0x884ee  1      
  nop                         #  47    0x884ef  1      
  nop                         #  48    0x884f0  1      
  nop                         #  49    0x884f1  1      
                                                       
.size read, .-read

