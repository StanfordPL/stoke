  .text
  .globl abort
  .type abort, @function

#! file-offset 0x604a0
#! rip-offset  0x604a0
#! capacity    64 bytes

# Text                    #  Line  RIP      Bytes  
.abort:                   #        0x604a0  0      
  subl $0x8, %esp         #  1     0x604a0  3      
  addq %r15, %rsp         #  2     0x604a3  3      
  movl $0x12, %edx        #  3     0x604a6  5      
  movl $0x10023340, %esi  #  4     0x604ab  5      
  movl $0x2, %edi         #  5     0x604b0  5      
  nop                     #  6     0x604b5  1      
  callq .write            #  7     0x604b6  5      
  ud2                     #  8     0x604bb  2      
  nop                     #  9     0x604bd  1      
  nop                     #  10    0x604be  1      
  nop                     #  11    0x604bf  1      
  nop                     #  12    0x604c0  1      
  nop                     #  13    0x604c1  1      
  nop                     #  14    0x604c2  1      
  nop                     #  15    0x604c3  1      
  nop                     #  16    0x604c4  1      
  nop                     #  17    0x604c5  1      
  nop                     #  18    0x604c6  1      
  nop                     #  19    0x604c7  1      
  nop                     #  20    0x604c8  1      
  nop                     #  21    0x604c9  1      
  nop                     #  22    0x604ca  1      
  nop                     #  23    0x604cb  1      
  nop                     #  24    0x604cc  1      
  nop                     #  25    0x604cd  1      
  nop                     #  26    0x604ce  1      
  nop                     #  27    0x604cf  1      
  nop                     #  28    0x604d0  1      
  nop                     #  29    0x604d1  1      
  nop                     #  30    0x604d2  1      
  nop                     #  31    0x604d3  1      
  nop                     #  32    0x604d4  1      
  nop                     #  33    0x604d5  1      
  nop                     #  34    0x604d6  1      
  nop                     #  35    0x604d7  1      
  nop                     #  36    0x604d8  1      
  nop                     #  37    0x604d9  1      
  nop                     #  38    0x604da  1      
                                                   
.size abort, .-abort

