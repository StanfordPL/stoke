  .text
  .globl __fp_lock
  .type __fp_lock, @function

#! file-offset 0x7af60
#! rip-offset  0x7af60
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  
.__fp_lock:                              #        0x7af60  0      
  movl %edi, %edi                        #  1     0x7af60  2      
  subl $0x8, %esp                        #  2     0x7af62  3      
  addq %r15, %rsp                        #  3     0x7af65  3      
  movl %edi, %edi                        #  4     0x7af68  2      
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x7af6a  6      
  jne .L_7af80                           #  6     0x7af70  6      
  addl $0x5c, %edi                       #  7     0x7af76  3      
  nop                                    #  8     0x7af79  1      
  callq .__local_lock_acquire_recursive  #  9     0x7af7a  5      
.L_7af80:                                #        0x7af7f  0      
  addl $0x8, %esp                        #  10    0x7af7f  3      
  addq %r15, %rsp                        #  11    0x7af82  3      
  xorl %eax, %eax                        #  12    0x7af85  2      
  popq %r11                              #  13    0x7af87  3      
  andl $0xffffffe0, %r11d                #  14    0x7af8a  7      
  addq %r15, %r11                        #  15    0x7af91  3      
  jmpq %r11                              #  16    0x7af94  3      
  nop                                    #  17    0x7af97  1      
                                                                  
.size __fp_lock, .-__fp_lock

