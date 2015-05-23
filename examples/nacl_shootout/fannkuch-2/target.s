  .text
  .globl fannkuchredux
  .type fannkuchredux, @function

#! file-offset 0x60490
#! rip-offset  0x20490
#! capacity    1632 bytes

# Text                           #  Line  RIP      Bytes  
.fannkuchredux:                  #        0x201e0  0      
  movl %r9d, %edx                #  159   0x203e2  3      
  xorl %r13d, %r13d              #  160   0x203e5  3      
  movl %r14d, %r11d              #  161   0x203e8  3      
  movl %r14d, %r12d              #  162   0x203eb  3      
  movl %r10d, -0x24(%rbp)        #  163   0x203ee  4      
  movq %rbx, -0x30(%rbp)         #  164   0x203f2  4      
  leal 0x1(%rdx), %r10d          #  165   0x203f6  4      
  sarl $0x1, %r10d               #  166   0x203fa  3      
  testl %r10d, %r10d             #  167   0x203fd  3      
  jle .L_20560                   #  168   0x20400  6      
  nop                            #  169   0x20406  1      
.L_204c0:                        #        0x20407  0      
  leal (%r14,%rdx,4), %edx       #  170   0x20407  4      
  movl %r11d, %ecx               #  171   0x2040b  3      
  xorl %eax, %eax                #  172   0x2040e  2      
  movq %r12, %rsi                #  173   0x20410  3      
  jmpq .L_20500                  #  174   0x20413  5      
  nop                            #  175   0x20418  1      
  nop                            #  176   0x20419  1      
.L_204e0:                        #        0x2041a  0      
  movl %ecx, %esi                #  177   0x2041a  2      
  movl %esi, %esi                #  178   0x2041c  2      
  movl (%r15,%rsi,1), %r9d       #  179   0x2041e  4      
  nop                            #  180   0x20422  1      
  nop                            #  181   0x20423  1      
.L_20500:                        #        0x20424  0      
  movl %edx, %ebx                #  182   0x20424  2      
  movl %ebx, %ebx                #  183   0x20426  2      
  movl (%r15,%rbx,1), %r8d       #  184   0x20428  4      
  movl %esi, %esi                #  185   0x2042c  2      
  movl %r8d, (%r15,%rsi,1)       #  186   0x2042e  4      
  movl %ebx, %ebx                #  187   0x20432  2      
  movl %r9d, (%r15,%rbx,1)       #  188   0x20434  4      
  addl $0x1, %eax                #  189   0x20438  3      
  subl $0x4, %edx                #  190   0x2043b  3      
  addl $0x4, %ecx                #  191   0x2043e  3      
  cmpl %r10d, %eax               #  192   0x20441  3      
  jne .L_204e0                   #  193   0x20444  6      
  movl %r14d, %r14d              #  194   0x2044a  3      
  movl (%r15,%r14,1), %edx       #  195   0x2044d  4      
  addl $0x1, %r13d               #  196   0x20451  4      
  testl %edx, %edx               #  197   0x20455  2      
  je .L_20580                    #  198   0x20457  6      
  nop                            #  199   0x2045d  1      
.L_20540:                        #        0x2045e  0      
  movl %edx, %r9d                #  200   0x2045e  3      
  leal 0x1(%rdx), %r10d          #  201   0x20461  4      
  sarl $0x1, %r10d               #  202   0x20465  3      
  testl %r10d, %r10d             #  203   0x20468  3      
  jg .L_204c0                    #  204   0x2046b  6      
  nop                            #  205   0x20471  1      
.L_20560:                        #        0x20472  0      
  movl %r9d, %edx                #  206   0x20472  3      
  addl $0x1, %r13d               #  207   0x20475  4      
  testl %edx, %edx               #  208   0x20479  2      
  jne .L_20540                   #  209   0x2047b  6      
  nop                            #  210   0x20481  1      
  nop                            #  211   0x20482  1      
.L_20580:                        #        0x20483  0      
  movl -0x24(%rbp), %r10d        #  212   0x20483  4      
  movq -0x30(%rbp), %rbx         #  213   0x20487  4      
  retq
                                                         
.size fannkuchredux, .-fannkuchredux

