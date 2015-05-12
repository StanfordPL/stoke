  .text
  .globl abort
  .type abort, @function

#! file-offset 0x604c0
#! rip-offset  0x604c0
#! capacity    64 bytes

# Text                    #  Line  RIP      Bytes  
.abort:                   #        0x604c0  0      
  subl $0x8, %esp         #  1     0x604c0  3      
  addq %r15, %rsp         #  2     0x604c3  3      
  movl $0x12, %edx        #  3     0x604c6  5      
  movl $0x10023340, %esi  #  4     0x604cb  5      
  movl $0x2, %edi         #  5     0x604d0  5      
  nop                     #  6     0x604d5  1      
  callq .write            #  7     0x604d6  5      
  ud2                     #  8     0x604db  2      
  nop                     #  9     0x604dd  1      
  nop                     #  10    0x604de  1      
  nop                     #  11    0x604df  1      
  nop                     #  12    0x604e0  1      
  nop                     #  13    0x604e1  1      
  nop                     #  14    0x604e2  1      
  nop                     #  15    0x604e3  1      
  nop                     #  16    0x604e4  1      
  nop                     #  17    0x604e5  1      
  nop                     #  18    0x604e6  1      
  nop                     #  19    0x604e7  1      
  nop                     #  20    0x604e8  1      
  nop                     #  21    0x604e9  1      
  nop                     #  22    0x604ea  1      
  nop                     #  23    0x604eb  1      
  nop                     #  24    0x604ec  1      
  nop                     #  25    0x604ed  1      
  nop                     #  26    0x604ee  1      
  nop                     #  27    0x604ef  1      
  nop                     #  28    0x604f0  1      
  nop                     #  29    0x604f1  1      
  nop                     #  30    0x604f2  1      
  nop                     #  31    0x604f3  1      
  nop                     #  32    0x604f4  1      
  nop                     #  33    0x604f5  1      
  nop                     #  34    0x604f6  1      
  nop                     #  35    0x604f7  1      
  nop                     #  36    0x604f8  1      
  nop                     #  37    0x604f9  1      
  nop                     #  38    0x604fa  1      
                                                   
.size abort, .-abort

