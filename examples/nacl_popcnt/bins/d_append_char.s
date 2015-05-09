  .text
  .globl d_append_char
  .type d_append_char, @function

#! file-offset 0x504e0
#! rip-offset  0x504e0
#! capacity    256 bytes

# Text                            #  Line  RIP      Bytes  
.d_append_char:                   #        0x504e0  0      
  movq %rbx, -0x10(%rsp)          #  1     0x504e0  5      
  movl %edi, %ebx                 #  2     0x504e5  2      
  movq %r12, -0x8(%rsp)           #  3     0x504e7  5      
  subl $0x18, %esp                #  4     0x504ec  3      
  addq %r15, %rsp                 #  5     0x504ef  3      
  movl %ebx, %ebx                 #  6     0x504f2  2      
  movl 0x104(%r15,%rbx,1), %eax   #  7     0x504f4  8      
  movl %esi, %r12d                #  8     0x504fc  3      
  nop                             #  9     0x504ff  1      
  cmpl $0xff, %eax                #  10    0x50500  3      
  leal 0x1(%rax), %edx            #  11    0x50503  3      
  je .L_50580                     #  12    0x50506  6      
  nop                             #  13    0x5050c  1      
  nop                             #  14    0x5050d  1      
.L_50520:                         #        0x5050e  0      
  cltq                            #  15    0x5050e  2      
  movl %ebx, %ebx                 #  16    0x50510  2      
  movb %r12b, 0x108(%r15,%rbx,1)  #  17    0x50512  8      
  movl %ebx, %ebx                 #  18    0x5051a  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  19    0x5051c  8      
  leaq (%rbx,%rax,1), %rax        #  20    0x50524  4      
  nop                             #  21    0x50528  1      
  movl %eax, %eax                 #  22    0x50529  2      
  movb %r12b, 0x4(%r15,%rax,1)    #  23    0x5052b  5      
  movq 0x8(%rsp), %rbx            #  24    0x50530  5      
  movq 0x10(%rsp), %r12           #  25    0x50535  5      
  addl $0x18, %esp                #  26    0x5053a  3      
  addq %r15, %rsp                 #  27    0x5053d  3      
  popq %r11                       #  28    0x50540  3      
  nop                             #  29    0x50543  1      
  andl $0xffffffe0, %r11d         #  30    0x50544  7      
  addq %r15, %r11                 #  31    0x5054b  3      
  jmpq %r11                       #  32    0x5054e  3      
  nop                             #  33    0x50551  1      
  nop                             #  34    0x50552  1      
.L_50580:                         #        0x50553  0      
  movl %ebx, %ebx                 #  35    0x50553  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  36    0x50555  8      
  movl %ebx, %ebx                 #  37    0x5055d  2      
  movl 0x110(%r15,%rbx,1), %edx   #  38    0x5055f  8      
  leal 0x4(%rbx), %edi            #  39    0x50567  3      
  nop                             #  40    0x5056a  1      
  movl %ebx, %ebx                 #  41    0x5056b  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  42    0x5056d  9      
  movl $0xff, %esi                #  43    0x50576  5      
  nop                             #  44    0x5057b  1      
  andl $0xffffffe0, %eax          #  45    0x5057c  5      
  addq %r15, %rax                 #  46    0x50581  3      
  callq %rax                      #  47    0x50584  2      
  movl %ebx, %ebx                 #  48    0x50586  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  49    0x50588  12     
  movl $0x1, %edx                 #  50    0x50594  5      
  xorl %eax, %eax                 #  51    0x50599  2      
  jmpq .L_50520                   #  52    0x5059b  5      
  nop                             #  53    0x505a0  1      
                                                           
.size d_append_char, .-d_append_char

