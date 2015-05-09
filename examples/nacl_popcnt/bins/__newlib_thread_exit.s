  .text
  .globl __newlib_thread_exit
  .type __newlib_thread_exit, @function

#! file-offset 0x69b00
#! rip-offset  0x69b00
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.__newlib_thread_exit:     #        0x69b00  0      
  popq %r11                #  1     0x69b00  3      
  andl $0xffffffe0, %r11d  #  2     0x69b03  7      
  addq %r15, %r11          #  3     0x69b0a  3      
  jmpq %r11                #  4     0x69b0d  3      
  nop                      #  5     0x69b10  1      
  nop                      #  6     0x69b11  1      
  nop                      #  7     0x69b12  1      
  nop                      #  8     0x69b13  1      
  nop                      #  9     0x69b14  1      
  nop                      #  10    0x69b15  1      
  nop                      #  11    0x69b16  1      
  nop                      #  12    0x69b17  1      
  nop                      #  13    0x69b18  1      
  nop                      #  14    0x69b19  1      
  nop                      #  15    0x69b1a  1      
  nop                      #  16    0x69b1b  1      
  nop                      #  17    0x69b1c  1      
  nop                      #  18    0x69b1d  1      
  nop                      #  19    0x69b1e  1      
  nop                      #  20    0x69b1f  1      
  nop                      #  21    0x69b20  1      
  nop                      #  22    0x69b21  1      
  nop                      #  23    0x69b22  1      
  nop                      #  24    0x69b23  1      
                                                    
.size __newlib_thread_exit, .-__newlib_thread_exit

