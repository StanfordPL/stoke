  .text
  .globl __newlib_thread_exit
  .type __newlib_thread_exit, @function

#! file-offset 0x69b20
#! rip-offset  0x69b20
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.__newlib_thread_exit:     #        0x69b20  0      
  popq %r11                #  1     0x69b20  3      
  andl $0xffffffe0, %r11d  #  2     0x69b23  7      
  addq %r15, %r11          #  3     0x69b2a  3      
  jmpq %r11                #  4     0x69b2d  3      
  nop                      #  5     0x69b30  1      
  nop                      #  6     0x69b31  1      
  nop                      #  7     0x69b32  1      
  nop                      #  8     0x69b33  1      
  nop                      #  9     0x69b34  1      
  nop                      #  10    0x69b35  1      
  nop                      #  11    0x69b36  1      
  nop                      #  12    0x69b37  1      
  nop                      #  13    0x69b38  1      
  nop                      #  14    0x69b39  1      
  nop                      #  15    0x69b3a  1      
  nop                      #  16    0x69b3b  1      
  nop                      #  17    0x69b3c  1      
  nop                      #  18    0x69b3d  1      
  nop                      #  19    0x69b3e  1      
  nop                      #  20    0x69b3f  1      
  nop                      #  21    0x69b40  1      
  nop                      #  22    0x69b41  1      
  nop                      #  23    0x69b42  1      
  nop                      #  24    0x69b43  1      
                                                    
.size __newlib_thread_exit, .-__newlib_thread_exit

