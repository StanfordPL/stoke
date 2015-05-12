  .text
  .globl __sclose
  .type __sclose, @function

#! file-offset 0x80020
#! rip-offset  0x80020
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  
.__sclose:                       #        0x80020  0      
  movl %esi, %esi                #  1     0x80020  2      
  movl %esi, %esi                #  2     0x80022  2      
  movswl 0xe(%r15,%rsi,1), %edi  #  3     0x80024  6      
  jmpq .close                    #  4     0x8002a  5      
  xchgw %ax, %ax                 #  5     0x8002f  3      
  nop                            #  6     0x80032  1      
                                                          
.size __sclose, .-__sclose

