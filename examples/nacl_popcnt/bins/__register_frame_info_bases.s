  .text
  .globl __register_frame_info_bases
  .type __register_frame_info_bases, @function

#! file-offset 0x5de40
#! rip-offset  0x5de40
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
.__register_frame_info_bases:      #        0x5de40  0      
  movl %edi, %edi                  #  1     0x5de40  2      
  movl %esi, %esi                  #  2     0x5de42  2      
  movl %edx, %edx                  #  3     0x5de44  2      
  testq %rdi, %rdi                 #  4     0x5de46  3      
  movl %ecx, %ecx                  #  5     0x5de49  2      
  je .L_5dec0                      #  6     0x5de4b  6      
  movl %edi, %edi                  #  7     0x5de51  2      
  movl (%r15,%rdi,1), %eax         #  8     0x5de53  4      
  testl %eax, %eax                 #  9     0x5de57  2      
  je .L_5dec0                      #  10    0x5de59  6      
  nop                              #  11    0x5de5f  1      
  movl %esi, %esi                  #  12    0x5de60  2      
  movl $0x0, 0x10(%r15,%rsi,1)     #  13    0x5de62  9      
  movl %esi, %esi                  #  14    0x5de6b  2      
  movl %edi, 0xc(%r15,%rsi,1)      #  15    0x5de6d  5      
  movl %esi, %esi                  #  16    0x5de72  2      
  movw $0x7f8, 0x10(%r15,%rsi,1)   #  17    0x5de74  8      
  nop                              #  18    0x5de7c  1      
  movl 0xffd89d5(%rip), %eax       #  19    0x5de7d  6      
  movl %esi, %esi                  #  20    0x5de83  2      
  movl $0xffffffff, (%r15,%rsi,1)  #  21    0x5de85  8      
  movl %esi, %esi                  #  22    0x5de8d  2      
  movl %edx, 0x4(%r15,%rsi,1)      #  23    0x5de8f  5      
  movl %esi, %esi                  #  24    0x5de94  2      
  movl %ecx, 0x8(%r15,%rsi,1)      #  25    0x5de96  5      
  xchgw %ax, %ax                   #  26    0x5de9b  3      
  movl %esi, %esi                  #  27    0x5de9e  2      
  movl %eax, 0x14(%r15,%rsi,1)     #  28    0x5dea0  5      
  movl %esi, 0xffd89ad(%rip)       #  29    0x5dea5  6      
  nop                              #  30    0x5deab  1      
  nop                              #  31    0x5deac  1      
.L_5dec0:                          #        0x5dead  0      
  popq %r11                        #  32    0x5dead  3      
  andl $0xffffffe0, %r11d          #  33    0x5deb0  7      
  addq %r15, %r11                  #  34    0x5deb7  3      
  jmpq %r11                        #  35    0x5deba  3      
  nop                              #  36    0x5debd  1      
  nop                              #  37    0x5debe  1      
                                                            
.size __register_frame_info_bases, .-__register_frame_info_bases

