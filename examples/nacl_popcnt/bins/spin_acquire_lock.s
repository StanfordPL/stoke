  .text
  .globl spin_acquire_lock
  .type spin_acquire_lock, @function

#! file-offset 0x607c0
#! rip-offset  0x607c0
#! capacity    160 bytes

# Text                       #  Line  RIP      Bytes  
.spin_acquire_lock:          #        0x607c0  0      
  pushq %r13                 #  1     0x607c0  3      
  movl $0x1, %r13d           #  2     0x607c3  6      
  pushq %r12                 #  3     0x607c9  3      
  movl %edi, %r12d           #  4     0x607cc  3      
  pushq %rbx                 #  5     0x607cf  2      
  xorl %ebx, %ebx            #  6     0x607d1  2      
  nop                        #  7     0x607d3  1      
  nop                        #  8     0x607d4  1      
.L_607e0:                    #        0x607d5  0      
  movl %r12d, %r12d          #  9     0x607d5  3      
  movl (%r15,%r12,1), %eax   #  10    0x607d8  4      
  testl %eax, %eax           #  11    0x607dc  2      
  jne .L_60800               #  12    0x607de  6      
  movl %r13d, %eax           #  13    0x607e4  3      
  movl %r12d, %r12d          #  14    0x607e7  3      
  xchgl %eax, (%r15,%r12,1)  #  15    0x607ea  4      
  testl %eax, %eax           #  16    0x607ee  2      
  je .L_60840                #  17    0x607f0  6      
  nop                        #  18    0x607f6  1      
.L_60800:                    #        0x607f7  0      
  addl $0x1, %ebx            #  19    0x607f7  3      
  testb $0x3f, %bl           #  20    0x607fa  3      
  jne .L_607e0               #  21    0x607fd  6      
  nop                        #  22    0x60803  1      
  nop                        #  23    0x60804  1      
  callq .sched_yield         #  24    0x60805  5      
  jmpq .L_607e0              #  25    0x6080a  5      
  nop                        #  26    0x6080f  1      
  nop                        #  27    0x60810  1      
.L_60840:                    #        0x60811  0      
  popq %rbx                  #  28    0x60811  2      
  popq %r12                  #  29    0x60813  3      
  popq %r13                  #  30    0x60816  3      
  popq %r11                  #  31    0x60819  3      
  andl $0xffffffe0, %r11d    #  32    0x6081c  7      
  addq %r15, %r11            #  33    0x60823  3      
  jmpq %r11                  #  34    0x60826  3      
  nop                        #  35    0x60829  1      
                                                      
.size spin_acquire_lock, .-spin_acquire_lock

