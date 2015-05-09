  .text
  .globl _ZNKSs8capacityEv
  .type _ZNKSs8capacityEv, @function

#! file-offset 0x444e0
#! rip-offset  0x444e0
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs8capacityEv:            #        0x444e0  0      
  movl %edi, %edi              #  1     0x444e0  2      
  movl %edi, %edi              #  2     0x444e2  2      
  movl (%r15,%rdi,1), %eax     #  3     0x444e4  4      
  popq %r11                    #  4     0x444e8  3      
  subl $0xc, %eax              #  5     0x444eb  3      
  movl %eax, %eax              #  6     0x444ee  2      
  movl 0x4(%r15,%rax,1), %eax  #  7     0x444f0  5      
  andl $0xffffffe0, %r11d      #  8     0x444f5  7      
  addq %r15, %r11              #  9     0x444fc  3      
  jmpq %r11                    #  10    0x444ff  3      
  nop                          #  11    0x44502  1      
  nop                          #  12    0x44503  1      
                                                        
.size _ZNKSs8capacityEv, .-_ZNKSs8capacityEv

