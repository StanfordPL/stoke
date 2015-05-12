  .text
  .globl __fp_lock
  .type __fp_lock, @function

#! file-offset 0x7aee0
#! rip-offset  0x7aee0
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  
.__fp_lock:                              #        0x7aee0  0      
  movl %edi, %edi                        #  1     0x7aee0  2      
  subl $0x8, %esp                        #  2     0x7aee2  3      
  addq %r15, %rsp                        #  3     0x7aee5  3      
  movl %edi, %edi                        #  4     0x7aee8  2      
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x7aeea  6      
  jne .L_7af00                           #  6     0x7aef0  6      
  addl $0x5c, %edi                       #  7     0x7aef6  3      
  nop                                    #  8     0x7aef9  1      
  callq .__local_lock_acquire_recursive  #  9     0x7aefa  5      
.L_7af00:                                #        0x7aeff  0      
  addl $0x8, %esp                        #  10    0x7aeff  3      
  addq %r15, %rsp                        #  11    0x7af02  3      
  xorl %eax, %eax                        #  12    0x7af05  2      
  popq %r11                              #  13    0x7af07  3      
  andl $0xffffffe0, %r11d                #  14    0x7af0a  7      
  addq %r15, %r11                        #  15    0x7af11  3      
  jmpq %r11                              #  16    0x7af14  3      
  nop                                    #  17    0x7af17  1      
                                                                  
.size __fp_lock, .-__fp_lock

