  .text
  .globl _ZNKSs8capacityEv
  .type _ZNKSs8capacityEv, @function

#! file-offset 0x44580
#! rip-offset  0x44580
#! capacity    32 bytes

# Text                         #  Line  RIP      Bytes  
._ZNKSs8capacityEv:            #        0x44580  0      
  movl %edi, %edi              #  1     0x44580  2      
  movl %edi, %edi              #  2     0x44582  2      
  movl (%r15,%rdi,1), %eax     #  3     0x44584  4      
  popq %r11                    #  4     0x44588  3      
  subl $0xc, %eax              #  5     0x4458b  3      
  movl %eax, %eax              #  6     0x4458e  2      
  movl 0x4(%r15,%rax,1), %eax  #  7     0x44590  5      
  andl $0xffffffe0, %r11d      #  8     0x44595  7      
  addq %r15, %r11              #  9     0x4459c  3      
  jmpq %r11                    #  10    0x4459f  3      
  nop                          #  11    0x445a2  1      
  nop                          #  12    0x445a3  1      
                                                        
.size _ZNKSs8capacityEv, .-_ZNKSs8capacityEv

