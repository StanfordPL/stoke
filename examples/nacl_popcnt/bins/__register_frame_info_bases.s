  .text
  .globl __register_frame_info_bases
  .type __register_frame_info_bases, @function

#! file-offset 0x5ddc0
#! rip-offset  0x5ddc0
#! capacity    160 bytes

# Text                             #  Line  RIP      Bytes  
.__register_frame_info_bases:      #        0x5ddc0  0      
  movl %edi, %edi                  #  1     0x5ddc0  2      
  movl %esi, %esi                  #  2     0x5ddc2  2      
  movl %edx, %edx                  #  3     0x5ddc4  2      
  testq %rdi, %rdi                 #  4     0x5ddc6  3      
  movl %ecx, %ecx                  #  5     0x5ddc9  2      
  je .L_5de40                      #  6     0x5ddcb  6      
  movl %edi, %edi                  #  7     0x5ddd1  2      
  movl (%r15,%rdi,1), %eax         #  8     0x5ddd3  4      
  testl %eax, %eax                 #  9     0x5ddd7  2      
  je .L_5de40                      #  10    0x5ddd9  6      
  nop                              #  11    0x5dddf  1      
  movl %esi, %esi                  #  12    0x5dde0  2      
  movl $0x0, 0x10(%r15,%rsi,1)     #  13    0x5dde2  9      
  movl %esi, %esi                  #  14    0x5ddeb  2      
  movl %edi, 0xc(%r15,%rsi,1)      #  15    0x5dded  5      
  movl %esi, %esi                  #  16    0x5ddf2  2      
  movw $0x7f8, 0x10(%r15,%rsi,1)   #  17    0x5ddf4  8      
  nop                              #  18    0x5ddfc  1      
  movl 0xffd8a55(%rip), %eax       #  19    0x5ddfd  6      
  movl %esi, %esi                  #  20    0x5de03  2      
  movl $0xffffffff, (%r15,%rsi,1)  #  21    0x5de05  8      
  movl %esi, %esi                  #  22    0x5de0d  2      
  movl %edx, 0x4(%r15,%rsi,1)      #  23    0x5de0f  5      
  movl %esi, %esi                  #  24    0x5de14  2      
  movl %ecx, 0x8(%r15,%rsi,1)      #  25    0x5de16  5      
  xchgw %ax, %ax                   #  26    0x5de1b  3      
  movl %esi, %esi                  #  27    0x5de1e  2      
  movl %eax, 0x14(%r15,%rsi,1)     #  28    0x5de20  5      
  movl %esi, 0xffd8a2d(%rip)       #  29    0x5de25  6      
  nop                              #  30    0x5de2b  1      
  nop                              #  31    0x5de2c  1      
.L_5de40:                          #        0x5de2d  0      
  popq %r11                        #  32    0x5de2d  3      
  andl $0xffffffe0, %r11d          #  33    0x5de30  7      
  addq %r15, %r11                  #  34    0x5de37  3      
  jmpq %r11                        #  35    0x5de3a  3      
  nop                              #  36    0x5de3d  1      
  nop                              #  37    0x5de3e  1      
                                                            
.size __register_frame_info_bases, .-__register_frame_info_bases

