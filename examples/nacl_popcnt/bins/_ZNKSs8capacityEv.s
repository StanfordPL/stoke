  .text
  .globl _ZNKSs8capacityEv
  .type _ZNKSs8capacityEv, @function

#! file-offset 0x44500
#! rip-offset  0x44500
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs8capacityEv:            #        0x44500  0      
  movl %edi, %edi              #  1     0x44500  2      
  movl %edi, %edi              #  2     0x44502  2      
  movl (%r15,%rdi,1), %eax     #  3     0x44504  4      
  popq %r11                    #  4     0x44508  3      
  subl $0xc, %eax              #  5     0x4450b  3      
  movl %eax, %eax              #  6     0x4450e  2      
  movl 0x4(%r15,%rax,1), %eax  #  7     0x44510  5      
  andl $0xffffffe0, %r11d      #  8     0x44515  7      
  addq %r15, %r11              #  9     0x4451c  3      
  jmpq %r11                    #  10    0x4451f  3      
  nop                          #  11    0x44522  1      
  nop                          #  12    0x44523  1      
                                                        
.size _ZNKSs8capacityEv, .-_ZNKSs8capacityEv

