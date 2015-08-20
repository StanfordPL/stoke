  .text
  .globl thread_join
  .type thread_join, @function

#! file-offset 0x6d280
#! rip-offset  0x2d280
#! capacity    32 bytes

# Text                #  Line  RIP      Bytes  Opcode            
.thread_join:         #        0x2d280  0      OPC=<label>       
  xorl %esi, %esi     #  1     0x2d280  2      OPC=xorl_r32_r32  
  jmpq .pthread_join  #  2     0x2d282  5      OPC=jmpq_label_1  
  nop                 #  3     0x2d287  1      OPC=nop           
  nop                 #  4     0x2d288  1      OPC=nop           
  nop                 #  5     0x2d289  1      OPC=nop           
  nop                 #  6     0x2d28a  1      OPC=nop           
  nop                 #  7     0x2d28b  1      OPC=nop           
  nop                 #  8     0x2d28c  1      OPC=nop           
  nop                 #  9     0x2d28d  1      OPC=nop           
  nop                 #  10    0x2d28e  1      OPC=nop           
  nop                 #  11    0x2d28f  1      OPC=nop           
  nop                 #  12    0x2d290  1      OPC=nop           
  nop                 #  13    0x2d291  1      OPC=nop           
  nop                 #  14    0x2d292  1      OPC=nop           
  nop                 #  15    0x2d293  1      OPC=nop           
  nop                 #  16    0x2d294  1      OPC=nop           
  nop                 #  17    0x2d295  1      OPC=nop           
  nop                 #  18    0x2d296  1      OPC=nop           
  nop                 #  19    0x2d297  1      OPC=nop           
  nop                 #  20    0x2d298  1      OPC=nop           
  nop                 #  21    0x2d299  1      OPC=nop           
  nop                 #  22    0x2d29a  1      OPC=nop           
  nop                 #  23    0x2d29b  1      OPC=nop           
  nop                 #  24    0x2d29c  1      OPC=nop           
  nop                 #  25    0x2d29d  1      OPC=nop           
  nop                 #  26    0x2d29e  1      OPC=nop           
  nop                 #  27    0x2d29f  1      OPC=nop           
                                                                 
.size thread_join, .-thread_join

