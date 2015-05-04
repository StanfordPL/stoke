  .text
  .globl _fwalk_reent
  .type _fwalk_reent, @function

#! file-offset 0x7b660
#! rip-offset  0x7b660
#! capacity    448 bytes

# Text                            #  Line  RIP      Bytes  
._fwalk_reent:                    #        0x7b660  0      
  pushq %r14                      #  1     0x7b660  3      
  movl %edi, %edi                 #  2     0x7b663  2      
  movl %esi, %esi                 #  3     0x7b665  2      
  pushq %r13                      #  4     0x7b667  3      
  pushq %r12                      #  5     0x7b66a  3      
  pushq %rbx                      #  6     0x7b66d  2      
  subl $0x18, %esp                #  7     0x7b66f  3      
  addq %r15, %rsp                 #  8     0x7b672  3      
  movq %rdi, (%rsp)               #  9     0x7b675  4      
  movq %rsi, 0x8(%rsp)            #  10    0x7b679  5      
  nop                             #  11    0x7b67e  1      
  callq .__sfp_lock_acquire       #  12    0x7b67f  5      
  cmpq $0x0, (%rsp)               #  13    0x7b684  5      
  je .L_7b6a0                     #  14    0x7b689  6      
  movq (%rsp), %rax               #  15    0x7b68f  4      
  movl %eax, %eax                 #  16    0x7b693  2      
  movl 0x38(%r15,%rax,1), %edx    #  17    0x7b695  5      
  testl %edx, %edx                #  18    0x7b69a  2      
  je .L_7b7e0                     #  19    0x7b69c  6      
  nop                             #  20    0x7b6a2  1      
.L_7b6a0:                         #        0x7b6a3  0      
  movl (%rsp), %r13d              #  21    0x7b6a3  4      
  xorl %r14d, %r14d               #  22    0x7b6a7  3      
  addl $0x2e0, %r13d              #  23    0x7b6aa  7      
  testq %r13, %r13                #  24    0x7b6b1  3      
  je .L_7b7a0                     #  25    0x7b6b4  6      
  nop                             #  26    0x7b6ba  1      
.L_7b6c0:                         #        0x7b6bb  0      
  movl %r13d, %r13d               #  27    0x7b6bb  3      
  movl 0x4(%r15,%r13,1), %r12d    #  28    0x7b6be  5      
  movl %r13d, %r13d               #  29    0x7b6c3  3      
  movl 0x8(%r15,%r13,1), %ebx     #  30    0x7b6c6  5      
  subl $0x1, %r12d                #  31    0x7b6cb  4      
  jns .L_7b700                    #  32    0x7b6cf  6      
  jmpq .L_7b780                   #  33    0x7b6d5  5      
  nop                             #  34    0x7b6da  1      
.L_7b6e0:                         #        0x7b6db  0      
  subl $0xffffff80, %ebx          #  35    0x7b6db  6      
  nop                             #  36    0x7b6e1  1      
  nop                             #  37    0x7b6e2  1      
.L_7b700:                         #        0x7b6e3  0      
  movl %ebx, %ebx                 #  38    0x7b6e3  2      
  movzwl 0xc(%r15,%rbx,1), %eax   #  39    0x7b6e5  6      
  testw %ax, %ax                  #  40    0x7b6eb  3      
  je .L_7b760                     #  41    0x7b6ee  6      
  cmpw $0x1, %ax                  #  42    0x7b6f4  4      
  jbe .L_7b760                    #  43    0x7b6f8  6      
  movl %ebx, %ebx                 #  44    0x7b6fe  2      
  cmpw $0xffff, 0xe(%r15,%rbx,1)  #  45    0x7b700  8      
  nop                             #  46    0x7b708  1      
  je .L_7b760                     #  47    0x7b709  6      
  movl %ebx, %esi                 #  48    0x7b70f  2      
  movl (%rsp), %edi               #  49    0x7b711  3      
  movq 0x8(%rsp), %rdx            #  50    0x7b714  5      
  nop                             #  51    0x7b719  1      
  andl $0xffffffe0, %edx          #  52    0x7b71a  6      
  addq %r15, %rdx                 #  53    0x7b720  3      
  callq %rdx                      #  54    0x7b723  2      
  orl %eax, %r14d                 #  55    0x7b725  3      
  nop                             #  56    0x7b728  1      
  nop                             #  57    0x7b729  1      
.L_7b760:                         #        0x7b72a  0      
  subl $0x1, %r12d                #  58    0x7b72a  4      
  jns .L_7b6e0                    #  59    0x7b72e  6      
  nop                             #  60    0x7b734  1      
  nop                             #  61    0x7b735  1      
.L_7b780:                         #        0x7b736  0      
  movl %r13d, %r13d               #  62    0x7b736  3      
  movl (%r15,%r13,1), %r13d       #  63    0x7b739  4      
  testq %r13, %r13                #  64    0x7b73d  3      
  jne .L_7b6c0                    #  65    0x7b740  6      
  nop                             #  66    0x7b746  1      
  nop                             #  67    0x7b747  1      
.L_7b7a0:                         #        0x7b748  0      
  nop                             #  68    0x7b748  1      
  nop                             #  69    0x7b749  1      
  callq .__sfp_lock_release       #  70    0x7b74a  5      
  addl $0x18, %esp                #  71    0x7b74f  3      
  addq %r15, %rsp                 #  72    0x7b752  3      
  movl %r14d, %eax                #  73    0x7b755  3      
  popq %rbx                       #  74    0x7b758  2      
  popq %r12                       #  75    0x7b75a  3      
  popq %r13                       #  76    0x7b75d  3      
  popq %r14                       #  77    0x7b760  3      
  popq %r11                       #  78    0x7b763  3      
  andl $0xffffffe0, %r11d         #  79    0x7b766  7      
  addq %r15, %r11                 #  80    0x7b76d  3      
  jmpq %r11                       #  81    0x7b770  3      
  nop                             #  82    0x7b773  1      
.L_7b7e0:                         #        0x7b774  0      
  movl %eax, %edi                 #  83    0x7b774  2      
  nop                             #  84    0x7b776  1      
  nop                             #  85    0x7b777  1      
  callq .__sinit                  #  86    0x7b778  5      
  jmpq .L_7b6a0                   #  87    0x7b77d  5      
  nop                             #  88    0x7b782  1      
  nop                             #  89    0x7b783  1      
                                                           
.size _fwalk_reent, .-_fwalk_reent

