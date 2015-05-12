  .text
  .globl _ZNKSs17find_first_not_ofEPKcjj
  .type _ZNKSs17find_first_not_ofEPKcjj, @function

#! file-offset 0x45100
#! rip-offset  0x45100
#! capacity    224 bytes

# Text                             #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofEPKcjj:  #        0x45100  0      
  pushq %r14                       #  1     0x45100  3      
  movl %edi, %edi                  #  2     0x45103  2      
  movl %esi, %r14d                 #  3     0x45105  3      
  pushq %r13                       #  4     0x45108  3      
  pushq %r12                       #  5     0x4510b  3      
  pushq %rbx                       #  6     0x4510e  2      
  movl %edx, %ebx                  #  7     0x45110  2      
  subl $0x18, %esp                 #  8     0x45112  3      
  addq %r15, %rsp                  #  9     0x45115  3      
  movl %edi, %edi                  #  10    0x45118  2      
  movl (%r15,%rdi,1), %r12d        #  11    0x4511a  4      
  movl %ecx, 0xc(%rsp)             #  12    0x4511e  4      
  xchgw %ax, %ax                   #  13    0x45122  3      
  leal -0xc(%r12), %eax            #  14    0x45125  5      
  movl %eax, %eax                  #  15    0x4512a  2      
  movl (%r15,%rax,1), %r13d        #  16    0x4512c  4      
  cmpl %r13d, %edx                 #  17    0x45130  3      
  jae .L_451c0                     #  18    0x45133  6      
  leal (%rbx,%r12,1), %r12d        #  19    0x45139  4      
  jmpq .L_45160                    #  20    0x4513d  5      
  nop                              #  21    0x45142  1      
.L_45140:                          #        0x45143  0      
  addl $0x1, %ebx                  #  22    0x45143  3      
  addl $0x1, %r12d                 #  23    0x45146  4      
  cmpl %r13d, %ebx                 #  24    0x4514a  3      
  jae .L_451c0                     #  25    0x4514d  6      
  nop                              #  26    0x45153  1      
  nop                              #  27    0x45154  1      
.L_45160:                          #        0x45155  0      
  movl %r12d, %eax                 #  28    0x45155  3      
  movl 0xc(%rsp), %edx             #  29    0x45158  4      
  movl %r14d, %edi                 #  30    0x4515c  3      
  movl %eax, %eax                  #  31    0x4515f  2      
  movsbl (%r15,%rax,1), %esi       #  32    0x45161  5      
  nop                              #  33    0x45166  1      
  callq .memchr                    #  34    0x45167  5      
  testl %eax, %eax                 #  35    0x4516c  2      
  jne .L_45140                     #  36    0x4516e  6      
  nop                              #  37    0x45174  1      
  nop                              #  38    0x45175  1      
.L_451a0:                          #        0x45176  0      
  addl $0x18, %esp                 #  39    0x45176  3      
  addq %r15, %rsp                  #  40    0x45179  3      
  movl %ebx, %eax                  #  41    0x4517c  2      
  popq %rbx                        #  42    0x4517e  2      
  popq %r12                        #  43    0x45180  3      
  popq %r13                        #  44    0x45183  3      
  popq %r14                        #  45    0x45186  3      
  popq %r11                        #  46    0x45189  3      
  andl $0xffffffe0, %r11d          #  47    0x4518c  7      
  addq %r15, %r11                  #  48    0x45193  3      
  jmpq %r11                        #  49    0x45196  3      
  nop                              #  50    0x45199  1      
.L_451c0:                          #        0x4519a  0      
  movl $0xffffffff, %ebx           #  51    0x4519a  5      
  jmpq .L_451a0                    #  52    0x4519f  5      
  nop                              #  53    0x451a4  1      
  nop                              #  54    0x451a5  1      
  nop                              #  55    0x451a6  1      
  nop                              #  56    0x451a7  1      
  nop                              #  57    0x451a8  1      
  nop                              #  58    0x451a9  1      
  nop                              #  59    0x451aa  1      
  nop                              #  60    0x451ab  1      
  nop                              #  61    0x451ac  1      
  nop                              #  62    0x451ad  1      
  nop                              #  63    0x451ae  1      
  nop                              #  64    0x451af  1      
  nop                              #  65    0x451b0  1      
  nop                              #  66    0x451b1  1      
  nop                              #  67    0x451b2  1      
  nop                              #  68    0x451b3  1      
  nop                              #  69    0x451b4  1      
  nop                              #  70    0x451b5  1      
  nop                              #  71    0x451b6  1      
  nop                              #  72    0x451b7  1      
  nop                              #  73    0x451b8  1      
  nop                              #  74    0x451b9  1      
  nop                              #  75    0x451ba  1      
  nop                              #  76    0x451bb  1      
  nop                              #  77    0x451bc  1      
                                                            
.size _ZNKSs17find_first_not_ofEPKcjj, .-_ZNKSs17find_first_not_ofEPKcjj

