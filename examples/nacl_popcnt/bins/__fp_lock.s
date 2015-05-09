  .text
  .globl __fp_lock
  .type __fp_lock, @function

#! file-offset 0x7aec0
#! rip-offset  0x7aec0
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  
.__fp_lock:                              #        0x7aec0  0      
  movl %edi, %edi                        #  1     0x7aec0  2      
  subl $0x8, %esp                        #  2     0x7aec2  3      
  addq %r15, %rsp                        #  3     0x7aec5  3      
  movl %edi, %edi                        #  4     0x7aec8  2      
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x7aeca  6      
  jne .L_7aee0                           #  6     0x7aed0  6      
  addl $0x5c, %edi                       #  7     0x7aed6  3      
  nop                                    #  8     0x7aed9  1      
  callq .__local_lock_acquire_recursive  #  9     0x7aeda  5      
.L_7aee0:                                #        0x7aedf  0      
  addl $0x8, %esp                        #  10    0x7aedf  3      
  addq %r15, %rsp                        #  11    0x7aee2  3      
  xorl %eax, %eax                        #  12    0x7aee5  2      
  popq %r11                              #  13    0x7aee7  3      
  andl $0xffffffe0, %r11d                #  14    0x7aeea  7      
  addq %r15, %r11                        #  15    0x7aef1  3      
  jmpq %r11                              #  16    0x7aef4  3      
  nop                                    #  17    0x7aef7  1      
                                                                  
.size __fp_lock, .-__fp_lock

