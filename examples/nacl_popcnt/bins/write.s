  .text
  .globl write
  .type write, @function

#! file-offset 0x67fa0
#! rip-offset  0x67fa0
#! capacity    160 bytes

# Text                        #  Line  RIP      Bytes  
.write:                       #        0x67fa0  0      
  pushq %rbx                  #  1     0x67fa0  2      
  movl %esi, %esi             #  2     0x67fa2  2      
  subl $0x10, %esp            #  3     0x67fa4  3      
  addq %r15, %rsp             #  4     0x67fa7  3      
  movl 0xffc8560(%rip), %eax  #  5     0x67faa  6      
  leal 0xc(%rsp), %ecx        #  6     0x67fb0  4      
  nop                         #  7     0x67fb4  1      
  andl $0xffffffe0, %eax      #  8     0x67fb5  5      
  addq %r15, %rax             #  9     0x67fba  3      
  callq %rax                  #  10    0x67fbd  2      
  testl %eax, %eax            #  11    0x67fbf  2      
  movl %eax, %ebx             #  12    0x67fc1  2      
  jne .L_68000                #  13    0x67fc3  6      
  movl 0xc(%rsp), %eax        #  14    0x67fc9  4      
  nop                         #  15    0x67fcd  1      
  nop                         #  16    0x67fce  1      
.L_67fe0:                     #        0x67fcf  0      
  addl $0x10, %esp            #  17    0x67fcf  3      
  addq %r15, %rsp             #  18    0x67fd2  3      
  popq %rbx                   #  19    0x67fd5  2      
  popq %r11                   #  20    0x67fd7  3      
  andl $0xffffffe0, %r11d     #  21    0x67fda  7      
  addq %r15, %r11             #  22    0x67fe1  3      
  jmpq %r11                   #  23    0x67fe4  3      
  nop                         #  24    0x67fe7  1      
.L_68000:                     #        0x67fe8  0      
  nop                         #  25    0x67fe8  1      
  nop                         #  26    0x67fe9  1      
  callq .__errno              #  27    0x67fea  5      
  movl %eax, %eax             #  28    0x67fef  2      
  movl %eax, %eax             #  29    0x67ff1  2      
  movl %ebx, (%r15,%rax,1)    #  30    0x67ff3  4      
  movl $0xffffffff, %eax      #  31    0x67ff7  5      
  jmpq .L_67fe0               #  32    0x67ffc  5      
  nop                         #  33    0x68001  1      
  nop                         #  34    0x68002  1      
  nop                         #  35    0x68003  1      
  nop                         #  36    0x68004  1      
  nop                         #  37    0x68005  1      
  nop                         #  38    0x68006  1      
  nop                         #  39    0x68007  1      
  nop                         #  40    0x68008  1      
  nop                         #  41    0x68009  1      
  nop                         #  42    0x6800a  1      
  nop                         #  43    0x6800b  1      
  nop                         #  44    0x6800c  1      
  nop                         #  45    0x6800d  1      
  nop                         #  46    0x6800e  1      
  nop                         #  47    0x6800f  1      
  nop                         #  48    0x68010  1      
  nop                         #  49    0x68011  1      
                                                       
.size write, .-write

