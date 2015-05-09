  .text
  .globl __sclose
  .type __sclose, @function

#! file-offset 0x80000
#! rip-offset  0x80000
#! capacity    32 bytes

# Text                           #  Line  RIP      Bytes  
.__sclose:                       #        0x80000  0      
  movl %esi, %esi                #  1     0x80000  2      
  movl %esi, %esi                #  2     0x80002  2      
  movswl 0xe(%r15,%rsi,1), %edi  #  3     0x80004  6      
  jmpq .close                    #  4     0x8000a  5      
  xchgw %ax, %ax                 #  5     0x8000f  3      
  nop                            #  6     0x80012  1      
                                                          
.size __sclose, .-__sclose

