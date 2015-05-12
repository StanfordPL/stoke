  .text
  .globl __register_frame_info_table_bases
  .type __register_frame_info_table_bases, @function

#! file-offset 0x5de80
#! rip-offset  0x5de80
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  
.__register_frame_info_table_bases:  #        0x5de80  0      
  movl %esi, %esi                    #  1     0x5de80  2      
  movl %esi, %esi                    #  2     0x5de82  2      
  movl $0x0, 0x10(%r15,%rsi,1)       #  3     0x5de84  9      
  movl %esi, %esi                    #  4     0x5de8d  2      
  movb $0x2, 0x10(%r15,%rsi,1)       #  5     0x5de8f  6      
  popq %r11                          #  6     0x5de95  3      
  nop                                #  7     0x5de98  1      
  movl %esi, %esi                    #  8     0x5de99  2      
  orw $0x7f8, 0x10(%r15,%rsi,1)      #  9     0x5de9b  8      
  movl %esi, %esi                    #  10    0x5dea3  2      
  movl %edi, 0xc(%r15,%rsi,1)        #  11    0x5dea5  5      
  movl 0xffd89a8(%rip), %eax         #  12    0x5deaa  6      
  nop                                #  13    0x5deb0  1      
  movl %esi, %esi                    #  14    0x5deb1  2      
  movl $0xffffffff, (%r15,%rsi,1)    #  15    0x5deb3  8      
  movl %esi, %esi                    #  16    0x5debb  2      
  movl %edx, 0x4(%r15,%rsi,1)        #  17    0x5debd  5      
  movl %esi, %esi                    #  18    0x5dec2  2      
  movl %ecx, 0x8(%r15,%rsi,1)        #  19    0x5dec4  5      
  movl %esi, %esi                    #  20    0x5dec9  2      
  movl %eax, 0x14(%r15,%rsi,1)       #  21    0x5decb  5      
  nop                                #  22    0x5ded0  1      
  movl %esi, 0xffd8981(%rip)         #  23    0x5ded1  6      
  andl $0xffffffe0, %r11d            #  24    0x5ded7  7      
  addq %r15, %r11                    #  25    0x5dede  3      
  jmpq %r11                          #  26    0x5dee1  3      
  nop                                #  27    0x5dee4  1      
  nop                                #  28    0x5dee5  1      
                                                              
.size __register_frame_info_table_bases, .-__register_frame_info_table_bases

