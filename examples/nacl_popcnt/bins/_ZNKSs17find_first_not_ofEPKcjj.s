  .text
  .globl _ZNKSs17find_first_not_ofEPKcjj
  .type _ZNKSs17find_first_not_ofEPKcjj, @function

#! file-offset 0x45180
#! rip-offset  0x45180
#! capacity    224 bytes

# Text                             #  Line  RIP      Bytes  
._ZNKSs17find_first_not_ofEPKcjj:  #        0x45180  0      
  pushq %r14                       #  1     0x45180  3      
  movl %edi, %edi                  #  2     0x45183  2      
  movl %esi, %r14d                 #  3     0x45185  3      
  pushq %r13                       #  4     0x45188  3      
  pushq %r12                       #  5     0x4518b  3      
  pushq %rbx                       #  6     0x4518e  2      
  movl %edx, %ebx                  #  7     0x45190  2      
  subl $0x18, %esp                 #  8     0x45192  3      
  addq %r15, %rsp                  #  9     0x45195  3      
  movl %edi, %edi                  #  10    0x45198  2      
  movl (%r15,%rdi,1), %r12d        #  11    0x4519a  4      
  movl %ecx, 0xc(%rsp)             #  12    0x4519e  4      
  xchgw %ax, %ax                   #  13    0x451a2  3      
  leal -0xc(%r12), %eax            #  14    0x451a5  5      
  movl %eax, %eax                  #  15    0x451aa  2      
  movl (%r15,%rax,1), %r13d        #  16    0x451ac  4      
  cmpl %r13d, %edx                 #  17    0x451b0  3      
  jae .L_45240                     #  18    0x451b3  6      
  leal (%rbx,%r12,1), %r12d        #  19    0x451b9  4      
  jmpq .L_451e0                    #  20    0x451bd  5      
  nop                              #  21    0x451c2  1      
.L_451c0:                          #        0x451c3  0      
  addl $0x1, %ebx                  #  22    0x451c3  3      
  addl $0x1, %r12d                 #  23    0x451c6  4      
  cmpl %r13d, %ebx                 #  24    0x451ca  3      
  jae .L_45240                     #  25    0x451cd  6      
  nop                              #  26    0x451d3  1      
  nop                              #  27    0x451d4  1      
.L_451e0:                          #        0x451d5  0      
  movl %r12d, %eax                 #  28    0x451d5  3      
  movl 0xc(%rsp), %edx             #  29    0x451d8  4      
  movl %r14d, %edi                 #  30    0x451dc  3      
  movl %eax, %eax                  #  31    0x451df  2      
  movsbl (%r15,%rax,1), %esi       #  32    0x451e1  5      
  nop                              #  33    0x451e6  1      
  callq .memchr                    #  34    0x451e7  5      
  testl %eax, %eax                 #  35    0x451ec  2      
  jne .L_451c0                     #  36    0x451ee  6      
  nop                              #  37    0x451f4  1      
  nop                              #  38    0x451f5  1      
.L_45220:                          #        0x451f6  0      
  addl $0x18, %esp                 #  39    0x451f6  3      
  addq %r15, %rsp                  #  40    0x451f9  3      
  movl %ebx, %eax                  #  41    0x451fc  2      
  popq %rbx                        #  42    0x451fe  2      
  popq %r12                        #  43    0x45200  3      
  popq %r13                        #  44    0x45203  3      
  popq %r14                        #  45    0x45206  3      
  popq %r11                        #  46    0x45209  3      
  andl $0xffffffe0, %r11d          #  47    0x4520c  7      
  addq %r15, %r11                  #  48    0x45213  3      
  jmpq %r11                        #  49    0x45216  3      
  nop                              #  50    0x45219  1      
.L_45240:                          #        0x4521a  0      
  movl $0xffffffff, %ebx           #  51    0x4521a  5      
  jmpq .L_45220                    #  52    0x4521f  5      
  nop                              #  53    0x45224  1      
  nop                              #  54    0x45225  1      
  nop                              #  55    0x45226  1      
  nop                              #  56    0x45227  1      
  nop                              #  57    0x45228  1      
  nop                              #  58    0x45229  1      
  nop                              #  59    0x4522a  1      
  nop                              #  60    0x4522b  1      
  nop                              #  61    0x4522c  1      
  nop                              #  62    0x4522d  1      
  nop                              #  63    0x4522e  1      
  nop                              #  64    0x4522f  1      
  nop                              #  65    0x45230  1      
  nop                              #  66    0x45231  1      
  nop                              #  67    0x45232  1      
  nop                              #  68    0x45233  1      
  nop                              #  69    0x45234  1      
  nop                              #  70    0x45235  1      
  nop                              #  71    0x45236  1      
  nop                              #  72    0x45237  1      
  nop                              #  73    0x45238  1      
  nop                              #  74    0x45239  1      
  nop                              #  75    0x4523a  1      
  nop                              #  76    0x4523b  1      
  nop                              #  77    0x4523c  1      
                                                            
.size _ZNKSs17find_first_not_ofEPKcjj, .-_ZNKSs17find_first_not_ofEPKcjj

