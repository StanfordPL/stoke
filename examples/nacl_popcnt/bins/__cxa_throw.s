  .text
  .globl __cxa_throw
  .type __cxa_throw, @function

#! file-offset 0x4b360
#! rip-offset  0x4b360
#! capacity    192 bytes

# Text                              #  Line  RIP      Bytes  
.__cxa_throw:                       #        0x4b360  0      
  movl 0xffe518a(%rip), %eax        #  1     0x4b360  6      
  pushq %rbx                        #  2     0x4b366  2      
  leal -0x60(%rdi), %ebx            #  3     0x4b368  3      
  movl %ebx, %ebx                   #  4     0x4b36b  2      
  movl %esi, 0x10(%r15,%rbx,1)      #  5     0x4b36d  5      
  movl %ebx, %ebx                   #  6     0x4b372  2      
  movl %edx, 0x14(%r15,%rbx,1)      #  7     0x4b374  5      
  movl %ebx, %ebx                   #  8     0x4b379  2      
  movl %eax, 0x18(%r15,%rbx,1)      #  9     0x4b37b  5      
  nop                               #  10    0x4b380  1      
  movl 0xffe516d(%rip), %eax        #  11    0x4b381  6      
  movl %ebx, %ebx                   #  12    0x4b387  2      
  movl $0x1, (%r15,%rbx,1)          #  13    0x4b389  8      
  movl %ebx, %ebx                   #  14    0x4b391  2      
  movl $0x4b420, 0x48(%r15,%rbx,1)  #  15    0x4b393  9      
  nop                               #  16    0x4b39c  1      
  movl %ebx, %ebx                   #  17    0x4b39d  2      
  movl %eax, 0x1c(%r15,%rbx,1)      #  18    0x4b39f  5      
  movq $0x474e5543432b2b00, %rax    #  19    0x4b3a4  10     
  movl %ebx, %ebx                   #  20    0x4b3ae  2      
  movq %rax, 0x40(%r15,%rbx,1)      #  21    0x4b3b0  5      
  addl $0x40, %ebx                  #  22    0x4b3b5  3      
  movl %ebx, %edi                   #  23    0x4b3b8  2      
  nop                               #  24    0x4b3ba  1      
  nop                               #  25    0x4b3bb  1      
  nop                               #  26    0x4b3bc  1      
  callq ._Unwind_RaiseException     #  27    0x4b3bd  5      
  movl %ebx, %edi                   #  28    0x4b3c2  2      
  nop                               #  29    0x4b3c4  1      
  nop                               #  30    0x4b3c5  1      
  callq .__cxa_begin_catch          #  31    0x4b3c6  5      
  nop                               #  32    0x4b3cb  1      
  nop                               #  33    0x4b3cc  1      
  callq ._ZSt9terminatev            #  34    0x4b3cd  5      
                                                             
.size __cxa_throw, .-__cxa_throw

