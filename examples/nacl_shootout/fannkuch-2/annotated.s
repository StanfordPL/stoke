  .text
  .globl fannkuchredux
  .type fannkuchredux, @function

#
#
#

#
.fannkuchredux:                  #
  movl %r9d, %edx                # edx holds value of first array entry
                                 # which is also last index of array we're touching
                                 # r9 holds the first value
  xorl %r13d, %r13d              # holds the flip count?
  movl %r14d, %r11d              #
  movl %r14d, %r12d              #
  movl %r10d, -0x24(%rbp)        #
  movq %rbx, -0x30(%rbp)         #
  leal 0x1(%rdx), %r10d          # 
  sarl $0x1, %r10d               #
  testl %r10d, %r10d             # r10 holds number of iterations that need to be done
  jle .L_20560                   # if test fails, we can skip the flips altogether
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
.L_204c0:                        #
  leal (%r14,%rdx,4), %edx       # load offset of last array entry into edx
  movl %r11d, %ecx               # r11d, ecx hold r14 offset
  xorl %eax, %eax                #
  movq %r12, %rsi                # r12 also holds r14 offset
  jmpq .L_20500                  #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
.L_204e0:                        #
  movl %ecx, %esi                #
  movl %esi, %esi                #
  movl (%r15,%rsi,1), %r9d       #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
.L_20500:                        # (edx -> end to flip; esi -> first to fip; r9 -> first value)
  movl %edx, %ebx                #
  movl %ebx, %ebx                #
  movl (%r15,%rbx,1), %r8d       # computes the value of array position pointed to by edx
  movl %esi, %esi                #
  movl %r8d, (%r15,%rsi,1)       #
  movl %ebx, %ebx                #
  movl %r9d, (%r15,%rbx,1)       #
  addl $0x1, %eax                # increment loop counter, bounded by r10d (i.e. initial value)
  subl $0x4, %edx                #
  addl $0x4, %ecx                #
  cmpl %r10d, %eax               #
  jne .L_204e0                   #
  movl %r14d, %r14d              #
  movl (%r15,%r14,1), %edx       # edx = value of first entry in array
  addl $0x1, %r13d               # increment number of flips
  testl %edx, %edx               #
  je .L_20580                    # if edx != 0, do more
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
.L_20540:                        #
  movl %edx, %r9d                #
  leal 0x1(%rdx), %r10d          # calculate r10, the number of iterations through the loop
  sarl $0x1, %r10d               #
  testl %r10d, %r10d             #
  jg .L_204c0                    #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
.L_20560:                        #
  movl %r9d, %edx                #
  addl $0x1, %r13d               #
  testl %edx, %edx               #
  jne .L_20540                   #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
.L_20580:                        #
  movl -0x24(%rbp), %r10d        #
  movq -0x30(%rbp), %rbx         #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  nop                            #
  retq
                                                                   
.size fannkuchredux, .-fannkuchredux

