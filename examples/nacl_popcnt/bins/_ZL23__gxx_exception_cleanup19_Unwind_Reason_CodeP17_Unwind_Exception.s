  .text
  .globl _ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception
  .type _ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception, @function

#! file-offset 0x4b3a0
#! rip-offset  0x4b3a0
#! capacity    192 bytes

# Text                                                                   #  Line  RIP      Bytes  
._ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception:  #        0x4b3a0  0      
  cmpl $0x1, %edi                                                        #  1     0x4b3a0  3      
  pushq %rbx                                                             #  2     0x4b3a3  2      
  leal -0x40(%rsi), %ebx                                                 #  3     0x4b3a5  3      
  ja .L_4b440                                                            #  4     0x4b3a8  6      
  movl $0xffffffff, %eax                                                 #  5     0x4b3ae  5      
  movl %ebx, %ebx                                                        #  6     0x4b3b3  2      
  lock                                                                   #  7     0x4b3b5  1      
  xaddl %eax, (%r15,%rbx,1)                                              #  8     0x4b3b6  5      
  cmpl $0x1, %eax                                                        #  9     0x4b3bb  3      
  nop                                                                    #  10    0x4b3be  1      
  jne .L_4b400                                                           #  11    0x4b3bf  6      
  movl %ebx, %ebx                                                        #  12    0x4b3c5  2      
  movl 0x14(%r15,%rbx,1), %eax                                           #  13    0x4b3c7  5      
  testq %rax, %rax                                                       #  14    0x4b3cc  3      
  je .L_4b420                                                            #  15    0x4b3cf  6      
  addl $0x60, %ebx                                                       #  16    0x4b3d5  3      
  movl %ebx, %edi                                                        #  17    0x4b3d8  2      
  nop                                                                    #  18    0x4b3da  1      
  andl $0xffffffe0, %eax                                                 #  19    0x4b3db  5      
  addq %r15, %rax                                                        #  20    0x4b3e0  3      
  callq %rax                                                             #  21    0x4b3e3  2      
  movl %ebx, %edi                                                        #  22    0x4b3e5  2      
  popq %rbx                                                              #  23    0x4b3e7  2      
  jmpq .__cxa_free_exception                                             #  24    0x4b3e9  5      
  nop                                                                    #  25    0x4b3ee  1      
  nop                                                                    #  26    0x4b3ef  1      
.L_4b400:                                                                #        0x4b3f0  0      
  popq %rbx                                                              #  27    0x4b3f0  2      
  popq %r11                                                              #  28    0x4b3f2  3      
  andl $0xffffffe0, %r11d                                                #  29    0x4b3f5  7      
  addq %r15, %r11                                                        #  30    0x4b3fc  3      
  jmpq %r11                                                              #  31    0x4b3ff  3      
  nop                                                                    #  32    0x4b402  1      
  nop                                                                    #  33    0x4b403  1      
.L_4b420:                                                                #        0x4b404  0      
  addl $0x60, %ebx                                                       #  34    0x4b404  3      
  movl %ebx, %edi                                                        #  35    0x4b407  2      
  popq %rbx                                                              #  36    0x4b409  2      
  jmpq .__cxa_free_exception                                             #  37    0x4b40b  5      
  nop                                                                    #  38    0x4b410  1      
  nop                                                                    #  39    0x4b411  1      
.L_4b440:                                                                #        0x4b412  0      
  movl %ebx, %ebx                                                        #  40    0x4b412  2      
  movl 0x1c(%r15,%rbx,1), %edi                                           #  41    0x4b414  5      
  nop                                                                    #  42    0x4b419  1      
  nop                                                                    #  43    0x4b41a  1      
  callq ._ZN10__cxxabiv111__terminateEPFvvE                              #  44    0x4b41b  5      
                                                                                                  
.size _ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception, .-_ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception

