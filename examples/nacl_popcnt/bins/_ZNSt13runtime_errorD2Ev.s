  .text
  .globl _ZNSt13runtime_errorD2Ev
  .type _ZNSt13runtime_errorD2Ev, @function

#! file-offset 0x4ebe0
#! rip-offset  0x4ebe0
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt13runtime_errorD2Ev:               #        0x4ebe0  0      
  pushq %rbx                             #  1     0x4ebe0  2      
  movl %edi, %ebx                        #  2     0x4ebe2  2      
  subl $0x10, %esp                       #  3     0x4ebe4  3      
  addq %r15, %rsp                        #  4     0x4ebe7  3      
  movl %ebx, %ebx                        #  5     0x4ebea  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ebec  5      
  movl %ebx, %ebx                        #  7     0x4ebf1  2      
  movl $0x10021198, (%r15,%rbx,1)        #  8     0x4ebf3  8      
  subl $0xc, %edi                        #  9     0x4ebfb  3      
  nop                                    #  10    0x4ebfe  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ebff  6      
  jne .L_4ec60                           #  12    0x4ec05  6      
  nop                                    #  13    0x4ec0b  1      
  nop                                    #  14    0x4ec0c  1      
.L_4ec20:                                #        0x4ec0d  0      
  movl %ebx, %edi                        #  15    0x4ec0d  2      
  nop                                    #  16    0x4ec0f  1      
  nop                                    #  17    0x4ec10  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ec11  5      
  addl $0x10, %esp                       #  19    0x4ec16  3      
  addq %r15, %rsp                        #  20    0x4ec19  3      
  popq %rbx                              #  21    0x4ec1c  2      
  popq %r11                              #  22    0x4ec1e  3      
  andl $0xffffffe0, %r11d                #  23    0x4ec21  7      
  addq %r15, %r11                        #  24    0x4ec28  3      
  jmpq %r11                              #  25    0x4ec2b  3      
  nop                                    #  26    0x4ec2e  1      
.L_4ec60:                                #        0x4ec2f  0      
  movl %edi, %edi                        #  27    0x4ec2f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4ec31  5      
  leal -0x1(%rax), %edx                  #  29    0x4ec36  3      
  testl %eax, %eax                       #  30    0x4ec39  2      
  movl %edi, %edi                        #  31    0x4ec3b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4ec3d  5      
  jg .L_4ec20                            #  33    0x4ec42  6      
  leal 0xf(%rsp), %esi                   #  34    0x4ec48  4      
  xchgw %ax, %ax                         #  35    0x4ec4c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4ec4f  5      
  jmpq .L_4ec20                          #  37    0x4ec54  5      
  nop                                    #  38    0x4ec59  1      
  nop                                    #  39    0x4ec5a  1      
  nop                                    #  40    0x4ec5b  1      
  nop                                    #  41    0x4ec5c  1      
  nop                                    #  42    0x4ec5d  1      
  nop                                    #  43    0x4ec5e  1      
  nop                                    #  44    0x4ec5f  1      
  nop                                    #  45    0x4ec60  1      
  nop                                    #  46    0x4ec61  1      
  nop                                    #  47    0x4ec62  1      
  nop                                    #  48    0x4ec63  1      
  nop                                    #  49    0x4ec64  1      
  nop                                    #  50    0x4ec65  1      
  nop                                    #  51    0x4ec66  1      
  nop                                    #  52    0x4ec67  1      
  nop                                    #  53    0x4ec68  1      
  nop                                    #  54    0x4ec69  1      
  nop                                    #  55    0x4ec6a  1      
  nop                                    #  56    0x4ec6b  1      
  nop                                    #  57    0x4ec6c  1      
  nop                                    #  58    0x4ec6d  1      
  nop                                    #  59    0x4ec6e  1      
  nop                                    #  60    0x4ec6f  1      
  nop                                    #  61    0x4ec70  1      
  nop                                    #  62    0x4ec71  1      
  nop                                    #  63    0x4ec72  1      
  nop                                    #  64    0x4ec73  1      
  nop                                    #  65    0x4ec74  1      
  nop                                    #  66    0x4ec75  1      
  nop                                    #  67    0x4ec76  1      
                                                                  
.size _ZNSt13runtime_errorD2Ev, .-_ZNSt13runtime_errorD2Ev

