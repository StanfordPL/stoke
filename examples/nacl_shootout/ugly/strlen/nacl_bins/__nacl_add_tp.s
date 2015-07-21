  .text
  .globl __nacl_add_tp
  .type __nacl_add_tp, @function

#! file-offset 0x158060
#! rip-offset  0x118060
#! capacity    64 bytes

# Text                     #  Line  RIP       Bytes  Opcode    
.__nacl_add_tp:            #        0x118060  0      OPC=0     
  pushq %rbx               #  1     0x118060  1      OPC=1861  
  movl %edi, %ebx          #  2     0x118061  2      OPC=1157  
  nop                      #  3     0x118063  1      OPC=1343  
  nop                      #  4     0x118064  1      OPC=1343  
  nop                      #  5     0x118065  1      OPC=1343  
  nop                      #  6     0x118066  1      OPC=1343  
  nop                      #  7     0x118067  1      OPC=1343  
  nop                      #  8     0x118068  1      OPC=1343  
  nop                      #  9     0x118069  1      OPC=1343  
  nop                      #  10    0x11806a  1      OPC=1343  
  nop                      #  11    0x11806b  1      OPC=1343  
  nop                      #  12    0x11806c  1      OPC=1343  
  nop                      #  13    0x11806d  1      OPC=1343  
  nop                      #  14    0x11806e  1      OPC=1343  
  nop                      #  15    0x11806f  1      OPC=1343  
  nop                      #  16    0x118070  1      OPC=1343  
  nop                      #  17    0x118071  1      OPC=1343  
  nop                      #  18    0x118072  1      OPC=1343  
  nop                      #  19    0x118073  1      OPC=1343  
  nop                      #  20    0x118074  1      OPC=1343  
  nop                      #  21    0x118075  1      OPC=1343  
  nop                      #  22    0x118076  1      OPC=1343  
  nop                      #  23    0x118077  1      OPC=1343  
  nop                      #  24    0x118078  1      OPC=1343  
  nop                      #  25    0x118079  1      OPC=1343  
  nop                      #  26    0x11807a  1      OPC=1343  
  callq .nacl_tls_get      #  27    0x11807b  5      OPC=260   
  addl %ebx, %eax          #  28    0x118080  2      OPC=67    
  popq %rbx                #  29    0x118082  1      OPC=1694  
  popq %r11                #  30    0x118083  2      OPC=1694  
  andl $0xffffffe0, %r11d  #  31    0x118085  7      OPC=131   
  nop                      #  32    0x11808c  1      OPC=1343  
  nop                      #  33    0x11808d  1      OPC=1343  
  nop                      #  34    0x11808e  1      OPC=1343  
  nop                      #  35    0x11808f  1      OPC=1343  
  addq %r15, %r11          #  36    0x118090  3      OPC=72    
  jmpq %r11                #  37    0x118093  3      OPC=928   
  nop                      #  38    0x118096  1      OPC=1343  
  nop                      #  39    0x118097  1      OPC=1343  
  nop                      #  40    0x118098  1      OPC=1343  
  nop                      #  41    0x118099  1      OPC=1343  
  nop                      #  42    0x11809a  1      OPC=1343  
  nop                      #  43    0x11809b  1      OPC=1343  
  nop                      #  44    0x11809c  1      OPC=1343  
  nop                      #  45    0x11809d  1      OPC=1343  
  nop                      #  46    0x11809e  1      OPC=1343  
  nop                      #  47    0x11809f  1      OPC=1343  
  nop                      #  48    0x1180a0  1      OPC=1343  
  nop                      #  49    0x1180a1  1      OPC=1343  
  nop                      #  50    0x1180a2  1      OPC=1343  
  nop                      #  51    0x1180a3  1      OPC=1343  
  nop                      #  52    0x1180a4  1      OPC=1343  
  nop                      #  53    0x1180a5  1      OPC=1343  
  nop                      #  54    0x1180a6  1      OPC=1343  
                                                               
.size __nacl_add_tp, .-__nacl_add_tp

