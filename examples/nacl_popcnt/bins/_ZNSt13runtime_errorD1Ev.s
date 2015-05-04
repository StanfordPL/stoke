  .text
  .globl _ZNSt13runtime_errorD1Ev
  .type _ZNSt13runtime_errorD1Ev, @function

#! file-offset 0x4eba0
#! rip-offset  0x4eba0
#! capacity    192 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSt13runtime_errorD1Ev:               #        0x4eba0  0      
  pushq %rbx                             #  1     0x4eba0  2      
  movl %edi, %ebx                        #  2     0x4eba2  2      
  subl $0x10, %esp                       #  3     0x4eba4  3      
  addq %r15, %rsp                        #  4     0x4eba7  3      
  movl %ebx, %ebx                        #  5     0x4ebaa  2      
  movl 0x4(%r15,%rbx,1), %edi            #  6     0x4ebac  5      
  movl %ebx, %ebx                        #  7     0x4ebb1  2      
  movl $0x10021198, (%r15,%rbx,1)        #  8     0x4ebb3  8      
  subl $0xc, %edi                        #  9     0x4ebbb  3      
  nop                                    #  10    0x4ebbe  1      
  cmpl $0x10031da0, %edi                 #  11    0x4ebbf  6      
  jne .L_4ec20                           #  12    0x4ebc5  6      
  nop                                    #  13    0x4ebcb  1      
  nop                                    #  14    0x4ebcc  1      
.L_4ebe0:                                #        0x4ebcd  0      
  movl %ebx, %edi                        #  15    0x4ebcd  2      
  nop                                    #  16    0x4ebcf  1      
  nop                                    #  17    0x4ebd0  1      
  callq ._ZNSt9exceptionD2Ev             #  18    0x4ebd1  5      
  addl $0x10, %esp                       #  19    0x4ebd6  3      
  addq %r15, %rsp                        #  20    0x4ebd9  3      
  popq %rbx                              #  21    0x4ebdc  2      
  popq %r11                              #  22    0x4ebde  3      
  andl $0xffffffe0, %r11d                #  23    0x4ebe1  7      
  addq %r15, %r11                        #  24    0x4ebe8  3      
  jmpq %r11                              #  25    0x4ebeb  3      
  nop                                    #  26    0x4ebee  1      
.L_4ec20:                                #        0x4ebef  0      
  movl %edi, %edi                        #  27    0x4ebef  2      
  movl 0x8(%r15,%rdi,1), %eax            #  28    0x4ebf1  5      
  leal -0x1(%rax), %edx                  #  29    0x4ebf6  3      
  testl %eax, %eax                       #  30    0x4ebf9  2      
  movl %edi, %edi                        #  31    0x4ebfb  2      
  movl %edx, 0x8(%r15,%rdi,1)            #  32    0x4ebfd  5      
  jg .L_4ebe0                            #  33    0x4ec02  6      
  leal 0xf(%rsp), %esi                   #  34    0x4ec08  4      
  xchgw %ax, %ax                         #  35    0x4ec0c  3      
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  36    0x4ec0f  5      
  jmpq .L_4ebe0                          #  37    0x4ec14  5      
  nop                                    #  38    0x4ec19  1      
  nop                                    #  39    0x4ec1a  1      
  nop                                    #  40    0x4ec1b  1      
  nop                                    #  41    0x4ec1c  1      
  nop                                    #  42    0x4ec1d  1      
  nop                                    #  43    0x4ec1e  1      
  nop                                    #  44    0x4ec1f  1      
  nop                                    #  45    0x4ec20  1      
  nop                                    #  46    0x4ec21  1      
  nop                                    #  47    0x4ec22  1      
  nop                                    #  48    0x4ec23  1      
  nop                                    #  49    0x4ec24  1      
  nop                                    #  50    0x4ec25  1      
  nop                                    #  51    0x4ec26  1      
  nop                                    #  52    0x4ec27  1      
  nop                                    #  53    0x4ec28  1      
  nop                                    #  54    0x4ec29  1      
  nop                                    #  55    0x4ec2a  1      
  nop                                    #  56    0x4ec2b  1      
  nop                                    #  57    0x4ec2c  1      
  nop                                    #  58    0x4ec2d  1      
  nop                                    #  59    0x4ec2e  1      
  nop                                    #  60    0x4ec2f  1      
  nop                                    #  61    0x4ec30  1      
  nop                                    #  62    0x4ec31  1      
  nop                                    #  63    0x4ec32  1      
  nop                                    #  64    0x4ec33  1      
  nop                                    #  65    0x4ec34  1      
  nop                                    #  66    0x4ec35  1      
  nop                                    #  67    0x4ec36  1      
                                                                  
.size _ZNSt13runtime_errorD1Ev, .-_ZNSt13runtime_errorD1Ev

