  .text
  .globl _ZNSt13runtime_errorD0Ev
  .type _ZNSt13runtime_errorD0Ev, @function

#! file-offset 0x4eac0
#! rip-offset  0x4eac0
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt13runtime_errorD0Ev:               #        0x4eac0  0      
  pushq %rbx                             #  1     0x4eac0  2      
  movl %edi, %ebx                        #  2     0x4eac2  2      
  subl $0x10, %esp                       #  3     0x4eac4  3      
  addq %r15, %rsp                        #  4     0x4eac7  3      
  movl %ebx, %ebx                        #  5     0x4eaca  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4eacc  5      
  movl %ebx, %ebx                        #  7     0x4ead1  2      
  movl $0x10021198, (%r15,%rbx,1)        #  8     0x4ead3  8      
  subl $0xc, %edi                        #  9     0x4eadb  3      
  nop                                    #  10    0x4eade  1      
  cmpl $0x10031da0, %edi                 #  11    0x4eadf  6      
  jne .L_4eb60                           #  12    0x4eae5  6      
  nop                                    #  13    0x4eaeb  1      
  nop                                    #  14    0x4eaec  1      
.L_4eb00:                                #        0x4eaed  0      
  movl %ebx, %edi                        #  15    0x4eaed  2      
  nop                                    #  16    0x4eaef  1      
  nop                                    #  17    0x4eaf0  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4eaf1  5      
  movl %ebx, %edi                        #  19    0x4eaf6  2      
  nop                                    #  20    0x4eaf8  1      
  nop                                    #  21    0x4eaf9  1      
  callq ._ZdlPv                          #  22    0x4eafa  5      
  addl $0x10, %esp                       #  23    0x4eaff  3      
  addq %r15, %rsp                        #  24    0x4eb02  3      
  popq %rbx                              #  25    0x4eb05  2      
  popq %r11                              #  26    0x4eb07  3      
  andl $0xffffffe0, %r11d                #  27    0x4eb0a  7      
  addq %r15, %r11                        #  28    0x4eb11  3      
  jmpq %r11                              #  29    0x4eb14  3      
  nop                                    #  30    0x4eb17  1      
.L_4eb60:                                #        0x4eb18  0      
  movl %edi, %edi                        #  31    0x4eb18  2      
  movl 0x8(%r15,%rdi,1), %eax            #  32    0x4eb1a  5      
  leal -0x1(%rax), %edx                  #  33    0x4eb1f  3      
  testl %eax, %eax                       #  34    0x4eb22  2      
  movl %edi, %edi                        #  35    0x4eb24  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  36    0x4eb26  5      
  jg .L_4eb00                            #  37    0x4eb2b  6      
  leal 0xf(%rsp), %esi                   #  38    0x4eb31  4      
  xchgw %ax, %ax                         #  39    0x4eb35  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  40    0x4eb38  5      
  jmpq .L_4eb00                          #  41    0x4eb3d  5      
  nop                                    #  42    0x4eb42  1      
  nop                                    #  43    0x4eb43  1      
  nop                                    #  44    0x4eb44  1      
  nop                                    #  45    0x4eb45  1      
  nop                                    #  46    0x4eb46  1      
  nop                                    #  47    0x4eb47  1      
  nop                                    #  48    0x4eb48  1      
  nop                                    #  49    0x4eb49  1      
  nop                                    #  50    0x4eb4a  1      
  nop                                    #  51    0x4eb4b  1      
  nop                                    #  52    0x4eb4c  1      
  nop                                    #  53    0x4eb4d  1      
  nop                                    #  54    0x4eb4e  1      
  nop                                    #  55    0x4eb4f  1      
  nop                                    #  56    0x4eb50  1      
  nop                                    #  57    0x4eb51  1      
  nop                                    #  58    0x4eb52  1      
  nop                                    #  59    0x4eb53  1      
  nop                                    #  60    0x4eb54  1      
  nop                                    #  61    0x4eb55  1      
  nop                                    #  62    0x4eb56  1      
  nop                                    #  63    0x4eb57  1      
  nop                                    #  64    0x4eb58  1      
  nop                                    #  65    0x4eb59  1      
  nop                                    #  66    0x4eb5a  1      
  nop                                    #  67    0x4eb5b  1      
  nop                                    #  68    0x4eb5c  1      
                                                                  
.size _ZNSt13runtime_errorD0Ev, .-_ZNSt13runtime_errorD0Ev

