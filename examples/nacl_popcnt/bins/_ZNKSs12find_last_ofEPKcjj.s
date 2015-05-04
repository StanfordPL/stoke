  .text
  .globl _ZNKSs12find_last_ofEPKcjj
  .type _ZNKSs12find_last_ofEPKcjj, @function

#! file-offset 0x45280
#! rip-offset  0x45280
#! capacity    256 bytes

# Text                        #  Line  RIP      Bytes  
._ZNKSs12find_last_ofEPKcjj:  #        0x45280  0      
  pushq %r14                  #  1     0x45280  3      
  movl %edi, %edi             #  2     0x45283  2      
  movl %esi, %r14d            #  3     0x45285  3      
  pushq %r13                  #  4     0x45288  3      
  movl %ecx, %r13d            #  5     0x4528b  3      
  pushq %r12                  #  6     0x4528e  3      
  pushq %rbx                  #  7     0x45291  2      
  subl $0x8, %esp             #  8     0x45293  3      
  addq %r15, %rsp             #  9     0x45296  3      
  movl %edi, %edi             #  10    0x45299  2      
  movl (%r15,%rdi,1), %r12d   #  11    0x4529b  4      
  testl %ecx, %ecx            #  12    0x4529f  2      
  nop                         #  13    0x452a1  1      
  leal -0xc(%r12), %eax       #  14    0x452a2  5      
  movl %eax, %eax             #  15    0x452a7  2      
  movl (%r15,%rax,1), %ebx    #  16    0x452a9  4      
  je .L_45340                 #  17    0x452ad  6      
  testl %ebx, %ebx            #  18    0x452b3  2      
  je .L_45340                 #  19    0x452b5  6      
  subl $0x1, %ebx             #  20    0x452bb  3      
  cmpl %ebx, %edx             #  21    0x452be  2      
  xchgw %ax, %ax              #  22    0x452c0  3      
  cmovbel %edx, %ebx          #  23    0x452c3  3      
  leal (%rbx,%r12,1), %r12d   #  24    0x452c6  4      
  jmpq .L_45300               #  25    0x452ca  5      
  nop                         #  26    0x452cf  1      
  nop                         #  27    0x452d0  1      
.L_452e0:                     #        0x452d1  0      
  subl $0x1, %ebx             #  28    0x452d1  3      
  nop                         #  29    0x452d4  1      
  nop                         #  30    0x452d5  1      
.L_45300:                     #        0x452d6  0      
  movl %r12d, %eax            #  31    0x452d6  3      
  movl %r13d, %edx            #  32    0x452d9  3      
  movl %r14d, %edi            #  33    0x452dc  3      
  movl %eax, %eax             #  34    0x452df  2      
  movsbl (%r15,%rax,1), %esi  #  35    0x452e1  5      
  nop                         #  36    0x452e6  1      
  callq .memchr               #  37    0x452e7  5      
  testl %eax, %eax            #  38    0x452ec  2      
  jne .L_45360                #  39    0x452ee  6      
  subl $0x1, %r12d            #  40    0x452f4  4      
  testl %ebx, %ebx            #  41    0x452f8  2      
  jne .L_452e0                #  42    0x452fa  6      
  nop                         #  43    0x45300  1      
  nop                         #  44    0x45301  1      
.L_45340:                     #        0x45302  0      
  movl $0xffffffff, %ebx      #  45    0x45302  5      
  nop                         #  46    0x45307  1      
  nop                         #  47    0x45308  1      
.L_45360:                     #        0x45309  0      
  addl $0x8, %esp             #  48    0x45309  3      
  addq %r15, %rsp             #  49    0x4530c  3      
  movl %ebx, %eax             #  50    0x4530f  2      
  popq %rbx                   #  51    0x45311  2      
  popq %r12                   #  52    0x45313  3      
  popq %r13                   #  53    0x45316  3      
  popq %r14                   #  54    0x45319  3      
  popq %r11                   #  55    0x4531c  3      
  andl $0xffffffe0, %r11d     #  56    0x4531f  7      
  addq %r15, %r11             #  57    0x45326  3      
  jmpq %r11                   #  58    0x45329  3      
  nop                         #  59    0x4532c  1      
  nop                         #  60    0x4532d  1      
  nop                         #  61    0x4532e  1      
  nop                         #  62    0x4532f  1      
  nop                         #  63    0x45330  1      
                                                       
.size _ZNKSs12find_last_ofEPKcjj, .-_ZNKSs12find_last_ofEPKcjj

