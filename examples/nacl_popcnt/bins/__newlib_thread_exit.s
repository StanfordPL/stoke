  .text
  .globl __newlib_thread_exit
  .type __newlib_thread_exit, @function

#! file-offset 0x69ba0
#! rip-offset  0x69ba0
#! capacity    32 bytes

# Text                     #  Line  RIP      Bytes  
.__newlib_thread_exit:     #        0x69ba0  0      
  popq %r11                #  1     0x69ba0  3      
  andl $0xffffffe0, %r11d  #  2     0x69ba3  7      
  addq %r15, %r11          #  3     0x69baa  3      
  jmpq %r11                #  4     0x69bad  3      
  nop                      #  5     0x69bb0  1      
  nop                      #  6     0x69bb1  1      
  nop                      #  7     0x69bb2  1      
  nop                      #  8     0x69bb3  1      
  nop                      #  9     0x69bb4  1      
  nop                      #  10    0x69bb5  1      
  nop                      #  11    0x69bb6  1      
  nop                      #  12    0x69bb7  1      
  nop                      #  13    0x69bb8  1      
  nop                      #  14    0x69bb9  1      
  nop                      #  15    0x69bba  1      
  nop                      #  16    0x69bbb  1      
  nop                      #  17    0x69bbc  1      
  nop                      #  18    0x69bbd  1      
  nop                      #  19    0x69bbe  1      
  nop                      #  20    0x69bbf  1      
  nop                      #  21    0x69bc0  1      
  nop                      #  22    0x69bc1  1      
  nop                      #  23    0x69bc2  1      
  nop                      #  24    0x69bc3  1      
                                                    
.size __newlib_thread_exit, .-__newlib_thread_exit

