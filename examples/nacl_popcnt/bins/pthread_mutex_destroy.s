  .text
  .globl pthread_mutex_destroy
  .type pthread_mutex_destroy, @function

#! file-offset 0x423e0
#! rip-offset  0x423e0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  
.pthread_mutex_destroy:        #        0x423e0  0      
  movl %edi, %edi              #  1     0x423e0  2      
  movl %edi, %edi              #  2     0x423e2  2      
  movl (%r15,%rdi,1), %eax     #  3     0x423e4  4      
  testl %eax, %eax             #  4     0x423e8  2      
  jne .L_42400                 #  5     0x423ea  6      
  movl %edi, %edi              #  6     0x423f0  2      
  movl 0x8(%r15,%rdi,1), %eax  #  7     0x423f2  5      
  testl %eax, %eax             #  8     0x423f7  2      
  je .L_42420                  #  9     0x423f9  6      
  nop                          #  10    0x423ff  1      
.L_42400:                      #        0x42400  0      
  movl $0x10, %eax             #  11    0x42400  5      
  popq %r11                    #  12    0x42405  3      
  andl $0xffffffe0, %r11d      #  13    0x42408  7      
  addq %r15, %r11              #  14    0x4240f  3      
  jmpq %r11                    #  15    0x42412  3      
  nop                          #  16    0x42415  1      
.L_42420:                      #        0x42416  0      
  movl %edi, %edi              #  17    0x42416  2      
  movl $0x0, 0x8(%r15,%rdi,1)  #  18    0x42418  9      
  movl %edi, %edi              #  19    0x42421  2      
  movl $0x0, 0xc(%r15,%rdi,1)  #  20    0x42423  9      
  popq %r11                    #  21    0x4242c  3      
  nop                          #  22    0x4242f  1      
  andl $0xffffffe0, %r11d      #  23    0x42430  7      
  addq %r15, %r11              #  24    0x42437  3      
  jmpq %r11                    #  25    0x4243a  3      
  nop                          #  26    0x4243d  1      
  nop                          #  27    0x4243e  1      
                                                        
.size pthread_mutex_destroy, .-pthread_mutex_destroy

