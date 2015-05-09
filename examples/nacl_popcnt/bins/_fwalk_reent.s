  .text
  .globl _fwalk_reent
  .type _fwalk_reent, @function

#! file-offset 0x7b5c0
#! rip-offset  0x7b5c0
#! capacity    448 bytes

# Text                            #  Line  RIP      Bytes  
._fwalk_reent:                    #        0x7b5c0  0      
  pushq %r14                      #  1     0x7b5c0  3      
  movl %edi, %edi                 #  2     0x7b5c3  2      
  movl %esi, %esi                 #  3     0x7b5c5  2      
  pushq %r13                      #  4     0x7b5c7  3      
  pushq %r12                      #  5     0x7b5ca  3      
  pushq %rbx                      #  6     0x7b5cd  2      
  subl $0x18, %esp                #  7     0x7b5cf  3      
  addq %r15, %rsp                 #  8     0x7b5d2  3      
  movq %rdi, (%rsp)               #  9     0x7b5d5  4      
  movq %rsi, 0x8(%rsp)            #  10    0x7b5d9  5      
  nop                             #  11    0x7b5de  1      
  callq .__sfp_lock_acquire       #  12    0x7b5df  5      
  cmpq $0x0, (%rsp)               #  13    0x7b5e4  5      
  je .L_7b600                     #  14    0x7b5e9  6      
  movq (%rsp), %rax               #  15    0x7b5ef  4      
  movl %eax, %eax                 #  16    0x7b5f3  2      
  movl 0x38(%r15,%rax,1), %edx    #  17    0x7b5f5  5      
  testl %edx, %edx                #  18    0x7b5fa  2      
  je .L_7b740                     #  19    0x7b5fc  6      
  nop                             #  20    0x7b602  1      
.L_7b600:                         #        0x7b603  0      
  movl (%rsp), %r13d              #  21    0x7b603  4      
  xorl %r14d, %r14d               #  22    0x7b607  3      
  addl $0x2e0, %r13d              #  23    0x7b60a  7      
  testq %r13, %r13                #  24    0x7b611  3      
  je .L_7b700                     #  25    0x7b614  6      
  nop                             #  26    0x7b61a  1      
.L_7b620:                         #        0x7b61b  0      
  movl %r13d, %r13d               #  27    0x7b61b  3      
  movl 0x4(%r15,%r13,1), %r12d    #  28    0x7b61e  5      
  movl %r13d, %r13d               #  29    0x7b623  3      
  movl 0x8(%r15,%r13,1), %ebx     #  30    0x7b626  5      
  subl $0x1, %r12d                #  31    0x7b62b  4      
  jns .L_7b660                    #  32    0x7b62f  6      
  jmpq .L_7b6e0                   #  33    0x7b635  5      
  nop                             #  34    0x7b63a  1      
.L_7b640:                         #        0x7b63b  0      
  subl $0xffffff80, %ebx          #  35    0x7b63b  6      
  nop                             #  36    0x7b641  1      
  nop                             #  37    0x7b642  1      
.L_7b660:                         #        0x7b643  0      
  movl %ebx, %ebx                 #  38    0x7b643  2      
  movzwl 0xc(%r15,%rbx,1), %eax   #  39    0x7b645  6      
  testw %ax, %ax                  #  40    0x7b64b  3      
  je .L_7b6c0                     #  41    0x7b64e  6      
  cmpw $0x1, %ax                  #  42    0x7b654  4      
  jbe .L_7b6c0                    #  43    0x7b658  6      
  movl %ebx, %ebx                 #  44    0x7b65e  2      
  cmpw $0xffff, 0xe(%r15,%rbx,1)  #  45    0x7b660  8      
  nop                             #  46    0x7b668  1      
  je .L_7b6c0                     #  47    0x7b669  6      
  movl %ebx, %esi                 #  48    0x7b66f  2      
  movl (%rsp), %edi               #  49    0x7b671  3      
  movq 0x8(%rsp), %rdx            #  50    0x7b674  5      
  nop                             #  51    0x7b679  1      
  andl $0xffffffe0, %edx          #  52    0x7b67a  6      
  addq %r15, %rdx                 #  53    0x7b680  3      
  callq %rdx                      #  54    0x7b683  2      
  orl %eax, %r14d                 #  55    0x7b685  3      
  nop                             #  56    0x7b688  1      
  nop                             #  57    0x7b689  1      
.L_7b6c0:                         #        0x7b68a  0      
  subl $0x1, %r12d                #  58    0x7b68a  4      
  jns .L_7b640                    #  59    0x7b68e  6      
  nop                             #  60    0x7b694  1      
  nop                             #  61    0x7b695  1      
.L_7b6e0:                         #        0x7b696  0      
  movl %r13d, %r13d               #  62    0x7b696  3      
  movl (%r15,%r13,1), %r13d       #  63    0x7b699  4      
  testq %r13, %r13                #  64    0x7b69d  3      
  jne .L_7b620                    #  65    0x7b6a0  6      
  nop                             #  66    0x7b6a6  1      
  nop                             #  67    0x7b6a7  1      
.L_7b700:                         #        0x7b6a8  0      
  nop                             #  68    0x7b6a8  1      
  nop                             #  69    0x7b6a9  1      
  callq .__sfp_lock_release       #  70    0x7b6aa  5      
  addl $0x18, %esp                #  71    0x7b6af  3      
  addq %r15, %rsp                 #  72    0x7b6b2  3      
  movl %r14d, %eax                #  73    0x7b6b5  3      
  popq %rbx                       #  74    0x7b6b8  2      
  popq %r12                       #  75    0x7b6ba  3      
  popq %r13                       #  76    0x7b6bd  3      
  popq %r14                       #  77    0x7b6c0  3      
  popq %r11                       #  78    0x7b6c3  3      
  andl $0xffffffe0, %r11d         #  79    0x7b6c6  7      
  addq %r15, %r11                 #  80    0x7b6cd  3      
  jmpq %r11                       #  81    0x7b6d0  3      
  nop                             #  82    0x7b6d3  1      
.L_7b740:                         #        0x7b6d4  0      
  movl %eax, %edi                 #  83    0x7b6d4  2      
  nop                             #  84    0x7b6d6  1      
  nop                             #  85    0x7b6d7  1      
  callq .__sinit                  #  86    0x7b6d8  5      
  jmpq .L_7b600                   #  87    0x7b6dd  5      
  nop                             #  88    0x7b6e2  1      
  nop                             #  89    0x7b6e3  1      
                                                           
.size _fwalk_reent, .-_fwalk_reent

