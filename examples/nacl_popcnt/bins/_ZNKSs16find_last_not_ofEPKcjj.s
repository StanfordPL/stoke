  .text
  .globl _ZNKSs16find_last_not_ofEPKcjj
  .type _ZNKSs16find_last_not_ofEPKcjj, @function

#! file-offset 0x45080
#! rip-offset  0x45080
#! capacity    224 bytes

# Text                            #  Line  RIP      Bytes  
._ZNKSs16find_last_not_ofEPKcjj:  #        0x45080  0      
  pushq %r14                      #  1     0x45080  3      
  movl %edi, %edi                 #  2     0x45083  2      
  movl %ecx, %r14d                #  3     0x45085  3      
  pushq %r13                      #  4     0x45088  3      
  movl %esi, %r13d                #  5     0x4508b  3      
  pushq %r12                      #  6     0x4508e  3      
  pushq %rbx                      #  7     0x45091  2      
  subl $0x8, %esp                 #  8     0x45093  3      
  addq %r15, %rsp                 #  9     0x45096  3      
  movl %edi, %edi                 #  10    0x45099  2      
  movl (%r15,%rdi,1), %r12d       #  11    0x4509b  4      
  leal -0xc(%r12), %eax           #  12    0x4509f  5      
  movl %eax, %eax                 #  13    0x450a4  2      
  movl (%r15,%rax,1), %ebx        #  14    0x450a6  4      
  testl %ebx, %ebx                #  15    0x450aa  2      
  je .L_45120                     #  16    0x450ac  6      
  subl $0x1, %ebx                 #  17    0x450b2  3      
  cmpl %ebx, %edx                 #  18    0x450b5  2      
  cmovbel %edx, %ebx              #  19    0x450b7  3      
  leal (%rbx,%r12,1), %r12d       #  20    0x450ba  4      
  jmpq .L_450e0                   #  21    0x450be  5      
  nop                             #  22    0x450c3  1      
.L_450c0:                         #        0x450c4  0      
  subl $0x1, %ebx                 #  23    0x450c4  3      
  nop                             #  24    0x450c7  1      
  nop                             #  25    0x450c8  1      
.L_450e0:                         #        0x450c9  0      
  movl %r12d, %eax                #  26    0x450c9  3      
  movl %r14d, %edx                #  27    0x450cc  3      
  movl %r13d, %edi                #  28    0x450cf  3      
  movl %eax, %eax                 #  29    0x450d2  2      
  movsbl (%r15,%rax,1), %esi      #  30    0x450d4  5      
  nop                             #  31    0x450d9  1      
  callq .memchr                   #  32    0x450da  5      
  testl %eax, %eax                #  33    0x450df  2      
  je .L_45140                     #  34    0x450e1  6      
  subl $0x1, %r12d                #  35    0x450e7  4      
  testl %ebx, %ebx                #  36    0x450eb  2      
  jne .L_450c0                    #  37    0x450ed  6      
  nop                             #  38    0x450f3  1      
  nop                             #  39    0x450f4  1      
.L_45120:                         #        0x450f5  0      
  movl $0xffffffff, %ebx          #  40    0x450f5  5      
  nop                             #  41    0x450fa  1      
  nop                             #  42    0x450fb  1      
.L_45140:                         #        0x450fc  0      
  addl $0x8, %esp                 #  43    0x450fc  3      
  addq %r15, %rsp                 #  44    0x450ff  3      
  movl %ebx, %eax                 #  45    0x45102  2      
  popq %rbx                       #  46    0x45104  2      
  popq %r12                       #  47    0x45106  3      
  popq %r13                       #  48    0x45109  3      
  popq %r14                       #  49    0x4510c  3      
  popq %r11                       #  50    0x4510f  3      
  andl $0xffffffe0, %r11d         #  51    0x45112  7      
  addq %r15, %r11                 #  52    0x45119  3      
  jmpq %r11                       #  53    0x4511c  3      
  nop                             #  54    0x4511f  1      
  nop                             #  55    0x45120  1      
  nop                             #  56    0x45121  1      
  nop                             #  57    0x45122  1      
  nop                             #  58    0x45123  1      
                                                           
.size _ZNKSs16find_last_not_ofEPKcjj, .-_ZNKSs16find_last_not_ofEPKcjj

