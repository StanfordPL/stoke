  .text
  .globl __fp_unlock
  .type __fp_unlock, @function

#! file-offset 0x7ae80
#! rip-offset  0x7ae80
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  
.__fp_unlock:                            #        0x7ae80  0      
  movl %edi, %edi                        #  1     0x7ae80  2      
  subl $0x8, %esp                        #  2     0x7ae82  3      
  addq %r15, %rsp                        #  3     0x7ae85  3      
  movl %edi, %edi                        #  4     0x7ae88  2      
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x7ae8a  6      
  jne .L_7aea0                           #  6     0x7ae90  6      
  addl $0x5c, %edi                       #  7     0x7ae96  3      
  nop                                    #  8     0x7ae99  1      
  callq .__local_lock_release_recursive  #  9     0x7ae9a  5      
.L_7aea0:                                #        0x7ae9f  0      
  addl $0x8, %esp                        #  10    0x7ae9f  3      
  addq %r15, %rsp                        #  11    0x7aea2  3      
  xorl %eax, %eax                        #  12    0x7aea5  2      
  popq %r11                              #  13    0x7aea7  3      
  andl $0xffffffe0, %r11d                #  14    0x7aeaa  7      
  addq %r15, %r11                        #  15    0x7aeb1  3      
  jmpq %r11                              #  16    0x7aeb4  3      
  nop                                    #  17    0x7aeb7  1      
                                                                  
.size __fp_unlock, .-__fp_unlock

