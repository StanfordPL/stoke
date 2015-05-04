  .text
  .globl __register_frame_info_table_bases
  .type __register_frame_info_table_bases, @function

#! file-offset 0x5df00
#! rip-offset  0x5df00
#! capacity    128 bytes

# Text                               #  Line  RIP      Bytes  
.__register_frame_info_table_bases:  #        0x5df00  0      
  movl %esi, %esi                    #  1     0x5df00  2      
  movl %esi, %esi                    #  2     0x5df02  2      
  movl $0x0, 0x10(%r15,%rsi,1)       #  3     0x5df04  9      
  movl %esi, %esi                    #  4     0x5df0d  2      
  movb $0x2, 0x10(%r15,%rsi,1)       #  5     0x5df0f  6      
  popq %r11                          #  6     0x5df15  3      
  nop                                #  7     0x5df18  1      
  movl %esi, %esi                    #  8     0x5df19  2      
  orw $0x7f8, 0x10(%r15,%rsi,1)      #  9     0x5df1b  8      
  movl %esi, %esi                    #  10    0x5df23  2      
  movl %edi, 0xc(%r15,%rsi,1)        #  11    0x5df25  5      
  movl 0xffd8928(%rip), %eax         #  12    0x5df2a  6      
  nop                                #  13    0x5df30  1      
  movl %esi, %esi                    #  14    0x5df31  2      
  movl $0xffffffff, (%r15,%rsi,1)    #  15    0x5df33  8      
  movl %esi, %esi                    #  16    0x5df3b  2      
  movl %edx, 0x4(%r15,%rsi,1)        #  17    0x5df3d  5      
  movl %esi, %esi                    #  18    0x5df42  2      
  movl %ecx, 0x8(%r15,%rsi,1)        #  19    0x5df44  5      
  movl %esi, %esi                    #  20    0x5df49  2      
  movl %eax, 0x14(%r15,%rsi,1)       #  21    0x5df4b  5      
  nop                                #  22    0x5df50  1      
  movl %esi, 0xffd8901(%rip)         #  23    0x5df51  6      
  andl $0xffffffe0, %r11d            #  24    0x5df57  7      
  addq %r15, %r11                    #  25    0x5df5e  3      
  jmpq %r11                          #  26    0x5df61  3      
  nop                                #  27    0x5df64  1      
  nop                                #  28    0x5df65  1      
                                                              
.size __register_frame_info_table_bases, .-__register_frame_info_table_bases

