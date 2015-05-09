  .text
  .globl __register_frame_info_bases
  .type __register_frame_info_bases, @function

#! file-offset 0x5dda0
#! rip-offset  0x5dda0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
.__register_frame_info_bases:      #        0x5dda0  0      
  movl %edi, %edi                  #  1     0x5dda0  2      
  movl %esi, %esi                  #  2     0x5dda2  2      
  movl %edx, %edx                  #  3     0x5dda4  2      
  testq %rdi, %rdi                 #  4     0x5dda6  3      
  movl %ecx, %ecx                  #  5     0x5dda9  2      
  je .L_5de20                      #  6     0x5ddab  6      
  movl %edi, %edi                  #  7     0x5ddb1  2      
  movl (%r15,%rdi,1), %eax         #  8     0x5ddb3  4      
  testl %eax, %eax                 #  9     0x5ddb7  2      
  je .L_5de20                      #  10    0x5ddb9  6      
  nop                              #  11    0x5ddbf  1      
  movl %esi, %esi                  #  12    0x5ddc0  2      
  movl $0x0, 0x10(%r15,%rsi,1)     #  13    0x5ddc2  9      
  movl %esi, %esi                  #  14    0x5ddcb  2      
  movl %edi, 0xc(%r15,%rsi,1)      #  15    0x5ddcd  5      
  movl %esi, %esi                  #  16    0x5ddd2  2      
  movw $0x7f8, 0x10(%r15,%rsi,1)   #  17    0x5ddd4  8      
  nop                              #  18    0x5dddc  1      
  movl 0xffd8a75(%rip), %eax       #  19    0x5dddd  6      
  movl %esi, %esi                  #  20    0x5dde3  2      
  movl $0xffffffff, (%r15,%rsi,1)  #  21    0x5dde5  8      
  movl %esi, %esi                  #  22    0x5dded  2      
  movl %edx, 0x4(%r15,%rsi,1)      #  23    0x5ddef  5      
  movl %esi, %esi                  #  24    0x5ddf4  2      
  movl %ecx, 0x8(%r15,%rsi,1)      #  25    0x5ddf6  5      
  xchgw %ax, %ax                   #  26    0x5ddfb  3      
  movl %esi, %esi                  #  27    0x5ddfe  2      
  movl %eax, 0x14(%r15,%rsi,1)     #  28    0x5de00  5      
  movl %esi, 0xffd8a4d(%rip)       #  29    0x5de05  6      
  nop                              #  30    0x5de0b  1      
  nop                              #  31    0x5de0c  1      
.L_5de20:                          #        0x5de0d  0      
  popq %r11                        #  32    0x5de0d  3      
  andl $0xffffffe0, %r11d          #  33    0x5de10  7      
  addq %r15, %r11                  #  34    0x5de17  3      
  jmpq %r11                        #  35    0x5de1a  3      
  nop                              #  36    0x5de1d  1      
  nop                              #  37    0x5de1e  1      
                                                            
.size __register_frame_info_bases, .-__register_frame_info_bases

