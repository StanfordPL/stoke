  .text
  .globl __sclose
  .type __sclose, @function

#! file-offset 0x800a0
#! rip-offset  0x800a0
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  
.__sclose:                       #        0x800a0  0      
  movl %esi, %esi                #  1     0x800a0  2      
  movl %esi, %esi                #  2     0x800a2  2      
  movswl 0xe(%r15,%rsi,1), %edi  #  3     0x800a4  6      
  jmpq .close                    #  4     0x800aa  5      
  xchgw %ax, %ax                 #  5     0x800af  3      
  nop                            #  6     0x800b2  1      
                                                          
.size __sclose, .-__sclose

