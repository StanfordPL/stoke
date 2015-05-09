  .text
  .globl __fp_unlock
  .type __fp_unlock, @function

#! file-offset 0x7ade0
#! rip-offset  0x7ade0
#! capacity    64 bytes

# Text                                   #  Line  RIP      Bytes  
.__fp_unlock:                            #        0x7ade0  0      
  movl %edi, %edi                        #  1     0x7ade0  2      
  subl $0x8, %esp                        #  2     0x7ade2  3      
  addq %r15, %rsp                        #  3     0x7ade5  3      
  movl %edi, %edi                        #  4     0x7ade8  2      
  testb $0x2, 0xd(%r15,%rdi,1)           #  5     0x7adea  6      
  jne .L_7ae00                           #  6     0x7adf0  6      
  addl $0x5c, %edi                       #  7     0x7adf6  3      
  nop                                    #  8     0x7adf9  1      
  callq .__local_lock_release_recursive  #  9     0x7adfa  5      
.L_7ae00:                                #        0x7adff  0      
  addl $0x8, %esp                        #  10    0x7adff  3      
  addq %r15, %rsp                        #  11    0x7ae02  3      
  xorl %eax, %eax                        #  12    0x7ae05  2      
  popq %r11                              #  13    0x7ae07  3      
  andl $0xffffffe0, %r11d                #  14    0x7ae0a  7      
  addq %r15, %r11                        #  15    0x7ae11  3      
  jmpq %r11                              #  16    0x7ae14  3      
  nop                                    #  17    0x7ae17  1      
                                                                  
.size __fp_unlock, .-__fp_unlock

