  .text
  .globl _ZNSs12_S_constructEjcRKSaIcE
  .type _ZNSs12_S_constructEjcRKSaIcE, @function

#! file-offset 0x47b20
#! rip-offset  0x47b20
#! capacity    224 bytes

# Text                                   #  Line  RIP      Bytes  
._ZNSs12_S_constructEjcRKSaIcE:          #        0x47b20  0      
  movq %rbx, -0x20(%rsp)                 #  1     0x47b20  5      
  movq %r12, -0x18(%rsp)                 #  2     0x47b25  5      
  movl $0x10031dac, %r12d                #  3     0x47b2a  6      
  movq %r13, -0x10(%rsp)                 #  4     0x47b30  5      
  movq %r14, -0x8(%rsp)                  #  5     0x47b35  5      
  subl $0x38, %esp                       #  6     0x47b3a  3      
  addq %r15, %rsp                        #  7     0x47b3d  3      
  testl %edi, %edi                       #  8     0x47b40  2      
  movl %edi, %ebx                        #  9     0x47b42  2      
  movl %esi, %r13d                       #  10    0x47b44  3      
  movl %edx, %edx                        #  11    0x47b47  2      
  movl %r12d, %r12d                      #  12    0x47b49  3      
  je .L_47ba0                            #  13    0x47b4c  6      
  xorl %esi, %esi                        #  14    0x47b52  2      
  movb %r13b, 0x8(%rsp)                  #  15    0x47b54  5      
  nop                                    #  16    0x47b59  1      
  callq ._ZNSs4_Rep9_S_createEjjRKSaIcE  #  17    0x47b5a  5      
  cmpl $0x1, %ebx                        #  18    0x47b5f  3      
  movl %eax, %r14d                       #  19    0x47b62  3      
  movzbl 0x8(%rsp), %ecx                 #  20    0x47b65  5      
  leal 0xc(%r14), %r12d                  #  21    0x47b6a  4      
  je .L_47be0                            #  22    0x47b6e  6      
  movsbl %cl, %esi                       #  23    0x47b74  3      
  movl %ebx, %edx                        #  24    0x47b77  2      
  movl %r12d, %edi                       #  25    0x47b79  3      
  xchgw %ax, %ax                         #  26    0x47b7c  3      
  callq .memset                          #  27    0x47b7f  5      
.L_47b80:                                #        0x47b84  0      
  movl %r14d, %r14d                      #  28    0x47b84  3      
  movl %ebx, (%r15,%r14,1)               #  29    0x47b87  4      
  addl %r12d, %ebx                       #  30    0x47b8b  3      
  movl %r14d, %r14d                      #  31    0x47b8e  3      
  movl $0x0, 0x8(%r15,%r14,1)            #  32    0x47b91  9      
  movl %ebx, %ebx                        #  33    0x47b9a  2      
  movb $0x0, (%r15,%rbx,1)               #  34    0x47b9c  5      
  nop                                    #  35    0x47ba1  1      
.L_47ba0:                                #        0x47ba2  0      
  movl %r12d, %eax                       #  36    0x47ba2  3      
  movq 0x18(%rsp), %rbx                  #  37    0x47ba5  5      
  movq 0x20(%rsp), %r12                  #  38    0x47baa  5      
  movq 0x28(%rsp), %r13                  #  39    0x47baf  5      
  movq 0x30(%rsp), %r14                  #  40    0x47bb4  5      
  addl $0x38, %esp                       #  41    0x47bb9  3      
  addq %r15, %rsp                        #  42    0x47bbc  3      
  popq %r11                              #  43    0x47bbf  3      
  nop                                    #  44    0x47bc2  1      
  andl $0xffffffe0, %r11d                #  45    0x47bc3  7      
  addq %r15, %r11                        #  46    0x47bca  3      
  jmpq %r11                              #  47    0x47bcd  3      
  nop                                    #  48    0x47bd0  1      
  nop                                    #  49    0x47bd1  1      
.L_47be0:                                #        0x47bd2  0      
  movl %r12d, %r12d                      #  50    0x47bd2  3      
  movb %r13b, (%r15,%r12,1)              #  51    0x47bd5  4      
  jmpq .L_47b80                          #  52    0x47bd9  5      
  nop                                    #  53    0x47bde  1      
  nop                                    #  54    0x47bdf  1      
  nop                                    #  55    0x47be0  1      
  nop                                    #  56    0x47be1  1      
  nop                                    #  57    0x47be2  1      
  nop                                    #  58    0x47be3  1      
  nop                                    #  59    0x47be4  1      
  nop                                    #  60    0x47be5  1      
  nop                                    #  61    0x47be6  1      
  nop                                    #  62    0x47be7  1      
  nop                                    #  63    0x47be8  1      
  nop                                    #  64    0x47be9  1      
  nop                                    #  65    0x47bea  1      
  nop                                    #  66    0x47beb  1      
  nop                                    #  67    0x47bec  1      
  nop                                    #  68    0x47bed  1      
  nop                                    #  69    0x47bee  1      
  nop                                    #  70    0x47bef  1      
  nop                                    #  71    0x47bf0  1      
  nop                                    #  72    0x47bf1  1      
  nop                                    #  73    0x47bf2  1      
  nop                                    #  74    0x47bf3  1      
  nop                                    #  75    0x47bf4  1      
                                                                  
.size _ZNSs12_S_constructEjcRKSaIcE, .-_ZNSs12_S_constructEjcRKSaIcE

