  .text
  .globl _ZN10__cxxabiv111__terminateEPFvvE
  .type _ZN10__cxxabiv111__terminateEPFvvE, @function

#! file-offset 0x4bac0
#! rip-offset  0x4bac0
#! capacity    192 bytes

# Text                                #  Line  RIP      Bytes  
._ZN10__cxxabiv111__terminateEPFvvE:  #        0x4bac0  0      
  subl $0x18, %esp                    #  1     0x4bac0  3      
  addq %r15, %rsp                     #  2     0x4bac3  3      
  movl %edi, %edi                     #  3     0x4bac6  2      
  nop                                 #  4     0x4bac8  1      
  nop                                 #  5     0x4bac9  1      
  andl $0xffffffe0, %edi              #  6     0x4baca  6      
  addq %r15, %rdi                     #  7     0x4bad0  3      
  callq %rdi                          #  8     0x4bad3  2      
  nop                                 #  9     0x4bad5  1      
  nop                                 #  10    0x4bad6  1      
  callq .abort                        #  11    0x4bad7  5      
  movl %eax, %edi                     #  12    0x4badc  2      
  nop                                 #  13    0x4bade  1      
  nop                                 #  14    0x4badf  1      
  callq .__cxa_begin_catch            #  15    0x4bae0  5      
  nop                                 #  16    0x4bae5  1      
  nop                                 #  17    0x4bae6  1      
  callq .abort                        #  18    0x4bae7  5      
  movl %eax, 0x8(%rsp)                #  19    0x4baec  4      
  nop                                 #  20    0x4baf0  1      
  nop                                 #  21    0x4baf1  1      
  callq .__cxa_end_catch              #  22    0x4baf2  5      
  movl 0x8(%rsp), %eax                #  23    0x4baf7  4      
  movl %eax, %edi                     #  24    0x4bafb  2      
  nop                                 #  25    0x4bafd  1      
  nop                                 #  26    0x4bafe  1      
  callq ._Unwind_Resume               #  27    0x4baff  5      
                                                               
.size _ZN10__cxxabiv111__terminateEPFvvE, .-_ZN10__cxxabiv111__terminateEPFvvE

