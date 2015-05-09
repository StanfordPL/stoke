  .text
  .globl _ZNKSs12find_last_ofEPKcjj
  .type _ZNKSs12find_last_ofEPKcjj, @function

#! file-offset 0x451e0
#! rip-offset  0x451e0
#! capacity    256 bytes

# Text                        #  Line  RIP      Bytes  
._ZNKSs12find_last_ofEPKcjj:  #        0x451e0  0      
  pushq %r14                  #  1     0x451e0  3      
  movl %edi, %edi             #  2     0x451e3  2      
  movl %esi, %r14d            #  3     0x451e5  3      
  pushq %r13                  #  4     0x451e8  3      
  movl %ecx, %r13d            #  5     0x451eb  3      
  pushq %r12                  #  6     0x451ee  3      
  pushq %rbx                  #  7     0x451f1  2      
  subl $0x8, %esp             #  8     0x451f3  3      
  addq %r15, %rsp             #  9     0x451f6  3      
  movl %edi, %edi             #  10    0x451f9  2      
  movl (%r15,%rdi,1), %r12d   #  11    0x451fb  4      
  testl %ecx, %ecx            #  12    0x451ff  2      
  nop                         #  13    0x45201  1      
  leal -0xc(%r12), %eax       #  14    0x45202  5      
  movl %eax, %eax             #  15    0x45207  2      
  movl (%r15,%rax,1), %ebx    #  16    0x45209  4      
  je .L_452a0                 #  17    0x4520d  6      
  testl %ebx, %ebx            #  18    0x45213  2      
  je .L_452a0                 #  19    0x45215  6      
  subl $0x1, %ebx             #  20    0x4521b  3      
  cmpl %ebx, %edx             #  21    0x4521e  2      
  xchgw %ax, %ax              #  22    0x45220  3      
  cmovbel %edx, %ebx          #  23    0x45223  3      
  leal (%rbx,%r12,1), %r12d   #  24    0x45226  4      
  jmpq .L_45260               #  25    0x4522a  5      
  nop                         #  26    0x4522f  1      
  nop                         #  27    0x45230  1      
.L_45240:                     #        0x45231  0      
  subl $0x1, %ebx             #  28    0x45231  3      
  nop                         #  29    0x45234  1      
  nop                         #  30    0x45235  1      
.L_45260:                     #        0x45236  0      
  movl %r12d, %eax            #  31    0x45236  3      
  movl %r13d, %edx            #  32    0x45239  3      
  movl %r14d, %edi            #  33    0x4523c  3      
  movl %eax, %eax             #  34    0x4523f  2      
  movsbl (%r15,%rax,1), %esi  #  35    0x45241  5      
  nop                         #  36    0x45246  1      
  callq .memchr               #  37    0x45247  5      
  testl %eax, %eax            #  38    0x4524c  2      
  jne .L_452c0                #  39    0x4524e  6      
  subl $0x1, %r12d            #  40    0x45254  4      
  testl %ebx, %ebx            #  41    0x45258  2      
  jne .L_45240                #  42    0x4525a  6      
  nop                         #  43    0x45260  1      
  nop                         #  44    0x45261  1      
.L_452a0:                     #        0x45262  0      
  movl $0xffffffff, %ebx      #  45    0x45262  5      
  nop                         #  46    0x45267  1      
  nop                         #  47    0x45268  1      
.L_452c0:                     #        0x45269  0      
  addl $0x8, %esp             #  48    0x45269  3      
  addq %r15, %rsp             #  49    0x4526c  3      
  movl %ebx, %eax             #  50    0x4526f  2      
  popq %rbx                   #  51    0x45271  2      
  popq %r12                   #  52    0x45273  3      
  popq %r13                   #  53    0x45276  3      
  popq %r14                   #  54    0x45279  3      
  popq %r11                   #  55    0x4527c  3      
  andl $0xffffffe0, %r11d     #  56    0x4527f  7      
  addq %r15, %r11             #  57    0x45286  3      
  jmpq %r11                   #  58    0x45289  3      
  nop                         #  59    0x4528c  1      
  nop                         #  60    0x4528d  1      
  nop                         #  61    0x4528e  1      
  nop                         #  62    0x4528f  1      
  nop                         #  63    0x45290  1      
                                                       
.size _ZNKSs12find_last_ofEPKcjj, .-_ZNKSs12find_last_ofEPKcjj

