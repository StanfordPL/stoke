  .text
  .globl _ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception
  .type _ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception, @function

#! file-offset 0x4b420
#! rip-offset  0x4b420
#! capacity    192 bytes

# Text                                                                   #  Line  RIP      Bytes  
._ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception:  #        0x4b420  0      
  cmpl $0x1, %edi                                                        #  1     0x4b420  3      
  pushq %rbx                                                             #  2     0x4b423  2      
  leal -0x40(%rsi), %ebx                                                 #  3     0x4b425  3      
  ja .L_4b4c0                                                            #  4     0x4b428  6      
  movl $0xffffffff, %eax                                                 #  5     0x4b42e  5      
  movl %ebx, %ebx                                                        #  6     0x4b433  2      
  lock                                                                   #  7     0x4b435  1      
  xaddl %eax, (%r15,%rbx,1)                                              #  8     0x4b436  5      
  cmpl $0x1, %eax                                                        #  9     0x4b43b  3      
  nop                                                                    #  10    0x4b43e  1      
  jne .L_4b480                                                           #  11    0x4b43f  6      
  movl %ebx, %ebx                                                        #  12    0x4b445  2      
  movl 0x14(%r15,%rbx,1), %eax                                           #  13    0x4b447  5      
  testq %rax, %rax                                                       #  14    0x4b44c  3      
  je .L_4b4a0                                                            #  15    0x4b44f  6      
  addl $0x60, %ebx                                                       #  16    0x4b455  3      
  movl %ebx, %edi                                                        #  17    0x4b458  2      
  nop                                                                    #  18    0x4b45a  1      
  andl $0xffffffe0, %eax                                                 #  19    0x4b45b  5      
  addq %r15, %rax                                                        #  20    0x4b460  3      
  callq %rax                                                             #  21    0x4b463  2      
  movl %ebx, %edi                                                        #  22    0x4b465  2      
  popq %rbx                                                              #  23    0x4b467  2      
  jmpq .__cxa_free_exception                                             #  24    0x4b469  5      
  nop                                                                    #  25    0x4b46e  1      
  nop                                                                    #  26    0x4b46f  1      
.L_4b480:                                                                #        0x4b470  0      
  popq %rbx                                                              #  27    0x4b470  2      
  popq %r11                                                              #  28    0x4b472  3      
  andl $0xffffffe0, %r11d                                                #  29    0x4b475  7      
  addq %r15, %r11                                                        #  30    0x4b47c  3      
  jmpq %r11                                                              #  31    0x4b47f  3      
  nop                                                                    #  32    0x4b482  1      
  nop                                                                    #  33    0x4b483  1      
.L_4b4a0:                                                                #        0x4b484  0      
  addl $0x60, %ebx                                                       #  34    0x4b484  3      
  movl %ebx, %edi                                                        #  35    0x4b487  2      
  popq %rbx                                                              #  36    0x4b489  2      
  jmpq .__cxa_free_exception                                             #  37    0x4b48b  5      
  nop                                                                    #  38    0x4b490  1      
  nop                                                                    #  39    0x4b491  1      
.L_4b4c0:                                                                #        0x4b492  0      
  movl %ebx, %ebx                                                        #  40    0x4b492  2      
  movl 0x1c(%r15,%rbx,1), %edi                                           #  41    0x4b494  5      
  nop                                                                    #  42    0x4b499  1      
  nop                                                                    #  43    0x4b49a  1      
  callq ._ZN10__cxxabiv111__terminateEPFvvE                              #  44    0x4b49b  5      
                                                                                                  
.size _ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception, .-_ZL23__gxx_exception_cleanup19_Unwind_Reason_CodeP17_Unwind_Exception

