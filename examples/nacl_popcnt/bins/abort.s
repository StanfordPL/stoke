  .text
  .globl abort
  .type abort, @function

#! file-offset 0x60540
#! rip-offset  0x60540
#! capacity    64 bytes

# Text                    #  Line  RIP      Bytes  
.abort:                   #        0x60540  0      
  subl $0x8, %esp         #  1     0x60540  3      
  addq %r15, %rsp         #  2     0x60543  3      
  movl $0x12, %edx        #  3     0x60546  5      
  movl $0x10023340, %esi  #  4     0x6054b  5      
  movl $0x2, %edi         #  5     0x60550  5      
  nop                     #  6     0x60555  1      
  callq .write            #  7     0x60556  5      
  ud2                     #  8     0x6055b  2      
  nop                     #  9     0x6055d  1      
  nop                     #  10    0x6055e  1      
  nop                     #  11    0x6055f  1      
  nop                     #  12    0x60560  1      
  nop                     #  13    0x60561  1      
  nop                     #  14    0x60562  1      
  nop                     #  15    0x60563  1      
  nop                     #  16    0x60564  1      
  nop                     #  17    0x60565  1      
  nop                     #  18    0x60566  1      
  nop                     #  19    0x60567  1      
  nop                     #  20    0x60568  1      
  nop                     #  21    0x60569  1      
  nop                     #  22    0x6056a  1      
  nop                     #  23    0x6056b  1      
  nop                     #  24    0x6056c  1      
  nop                     #  25    0x6056d  1      
  nop                     #  26    0x6056e  1      
  nop                     #  27    0x6056f  1      
  nop                     #  28    0x60570  1      
  nop                     #  29    0x60571  1      
  nop                     #  30    0x60572  1      
  nop                     #  31    0x60573  1      
  nop                     #  32    0x60574  1      
  nop                     #  33    0x60575  1      
  nop                     #  34    0x60576  1      
  nop                     #  35    0x60577  1      
  nop                     #  36    0x60578  1      
  nop                     #  37    0x60579  1      
  nop                     #  38    0x6057a  1      
                                                   
.size abort, .-abort

