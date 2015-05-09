  .text
  .globl _ZNSt13runtime_errorD2Ev
  .type _ZNSt13runtime_errorD2Ev, @function

#! file-offset 0x4ebc0
#! rip-offset  0x4ebc0
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt13runtime_errorD2Ev:               #        0x4ebc0  0      
  pushq %rbx                             #  1     0x4ebc0  2      
  movl %edi, %ebx                        #  2     0x4ebc2  2      
  subl $0x10, %esp                       #  3     0x4ebc4  3      
  addq %r15, %rsp                        #  4     0x4ebc7  3      
  movl %ebx, %ebx                        #  5     0x4ebca  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ebcc  5      
  movl %ebx, %ebx                        #  7     0x4ebd1  2      
  movl $0x10021198, (%r15,%rbx,1)        #  8     0x4ebd3  8      
  subl $0xc, %edi                        #  9     0x4ebdb  3      
  nop                                    #  10    0x4ebde  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ebdf  6      
  jne .L_4ec40                           #  12    0x4ebe5  6      
  nop                                    #  13    0x4ebeb  1      
  nop                                    #  14    0x4ebec  1      
.L_4ec00:                                #        0x4ebed  0      
  movl %ebx, %edi                        #  15    0x4ebed  2      
  nop                                    #  16    0x4ebef  1      
  nop                                    #  17    0x4ebf0  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ebf1  5      
  addl $0x10, %esp                       #  19    0x4ebf6  3      
  addq %r15, %rsp                        #  20    0x4ebf9  3      
  popq %rbx                              #  21    0x4ebfc  2      
  popq %r11                              #  22    0x4ebfe  3      
  andl $0xffffffe0, %r11d                #  23    0x4ec01  7      
  addq %r15, %r11                        #  24    0x4ec08  3      
  jmpq %r11                              #  25    0x4ec0b  3      
  nop                                    #  26    0x4ec0e  1      
.L_4ec40:                                #        0x4ec0f  0      
  movl %edi, %edi                        #  27    0x4ec0f  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4ec11  5      
  leal -0x1(%rax), %edx                  #  29    0x4ec16  3      
  testl %eax, %eax                       #  30    0x4ec19  2      
  movl %edi, %edi                        #  31    0x4ec1b  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4ec1d  5      
  jg .L_4ec00                            #  33    0x4ec22  6      
  leal 0xf(%rsp), %esi                   #  34    0x4ec28  4      
  xchgw %ax, %ax                         #  35    0x4ec2c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4ec2f  5      
  jmpq .L_4ec00                          #  37    0x4ec34  5      
  nop                                    #  38    0x4ec39  1      
  nop                                    #  39    0x4ec3a  1      
  nop                                    #  40    0x4ec3b  1      
  nop                                    #  41    0x4ec3c  1      
  nop                                    #  42    0x4ec3d  1      
  nop                                    #  43    0x4ec3e  1      
  nop                                    #  44    0x4ec3f  1      
  nop                                    #  45    0x4ec40  1      
  nop                                    #  46    0x4ec41  1      
  nop                                    #  47    0x4ec42  1      
  nop                                    #  48    0x4ec43  1      
  nop                                    #  49    0x4ec44  1      
  nop                                    #  50    0x4ec45  1      
  nop                                    #  51    0x4ec46  1      
  nop                                    #  52    0x4ec47  1      
  nop                                    #  53    0x4ec48  1      
  nop                                    #  54    0x4ec49  1      
  nop                                    #  55    0x4ec4a  1      
  nop                                    #  56    0x4ec4b  1      
  nop                                    #  57    0x4ec4c  1      
  nop                                    #  58    0x4ec4d  1      
  nop                                    #  59    0x4ec4e  1      
  nop                                    #  60    0x4ec4f  1      
  nop                                    #  61    0x4ec50  1      
  nop                                    #  62    0x4ec51  1      
  nop                                    #  63    0x4ec52  1      
  nop                                    #  64    0x4ec53  1      
  nop                                    #  65    0x4ec54  1      
  nop                                    #  66    0x4ec55  1      
  nop                                    #  67    0x4ec56  1      
                                                                  
.size _ZNSt13runtime_errorD2Ev, .-_ZNSt13runtime_errorD2Ev

