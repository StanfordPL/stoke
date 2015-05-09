  .text
  .globl __register_frame_info_table_bases
  .type __register_frame_info_table_bases, @function

#! file-offset 0x5de60
#! rip-offset  0x5de60
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  
.__register_frame_info_table_bases:  #        0x5de60  0      
  movl %esi, %esi                    #  1     0x5de60  2      
  movl %esi, %esi                    #  2     0x5de62  2      
  movl $0x0, 0x10(%r15,%rsi,1)       #  3     0x5de64  9      
  movl %esi, %esi                    #  4     0x5de6d  2      
  movb $0x2, 0x10(%r15,%rsi,1)       #  5     0x5de6f  6      
  popq %r11                          #  6     0x5de75  3      
  nop                                #  7     0x5de78  1      
  movl %esi, %esi                    #  8     0x5de79  2      
  orw $0x7f8, 0x10(%r15,%rsi,1)      #  9     0x5de7b  8      
  movl %esi, %esi                    #  10    0x5de83  2      
  movl %edi, 0xc(%r15,%rsi,1)        #  11    0x5de85  5      
  movl 0xffd89c8(%rip), %eax         #  12    0x5de8a  6      
  nop                                #  13    0x5de90  1      
  movl %esi, %esi                    #  14    0x5de91  2      
  movl $0xffffffff, (%r15,%rsi,1)    #  15    0x5de93  8      
  movl %esi, %esi                    #  16    0x5de9b  2      
  movl %edx, 0x4(%r15,%rsi,1)        #  17    0x5de9d  5      
  movl %esi, %esi                    #  18    0x5dea2  2      
  movl %ecx, 0x8(%r15,%rsi,1)        #  19    0x5dea4  5      
  movl %esi, %esi                    #  20    0x5dea9  2      
  movl %eax, 0x14(%r15,%rsi,1)       #  21    0x5deab  5      
  nop                                #  22    0x5deb0  1      
  movl %esi, 0xffd89a1(%rip)         #  23    0x5deb1  6      
  andl $0xffffffe0, %r11d            #  24    0x5deb7  7      
  addq %r15, %r11                    #  25    0x5debe  3      
  jmpq %r11                          #  26    0x5dec1  3      
  nop                                #  27    0x5dec4  1      
  nop                                #  28    0x5dec5  1      
                                                              
.size __register_frame_info_table_bases, .-__register_frame_info_table_bases

