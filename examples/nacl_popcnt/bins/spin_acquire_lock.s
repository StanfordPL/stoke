  .text
  .globl spin_acquire_lock
  .type spin_acquire_lock, @function

#! file-offset 0x60720
#! rip-offset  0x60720
#! capacity    160 bytes

# Text                       #  Line  RIP      Bytes  
.spin_acquire_lock:          #        0x60720  0      
  pushq %r13                 #  1     0x60720  3      
  movl $0x1, %r13d           #  2     0x60723  6      
  pushq %r12                 #  3     0x60729  3      
  movl %edi, %r12d           #  4     0x6072c  3      
  pushq %rbx                 #  5     0x6072f  2      
  xorl %ebx, %ebx            #  6     0x60731  2      
  nop                        #  7     0x60733  1      
  nop                        #  8     0x60734  1      
.L_60740:                    #        0x60735  0      
  movl %r12d, %r12d          #  9     0x60735  3      
  movl (%r15,%r12,1), %eax   #  10    0x60738  4      
  testl %eax, %eax           #  11    0x6073c  2      
  jne .L_60760               #  12    0x6073e  6      
  movl %r13d, %eax           #  13    0x60744  3      
  movl %r12d, %r12d          #  14    0x60747  3      
  xchgl %eax, (%r15,%r12,1)  #  15    0x6074a  4      
  testl %eax, %eax           #  16    0x6074e  2      
  je .L_607a0                #  17    0x60750  6      
  nop                        #  18    0x60756  1      
.L_60760:                    #        0x60757  0      
  addl $0x1, %ebx            #  19    0x60757  3      
  testb $0x3f, %bl           #  20    0x6075a  3      
  jne .L_60740               #  21    0x6075d  6      
  nop                        #  22    0x60763  1      
  nop                        #  23    0x60764  1      
  callq .sched_yield         #  24    0x60765  5      
  jmpq .L_60740              #  25    0x6076a  5      
  nop                        #  26    0x6076f  1      
  nop                        #  27    0x60770  1      
.L_607a0:                    #        0x60771  0      
  popq %rbx                  #  28    0x60771  2      
  popq %r12                  #  29    0x60773  3      
  popq %r13                  #  30    0x60776  3      
  popq %r11                  #  31    0x60779  3      
  andl $0xffffffe0, %r11d    #  32    0x6077c  7      
  addq %r15, %r11            #  33    0x60783  3      
  jmpq %r11                  #  34    0x60786  3      
  nop                        #  35    0x60789  1      
                                                      
.size spin_acquire_lock, .-spin_acquire_lock

