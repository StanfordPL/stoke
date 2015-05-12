  .text
  .globl _ZNKSs12find_last_ofEPKcjj
  .type _ZNKSs12find_last_ofEPKcjj, @function

#! file-offset 0x45200
#! rip-offset  0x45200
#! capacity    256 bytes

# Text                        #  Line  RIP      Bytes  
._ZNKSs12find_last_ofEPKcjj:  #        0x45200  0      
  pushq %r14                  #  1     0x45200  3      
  movl %edi, %edi             #  2     0x45203  2      
  movl %esi, %r14d            #  3     0x45205  3      
  pushq %r13                  #  4     0x45208  3      
  movl %ecx, %r13d            #  5     0x4520b  3      
  pushq %r12                  #  6     0x4520e  3      
  pushq %rbx                  #  7     0x45211  2      
  subl $0x8, %esp             #  8     0x45213  3      
  addq %r15, %rsp             #  9     0x45216  3      
  movl %edi, %edi             #  10    0x45219  2      
  movl (%r15,%rdi,1), %r12d   #  11    0x4521b  4      
  testl %ecx, %ecx            #  12    0x4521f  2      
  nop                         #  13    0x45221  1      
  leal -0xc(%r12), %eax       #  14    0x45222  5      
  movl %eax, %eax             #  15    0x45227  2      
  movl (%r15,%rax,1), %ebx    #  16    0x45229  4      
  je .L_452c0                 #  17    0x4522d  6      
  testl %ebx, %ebx            #  18    0x45233  2      
  je .L_452c0                 #  19    0x45235  6      
  subl $0x1, %ebx             #  20    0x4523b  3      
  cmpl %ebx, %edx             #  21    0x4523e  2      
  xchgw %ax, %ax              #  22    0x45240  3      
  cmovbel %edx, %ebx          #  23    0x45243  3      
  leal (%rbx,%r12,1), %r12d   #  24    0x45246  4      
  jmpq .L_45280               #  25    0x4524a  5      
  nop                         #  26    0x4524f  1      
  nop                         #  27    0x45250  1      
.L_45260:                     #        0x45251  0      
  subl $0x1, %ebx             #  28    0x45251  3      
  nop                         #  29    0x45254  1      
  nop                         #  30    0x45255  1      
.L_45280:                     #        0x45256  0      
  movl %r12d, %eax            #  31    0x45256  3      
  movl %r13d, %edx            #  32    0x45259  3      
  movl %r14d, %edi            #  33    0x4525c  3      
  movl %eax, %eax             #  34    0x4525f  2      
  movsbl (%r15,%rax,1), %esi  #  35    0x45261  5      
  nop                         #  36    0x45266  1      
  callq .memchr               #  37    0x45267  5      
  testl %eax, %eax            #  38    0x4526c  2      
  jne .L_452e0                #  39    0x4526e  6      
  subl $0x1, %r12d            #  40    0x45274  4      
  testl %ebx, %ebx            #  41    0x45278  2      
  jne .L_45260                #  42    0x4527a  6      
  nop                         #  43    0x45280  1      
  nop                         #  44    0x45281  1      
.L_452c0:                     #        0x45282  0      
  movl $0xffffffff, %ebx      #  45    0x45282  5      
  nop                         #  46    0x45287  1      
  nop                         #  47    0x45288  1      
.L_452e0:                     #        0x45289  0      
  addl $0x8, %esp             #  48    0x45289  3      
  addq %r15, %rsp             #  49    0x4528c  3      
  movl %ebx, %eax             #  50    0x4528f  2      
  popq %rbx                   #  51    0x45291  2      
  popq %r12                   #  52    0x45293  3      
  popq %r13                   #  53    0x45296  3      
  popq %r14                   #  54    0x45299  3      
  popq %r11                   #  55    0x4529c  3      
  andl $0xffffffe0, %r11d     #  56    0x4529f  7      
  addq %r15, %r11             #  57    0x452a6  3      
  jmpq %r11                   #  58    0x452a9  3      
  nop                         #  59    0x452ac  1      
  nop                         #  60    0x452ad  1      
  nop                         #  61    0x452ae  1      
  nop                         #  62    0x452af  1      
  nop                         #  63    0x452b0  1      
                                                       
.size _ZNKSs12find_last_ofEPKcjj, .-_ZNKSs12find_last_ofEPKcjj

