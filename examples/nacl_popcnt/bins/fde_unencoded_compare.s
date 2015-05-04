  .text
  .globl fde_unencoded_compare
  .type fde_unencoded_compare, @function

#! file-offset 0x5dfa0
#! rip-offset  0x5dfa0
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.fde_unencoded_compare:        #        0x5dfa0  0      
  movl %esi, %esi              #  1     0x5dfa0  2      
  movl %edx, %edx              #  2     0x5dfa2  2      
  movl $0x1, %eax              #  3     0x5dfa4  5      
  movl %edx, %edx              #  4     0x5dfa9  2      
  movl 0x8(%r15,%rdx,1), %edx  #  5     0x5dfab  5      
  movl %esi, %esi              #  6     0x5dfb0  2      
  cmpl %edx, 0x8(%r15,%rsi,1)  #  7     0x5dfb2  5      
  popq %r11                    #  8     0x5dfb7  3      
  sbbl %ecx, %ecx              #  9     0x5dfba  2      
  nop                          #  10    0x5dfbc  1      
  movl %esi, %esi              #  11    0x5dfbd  2      
  cmpl %edx, 0x8(%r15,%rsi,1)  #  12    0x5dfbf  5      
  cmovbel %ecx, %eax           #  13    0x5dfc4  3      
  andl $0xffffffe0, %r11d      #  14    0x5dfc7  7      
  addq %r15, %r11              #  15    0x5dfce  3      
  jmpq %r11                    #  16    0x5dfd1  3      
  nop                          #  17    0x5dfd4  1      
                                                        
.size fde_unencoded_compare, .-fde_unencoded_compare

