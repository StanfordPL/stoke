  .text
  .globl _ZN10__cxxabiv111__terminateEPFvvE
  .type _ZN10__cxxabiv111__terminateEPFvvE, @function

#! file-offset 0x4bb60
#! rip-offset  0x4bb60
#! capacity    192 bytes

# Text                                #  Line  RIP      Bytes  
._ZN10__cxxabiv111__terminateEPFvvE:  #        0x4bb60  0      
  subl $0x18, %esp                    #  1     0x4bb60  3      
  addq %r15, %rsp                     #  2     0x4bb63  3      
  movl %edi, %edi                     #  3     0x4bb66  2      
  nop                                 #  4     0x4bb68  1      
  nop                                 #  5     0x4bb69  1      
  andl $0xffffffe0, %edi              #  6     0x4bb6a  6      
  addq %r15, %rdi                     #  7     0x4bb70  3      
  callq %rdi                          #  8     0x4bb73  2      
  nop                                 #  9     0x4bb75  1      
  nop                                 #  10    0x4bb76  1      
  callq .abort                        #  11    0x4bb77  5      
  movl %eax, %edi                     #  12    0x4bb7c  2      
  nop                                 #  13    0x4bb7e  1      
  nop                                 #  14    0x4bb7f  1      
  callq .__cxa_begin_catch            #  15    0x4bb80  5      
  nop                                 #  16    0x4bb85  1      
  nop                                 #  17    0x4bb86  1      
  callq .abort                        #  18    0x4bb87  5      
  movl %eax, 0x8(%rsp)                #  19    0x4bb8c  4      
  nop                                 #  20    0x4bb90  1      
  nop                                 #  21    0x4bb91  1      
  callq .__cxa_end_catch              #  22    0x4bb92  5      
  movl 0x8(%rsp), %eax                #  23    0x4bb97  4      
  movl %eax, %edi                     #  24    0x4bb9b  2      
  nop                                 #  25    0x4bb9d  1      
  nop                                 #  26    0x4bb9e  1      
  callq ._Unwind_Resume               #  27    0x4bb9f  5      
                                                               
.size _ZN10__cxxabiv111__terminateEPFvvE, .-_ZN10__cxxabiv111__terminateEPFvvE

