  .text
  .globl __cxa_throw
  .type __cxa_throw, @function

#! file-offset 0x4b2e0
#! rip-offset  0x4b2e0
#! capacity    192 bytes

# Text                              #  Line  RIP      Bytes  
.__cxa_throw:                       #        0x4b2e0  0      
  movl 0xffe520a(%rip), %eax        #  1     0x4b2e0  6      
  pushq %rbx                        #  2     0x4b2e6  2      
  leal -0x60(%rdi), %ebx            #  3     0x4b2e8  3      
  movl %ebx, %ebx                   #  4     0x4b2eb  2      
  movl %esi, 0x10(%r15,%rbx,1)      #  5     0x4b2ed  5      
  movl %ebx, %ebx                   #  6     0x4b2f2  2      
  movl %edx, 0x14(%r15,%rbx,1)      #  7     0x4b2f4  5      
  movl %ebx, %ebx                   #  8     0x4b2f9  2      
  movl %eax, 0x18(%r15,%rbx,1)      #  9     0x4b2fb  5      
  nop                               #  10    0x4b300  1      
  movl 0xffe51ed(%rip), %eax        #  11    0x4b301  6      
  movl %ebx, %ebx                   #  12    0x4b307  2      
  movl $0x1, (%r15,%rbx,1)          #  13    0x4b309  8      
  movl %ebx, %ebx                   #  14    0x4b311  2      
  movl $0x4b3a0, 0x48(%r15,%rbx,1)  #  15    0x4b313  9      
  nop                               #  16    0x4b31c  1      
  movl %ebx, %ebx                   #  17    0x4b31d  2      
  movl %eax, 0x1c(%r15,%rbx,1)      #  18    0x4b31f  5      
  movq $0x474e5543432b2b00, %rax    #  19    0x4b324  10     
  movl %ebx, %ebx                   #  20    0x4b32e  2      
  movq %rax, 0x40(%r15,%rbx,1)      #  21    0x4b330  5      
  addl $0x40, %ebx                  #  22    0x4b335  3      
  movl %ebx, %edi                   #  23    0x4b338  2      
  nop                               #  24    0x4b33a  1      
  nop                               #  25    0x4b33b  1      
  nop                               #  26    0x4b33c  1      
  callq ._Unwind_RaiseException     #  27    0x4b33d  5      
  movl %ebx, %edi                   #  28    0x4b342  2      
  nop                               #  29    0x4b344  1      
  nop                               #  30    0x4b345  1      
  callq .__cxa_begin_catch          #  31    0x4b346  5      
  nop                               #  32    0x4b34b  1      
  nop                               #  33    0x4b34c  1      
  callq ._ZSt9terminatev            #  34    0x4b34d  5      
                                                             
.size __cxa_throw, .-__cxa_throw

