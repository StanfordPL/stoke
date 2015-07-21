  .text
  .globl pthread_mutexattr_settype
  .type pthread_mutexattr_settype, @function

#! file-offset 0x6cbc0
#! rip-offset  0x2cbc0
#! capacity    64 bytes

# Text                       #  Line  RIP      Bytes  Opcode    
.pthread_mutexattr_settype:  #        0x2cbc0  0      OPC=0     
  cmpl $0x2, %esi            #  1     0x2cbc0  3      OPC=470   
  movl %edi, %edi            #  2     0x2cbc3  2      OPC=1157  
  movl $0xffffffff, %eax     #  3     0x2cbc5  6      OPC=1155  
  ja .L_2cbe0                #  4     0x2cbcb  6      OPC=863   
  nop                        #  5     0x2cbd1  1      OPC=1343  
  nop                        #  6     0x2cbd2  1      OPC=1343  
  movl %edi, %edi            #  7     0x2cbd3  2      OPC=1157  
  movl %esi, (%r15,%rdi,1)   #  8     0x2cbd5  4      OPC=1136  
  xorl %eax, %eax            #  9     0x2cbd9  2      OPC=3758  
  nop                        #  10    0x2cbdb  1      OPC=1343  
  nop                        #  11    0x2cbdc  1      OPC=1343  
  nop                        #  12    0x2cbdd  1      OPC=1343  
  nop                        #  13    0x2cbde  1      OPC=1343  
  nop                        #  14    0x2cbdf  1      OPC=1343  
  nop                        #  15    0x2cbe0  1      OPC=1343  
  nop                        #  16    0x2cbe1  1      OPC=1343  
  nop                        #  17    0x2cbe2  1      OPC=1343  
  nop                        #  18    0x2cbe3  1      OPC=1343  
  nop                        #  19    0x2cbe4  1      OPC=1343  
  nop                        #  20    0x2cbe5  1      OPC=1343  
  nop                        #  21    0x2cbe6  1      OPC=1343  
.L_2cbe0:                    #        0x2cbe7  0      OPC=0     
  popq %r11                  #  22    0x2cbe7  2      OPC=1694  
  andl $0xffffffe0, %r11d    #  23    0x2cbe9  7      OPC=131   
  nop                        #  24    0x2cbf0  1      OPC=1343  
  nop                        #  25    0x2cbf1  1      OPC=1343  
  nop                        #  26    0x2cbf2  1      OPC=1343  
  nop                        #  27    0x2cbf3  1      OPC=1343  
  addq %r15, %r11            #  28    0x2cbf4  3      OPC=72    
  jmpq %r11                  #  29    0x2cbf7  3      OPC=928   
  nop                        #  30    0x2cbfa  1      OPC=1343  
  nop                        #  31    0x2cbfb  1      OPC=1343  
  nop                        #  32    0x2cbfc  1      OPC=1343  
  nop                        #  33    0x2cbfd  1      OPC=1343  
  nop                        #  34    0x2cbfe  1      OPC=1343  
  nop                        #  35    0x2cbff  1      OPC=1343  
  nop                        #  36    0x2cc00  1      OPC=1343  
  nop                        #  37    0x2cc01  1      OPC=1343  
  nop                        #  38    0x2cc02  1      OPC=1343  
  nop                        #  39    0x2cc03  1      OPC=1343  
  nop                        #  40    0x2cc04  1      OPC=1343  
  nop                        #  41    0x2cc05  1      OPC=1343  
  nop                        #  42    0x2cc06  1      OPC=1343  
  nop                        #  43    0x2cc07  1      OPC=1343  
  nop                        #  44    0x2cc08  1      OPC=1343  
  nop                        #  45    0x2cc09  1      OPC=1343  
  nop                        #  46    0x2cc0a  1      OPC=1343  
  nop                        #  47    0x2cc0b  1      OPC=1343  
  nop                        #  48    0x2cc0c  1      OPC=1343  
  nop                        #  49    0x2cc0d  1      OPC=1343  
                                                                
.size pthread_mutexattr_settype, .-pthread_mutexattr_settype

