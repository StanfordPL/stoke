  .text
  .globl fde_unencoded_compare
  .type fde_unencoded_compare, @function

#! file-offset 0x5df20
#! rip-offset  0x5df20
#! capacity    64 bytes

# Text                         #  Line  RIP      Bytes  
.fde_unencoded_compare:        #        0x5df20  0      
  movl %esi, %esi              #  1     0x5df20  2      
  movl %edx, %edx              #  2     0x5df22  2      
  movl $0x1, %eax              #  3     0x5df24  5      
  movl %edx, %edx              #  4     0x5df29  2      
  movl 0x8(%r15,%rdx,1), %edx  #  5     0x5df2b  5      
  movl %esi, %esi              #  6     0x5df30  2      
  cmpl %edx, 0x8(%r15,%rsi,1)  #  7     0x5df32  5      
  popq %r11                    #  8     0x5df37  3      
  sbbl %ecx, %ecx              #  9     0x5df3a  2      
  nop                          #  10    0x5df3c  1      
  movl %esi, %esi              #  11    0x5df3d  2      
  cmpl %edx, 0x8(%r15,%rsi,1)  #  12    0x5df3f  5      
  cmovbel %ecx, %eax           #  13    0x5df44  3      
  andl $0xffffffe0, %r11d      #  14    0x5df47  7      
  addq %r15, %r11              #  15    0x5df4e  3      
  jmpq %r11                    #  16    0x5df51  3      
  nop                          #  17    0x5df54  1      
                                                        
.size fde_unencoded_compare, .-fde_unencoded_compare

