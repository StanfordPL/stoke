  .text
  .globl __deregister_frame
  .type __deregister_frame, @function

#! file-offset 0x60480
#! rip-offset  0x60480
#! capacity    128 bytes

# Text                            #  Line  RIP      Bytes  
.__deregister_frame:              #        0x60480  0      
  movl %edi, %edi                 #  1     0x60480  2      
  subl $0x8, %esp                 #  2     0x60482  3      
  addq %r15, %rsp                 #  3     0x60485  3      
  movl %edi, %edi                 #  4     0x60488  2      
  movl (%r15,%rdi,1), %r11d       #  5     0x6048a  4      
  testl %r11d, %r11d              #  6     0x6048e  3      
  jne .L_604c0                    #  7     0x60491  6      
  addl $0x8, %esp                 #  8     0x60497  3      
  addq %r15, %rsp                 #  9     0x6049a  3      
  popq %r11                       #  10    0x6049d  3      
  nop                             #  11    0x604a0  1      
  andl $0xffffffe0, %r11d         #  12    0x604a1  7      
  addq %r15, %r11                 #  13    0x604a8  3      
  jmpq %r11                       #  14    0x604ab  3      
  nop                             #  15    0x604ae  1      
  nop                             #  16    0x604af  1      
.L_604c0:                         #        0x604b0  0      
  nop                             #  17    0x604b0  1      
  nop                             #  18    0x604b1  1      
  callq .__deregister_frame_info  #  19    0x604b2  5      
  addl $0x8, %esp                 #  20    0x604b7  3      
  addq %r15, %rsp                 #  21    0x604ba  3      
  movl %eax, %edi                 #  22    0x604bd  2      
  jmpq .free                      #  23    0x604bf  5      
  nop                             #  24    0x604c4  1      
  nop                             #  25    0x604c5  1      
  nop                             #  26    0x604c6  1      
  nop                             #  27    0x604c7  1      
  nop                             #  28    0x604c8  1      
  nop                             #  29    0x604c9  1      
  nop                             #  30    0x604ca  1      
  nop                             #  31    0x604cb  1      
  nop                             #  32    0x604cc  1      
  nop                             #  33    0x604cd  1      
  nop                             #  34    0x604ce  1      
  nop                             #  35    0x604cf  1      
  nop                             #  36    0x604d0  1      
  nop                             #  37    0x604d1  1      
  nop                             #  38    0x604d2  1      
  nop                             #  39    0x604d3  1      
  nop                             #  40    0x604d4  1      
  nop                             #  41    0x604d5  1      
  nop                             #  42    0x604d6  1      
                                                           
.size __deregister_frame, .-__deregister_frame

