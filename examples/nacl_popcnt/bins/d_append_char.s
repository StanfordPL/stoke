  .text
  .globl d_append_char
  .type d_append_char, @function

#! file-offset 0x50500
#! rip-offset  0x50500
#! capacity    256 bytes

# Text                            #  Line  RIP      Bytes  
.d_append_char:                   #        0x50500  0      
  movq %rbx, -0x10(%rsp)          #  1     0x50500  5      
  movl %edi, %ebx                 #  2     0x50505  2      
  movq %r12, -0x8(%rsp)           #  3     0x50507  5      
  subl $0x18, %esp                #  4     0x5050c  3      
  addq %r15, %rsp                 #  5     0x5050f  3      
  movl %ebx, %ebx                 #  6     0x50512  2      
  movl 0x104(%r15,%rbx,1), %eax   #  7     0x50514  8      
  movl %esi, %r12d                #  8     0x5051c  3      
  nop                             #  9     0x5051f  1      
  cmpl $0xff, %eax                #  10    0x50520  3      
  leal 0x1(%rax), %edx            #  11    0x50523  3      
  je .L_505a0                     #  12    0x50526  6      
  nop                             #  13    0x5052c  1      
  nop                             #  14    0x5052d  1      
.L_50540:                         #        0x5052e  0      
  cltq                            #  15    0x5052e  2      
  movl %ebx, %ebx                 #  16    0x50530  2      
  movb %r12b, 0x108(%r15,%rbx,1)  #  17    0x50532  8      
  movl %ebx, %ebx                 #  18    0x5053a  2      
  movl %edx, 0x104(%r15,%rbx,1)   #  19    0x5053c  8      
  leaq (%rbx,%rax,1), %rax        #  20    0x50544  4      
  nop                             #  21    0x50548  1      
  movl %eax, %eax                 #  22    0x50549  2      
  movb %r12b, 0x4(%r15,%rax,1)    #  23    0x5054b  5      
  movq 0x8(%rsp), %rbx            #  24    0x50550  5      
  movq 0x10(%rsp), %r12           #  25    0x50555  5      
  addl $0x18, %esp                #  26    0x5055a  3      
  addq %r15, %rsp                 #  27    0x5055d  3      
  popq %r11                       #  28    0x50560  3      
  nop                             #  29    0x50563  1      
  andl $0xffffffe0, %r11d         #  30    0x50564  7      
  addq %r15, %r11                 #  31    0x5056b  3      
  jmpq %r11                       #  32    0x5056e  3      
  nop                             #  33    0x50571  1      
  nop                             #  34    0x50572  1      
.L_505a0:                         #        0x50573  0      
  movl %ebx, %ebx                 #  35    0x50573  2      
  movl 0x10c(%r15,%rbx,1), %eax   #  36    0x50575  8      
  movl %ebx, %ebx                 #  37    0x5057d  2      
  movl 0x110(%r15,%rbx,1), %edx   #  38    0x5057f  8      
  leal 0x4(%rbx), %edi            #  39    0x50587  3      
  nop                             #  40    0x5058a  1      
  movl %ebx, %ebx                 #  41    0x5058b  2      
  movb $0x0, 0x103(%r15,%rbx,1)   #  42    0x5058d  9      
  movl $0xff, %esi                #  43    0x50596  5      
  nop                             #  44    0x5059b  1      
  andl $0xffffffe0, %eax          #  45    0x5059c  5      
  addq %r15, %rax                 #  46    0x505a1  3      
  callq %rax                      #  47    0x505a4  2      
  movl %ebx, %ebx                 #  48    0x505a6  2      
  movl $0x0, 0x104(%r15,%rbx,1)   #  49    0x505a8  12     
  movl $0x1, %edx                 #  50    0x505b4  5      
  xorl %eax, %eax                 #  51    0x505b9  2      
  jmpq .L_50540                   #  52    0x505bb  5      
  nop                             #  53    0x505c0  1      
                                                           
.size d_append_char, .-d_append_char

