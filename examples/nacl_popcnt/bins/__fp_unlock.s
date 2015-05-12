  .text
  .globl __fp_unlock
  .type __fp_unlock, @function

#! file-offset 0x7ae00
#! rip-offset  0x7ae00
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  
.__fp_unlock:                            #        0x7ae00  0      
  movl %edi, %edi                        #  1     0x7ae00  2      
  subl $0x8, %esp                        #  2     0x7ae02  3      
  addq %r15, %rsp                        #  3     0x7ae05  3      
  movl %edi, %edi                        #  4     0x7ae08  2      
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x7ae0a  6      
  jne .L_7ae20                           #  6     0x7ae10  6      
  addl $0x5c, %edi                       #  7     0x7ae16  3      
  nop                                    #  8     0x7ae19  1      
  callq .__local_lock_release_recursive  #  9     0x7ae1a  5      
.L_7ae20:                                #        0x7ae1f  0      
  addl $0x8, %esp                        #  10    0x7ae1f  3      
  addq %r15, %rsp                        #  11    0x7ae22  3      
  xorl %eax, %eax                        #  12    0x7ae25  2      
  popq %r11                              #  13    0x7ae27  3      
  andl $0xffffffe0, %r11d                #  14    0x7ae2a  7      
  addq %r15, %r11                        #  15    0x7ae31  3      
  jmpq %r11                              #  16    0x7ae34  3      
  nop                                    #  17    0x7ae37  1      
                                                                  
.size __fp_unlock, .-__fp_unlock

