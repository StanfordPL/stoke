  .text
  .globl spin_acquire_lock
  .type spin_acquire_lock, @function

#! file-offset 0x60740
#! rip-offset  0x60740
#! capacity    160 bytes

# Text                       #  Line  RIP      Bytes  
.spin_acquire_lock:          #        0x60740  0      
  pushq %r13                 #  1     0x60740  3      
  movl $0x1, %r13d           #  2     0x60743  6      
  pushq %r12                 #  3     0x60749  3      
  movl %edi, %r12d           #  4     0x6074c  3      
  pushq %rbx                 #  5     0x6074f  2      
  xorl %ebx, %ebx            #  6     0x60751  2      
  nop                        #  7     0x60753  1      
  nop                        #  8     0x60754  1      
.L_60760:                    #        0x60755  0      
  movl %r12d, %r12d          #  9     0x60755  3      
  movl (%r15,%r12,1), %eax   #  10    0x60758  4      
  testl %eax, %eax           #  11    0x6075c  2      
  jne .L_60780               #  12    0x6075e  6      
  movl %r13d, %eax           #  13    0x60764  3      
  movl %r12d, %r12d          #  14    0x60767  3      
  xchgl %eax, (%r15,%r12,1)  #  15    0x6076a  4      
  testl %eax, %eax           #  16    0x6076e  2      
  je .L_607c0                #  17    0x60770  6      
  nop                        #  18    0x60776  1      
.L_60780:                    #        0x60777  0      
  addl $0x1, %ebx            #  19    0x60777  3      
  testb $0x3f, %bl           #  20    0x6077a  3      
  jne .L_60760               #  21    0x6077d  6      
  nop                        #  22    0x60783  1      
  nop                        #  23    0x60784  1      
  callq .sched_yield         #  24    0x60785  5      
  jmpq .L_60760              #  25    0x6078a  5      
  nop                        #  26    0x6078f  1      
  nop                        #  27    0x60790  1      
.L_607c0:                    #        0x60791  0      
  popq %rbx                  #  28    0x60791  2      
  popq %r12                  #  29    0x60793  3      
  popq %r13                  #  30    0x60796  3      
  popq %r11                  #  31    0x60799  3      
  andl $0xffffffe0, %r11d    #  32    0x6079c  7      
  addq %r15, %r11            #  33    0x607a3  3      
  jmpq %r11                  #  34    0x607a6  3      
  nop                        #  35    0x607a9  1      
                                                      
.size spin_acquire_lock, .-spin_acquire_lock

