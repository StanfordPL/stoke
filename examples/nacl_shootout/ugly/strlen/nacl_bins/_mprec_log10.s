  .text
  .globl _mprec_log10
  .type _mprec_log10, @function

#! file-offset 0x18a100
#! rip-offset  0x14a100
#! capacity    96 bytes

# Text                                  #  Line  RIP       Bytes  Opcode    
._mprec_log10:                          #        0x14a100  0      OPC=0     
  cmpl $0x17, %edi                      #  1     0x14a100  3      OPC=470   
  jle .L_14a140                         #  2     0x14a103  6      OPC=919   
  nop                                   #  3     0x14a109  1      OPC=1343  
  nop                                   #  4     0x14a10a  1      OPC=1343  
  movsd 0xfef60fb(%rip), %xmm0          #  5     0x14a10b  8      OPC=1263  
  movsd 0xfefe6b3(%rip), %xmm1          #  6     0x14a113  8      OPC=1263  
  nop                                   #  7     0x14a11b  1      OPC=1343  
  nop                                   #  8     0x14a11c  1      OPC=1343  
  nop                                   #  9     0x14a11d  1      OPC=1343  
  nop                                   #  10    0x14a11e  1      OPC=1343  
  nop                                   #  11    0x14a11f  1      OPC=1343  
  nop                                   #  12    0x14a120  1      OPC=1343  
  nop                                   #  13    0x14a121  1      OPC=1343  
  nop                                   #  14    0x14a122  1      OPC=1343  
  nop                                   #  15    0x14a123  1      OPC=1343  
  nop                                   #  16    0x14a124  1      OPC=1343  
  nop                                   #  17    0x14a125  1      OPC=1343  
.L_14a120:                              #        0x14a126  0      OPC=0     
  subl $0x1, %edi                       #  18    0x14a126  3      OPC=2384  
  mulsd %xmm1, %xmm0                    #  19    0x14a129  4      OPC=1326  
  jne .L_14a120                         #  20    0x14a12d  6      OPC=963   
  nop                                   #  21    0x14a133  1      OPC=1343  
  nop                                   #  22    0x14a134  1      OPC=1343  
  popq %r11                             #  23    0x14a135  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  24    0x14a137  7      OPC=131   
  nop                                   #  25    0x14a13e  1      OPC=1343  
  nop                                   #  26    0x14a13f  1      OPC=1343  
  nop                                   #  27    0x14a140  1      OPC=1343  
  nop                                   #  28    0x14a141  1      OPC=1343  
  addq %r15, %r11                       #  29    0x14a142  3      OPC=72    
  jmpq %r11                             #  30    0x14a145  3      OPC=928   
  nop                                   #  31    0x14a148  1      OPC=1343  
  nop                                   #  32    0x14a149  1      OPC=1343  
  nop                                   #  33    0x14a14a  1      OPC=1343  
  nop                                   #  34    0x14a14b  1      OPC=1343  
  nop                                   #  35    0x14a14c  1      OPC=1343  
  nop                                   #  36    0x14a14d  1      OPC=1343  
  nop                                   #  37    0x14a14e  1      OPC=1343  
  nop                                   #  38    0x14a14f  1      OPC=1343  
  nop                                   #  39    0x14a150  1      OPC=1343  
  nop                                   #  40    0x14a151  1      OPC=1343  
  nop                                   #  41    0x14a152  1      OPC=1343  
.L_14a140:                              #        0x14a153  0      OPC=0     
  shll $0x3, %edi                       #  42    0x14a153  3      OPC=2269  
  movslq %edi, %rdi                     #  43    0x14a156  3      OPC=1289  
  movl %edi, %edi                       #  44    0x14a159  2      OPC=1157  
  movsd 0x1004a680(%r15,%rdi,1), %xmm0  #  45    0x14a15b  10     OPC=1263  
  popq %r11                             #  46    0x14a165  2      OPC=1694  
  andl $0xffffffe0, %r11d               #  47    0x14a167  7      OPC=131   
  nop                                   #  48    0x14a16e  1      OPC=1343  
  nop                                   #  49    0x14a16f  1      OPC=1343  
  nop                                   #  50    0x14a170  1      OPC=1343  
  nop                                   #  51    0x14a171  1      OPC=1343  
  addq %r15, %r11                       #  52    0x14a172  3      OPC=72    
  jmpq %r11                             #  53    0x14a175  3      OPC=928   
  xchgw %ax, %ax                        #  54    0x14a178  2      OPC=3700  
                                                                            
.size _mprec_log10, .-_mprec_log10

