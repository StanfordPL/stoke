  .text
  .globl _ZNK2pp13IMEInputEvent16GetSegmentOffsetEj
  .type _ZNK2pp13IMEInputEvent16GetSegmentOffsetEj, @function

#! file-offset 0x3d380
#! rip-offset  0x3d380
#! capacity    384 bytes

# Text                                                                       #  Line  RIP      Bytes  
._ZNK2pp13IMEInputEvent16GetSegmentOffsetEj:                                 #        0x3d380  0      
  movq %rbx, -0x10(%rsp)                                                     #  1     0x3d380  5      
  movq %r12, -0x8(%rsp)                                                      #  2     0x3d385  5      
  subl $0x18, %esp                                                           #  3     0x3d38a  3      
  addq %r15, %rsp                                                            #  4     0x3d38d  3      
  movl %esi, %r12d                                                           #  5     0x3d390  3      
  movl %edi, %ebx                                                            #  6     0x3d393  2      
  nop                                                                        #  7     0x3d395  1      
  callq ._ZN2pp12_GLOBAL__N_113get_interfaceI21PPB_IMEInputEvent_1_0EEPKT_v  #  8     0x3d396  5      
  testl %eax, %eax                                                           #  9     0x3d39b  2      
  jne .L_3d3c0                                                               #  10    0x3d39d  6      
  movq 0x8(%rsp), %rbx                                                       #  11    0x3d3a3  5      
  movq 0x10(%rsp), %r12                                                      #  12    0x3d3a8  5      
  addl $0x18, %esp                                                           #  13    0x3d3ad  3      
  addq %r15, %rsp                                                            #  14    0x3d3b0  3      
  popq %r11                                                                  #  15    0x3d3b3  3      
  andl $0xffffffe0, %r11d                                                    #  16    0x3d3b6  7      
  addq %r15, %r11                                                            #  17    0x3d3bd  3      
  jmpq %r11                                                                  #  18    0x3d3c0  3      
.L_3d3c0:                                                                    #        0x3d3c3  0      
  cmpb $0x0, 0xfff3946(%rip)                                                 #  19    0x3d3c3  7      
  je .L_3d420                                                                #  20    0x3d3ca  6      
  nop                                                                        #  21    0x3d3d0  1      
  nop                                                                        #  22    0x3d3d1  1      
.L_3d3e0:                                                                    #        0x3d3d2  0      
  movl 0xfff3940(%rip), %eax                                                 #  23    0x3d3d2  6      
  movl %ebx, %ebx                                                            #  24    0x3d3d8  2      
  movl 0x4(%r15,%rbx,1), %edi                                                #  25    0x3d3da  5      
  movl %r12d, %esi                                                           #  26    0x3d3df  3      
  movq 0x8(%rsp), %rbx                                                       #  27    0x3d3e2  5      
  movq 0x10(%rsp), %r12                                                      #  28    0x3d3e7  5      
  nop                                                                        #  29    0x3d3ec  1      
  movl %eax, %eax                                                            #  30    0x3d3ed  2      
  movl 0x10(%r15,%rax,1), %eax                                               #  31    0x3d3ef  5      
  addl $0x18, %esp                                                           #  32    0x3d3f4  3      
  addq %r15, %rsp                                                            #  33    0x3d3f7  3      
  andl $0xffffffe0, %eax                                                     #  34    0x3d3fa  5      
  addq %r15, %rax                                                            #  35    0x3d3ff  3      
  jmpq %rax                                                                  #  36    0x3d402  2      
  nop                                                                        #  37    0x3d404  1      
.L_3d420:                                                                    #        0x3d405  0      
  movl $0x10030d10, %edi                                                     #  38    0x3d405  5      
  nop                                                                        #  39    0x3d40a  1      
  nop                                                                        #  40    0x3d40b  1      
  callq .__cxa_guard_acquire                                                 #  41    0x3d40c  5      
  testl %eax, %eax                                                           #  42    0x3d411  2      
  je .L_3d3e0                                                                #  43    0x3d413  6      
  nop                                                                        #  44    0x3d419  1      
  nop                                                                        #  45    0x3d41a  1      
  callq ._ZN2pp6Module3GetEv                                                 #  46    0x3d41b  5      
  movl %eax, %edi                                                            #  47    0x3d420  2      
  movl $0x10020674, %esi                                                     #  48    0x3d422  5      
  nop                                                                        #  49    0x3d427  1      
  nop                                                                        #  50    0x3d428  1      
  callq ._ZN2pp6Module19GetBrowserInterfaceEPKc                              #  51    0x3d429  5      
  movl $0x10030d10, %edi                                                     #  52    0x3d42e  5      
  movl %eax, 0xfff38df(%rip)                                                 #  53    0x3d433  6      
  nop                                                                        #  54    0x3d439  1      
  nop                                                                        #  55    0x3d43a  1      
  callq .__cxa_guard_release                                                 #  56    0x3d43b  5      
  jmpq .L_3d3e0                                                              #  57    0x3d440  5      
  nop                                                                        #  58    0x3d445  1      
  nop                                                                        #  59    0x3d446  1      
  movl %eax, %ebx                                                            #  60    0x3d447  2      
  movl $0x10030d10, %edi                                                     #  61    0x3d449  5      
  nop                                                                        #  62    0x3d44e  1      
  nop                                                                        #  63    0x3d44f  1      
  callq .__cxa_guard_abort                                                   #  64    0x3d450  5      
  movl %ebx, %edi                                                            #  65    0x3d455  2      
  nop                                                                        #  66    0x3d457  1      
  nop                                                                        #  67    0x3d458  1      
  callq ._Unwind_Resume                                                      #  68    0x3d459  5      
                                                                                                      
.size _ZNK2pp13IMEInputEvent16GetSegmentOffsetEj, .-_ZNK2pp13IMEInputEvent16GetSegmentOffsetEj

