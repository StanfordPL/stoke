  .text
  .globl _ZNSs13_S_copy_charsEPcPKcS1_
  .type _ZNSs13_S_copy_charsEPcPKcS1_, @function

#! file-offset 0xeb820
#! rip-offset  0xab820
#! capacity    64 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
._ZNSs13_S_copy_charsEPcPKcS1_:  #        0xab820  0      OPC=0     
  movl %esi, %esi                #  1     0xab820  2      OPC=1157  
  movl %edi, %edi                #  2     0xab822  2      OPC=1157  
  subl %esi, %edx                #  3     0xab824  2      OPC=2386  
  cmpl $0x1, %edx                #  4     0xab826  3      OPC=470   
  je .L_ab840                    #  5     0xab829  6      OPC=893   
  nop                            #  6     0xab82f  1      OPC=1343  
  nop                            #  7     0xab830  1      OPC=1343  
  jmpq .memcpy                   #  8     0xab831  5      OPC=930   
  nop                            #  9     0xab836  1      OPC=1343  
  nop                            #  10    0xab837  1      OPC=1343  
  nop                            #  11    0xab838  1      OPC=1343  
  nop                            #  12    0xab839  1      OPC=1343  
  nop                            #  13    0xab83a  1      OPC=1343  
  nop                            #  14    0xab83b  1      OPC=1343  
  nop                            #  15    0xab83c  1      OPC=1343  
  nop                            #  16    0xab83d  1      OPC=1343  
  nop                            #  17    0xab83e  1      OPC=1343  
  nop                            #  18    0xab83f  1      OPC=1343  
  nop                            #  19    0xab840  1      OPC=1343  
  nop                            #  20    0xab841  1      OPC=1343  
  nop                            #  21    0xab842  1      OPC=1343  
  nop                            #  22    0xab843  1      OPC=1343  
  nop                            #  23    0xab844  1      OPC=1343  
  nop                            #  24    0xab845  1      OPC=1343  
.L_ab840:                        #        0xab846  0      OPC=0     
  movl %esi, %esi                #  25    0xab846  2      OPC=1157  
  movzbl (%r15,%rsi,1), %eax     #  26    0xab848  5      OPC=1302  
  popq %r11                      #  27    0xab84d  2      OPC=1694  
  movl %edi, %edi                #  28    0xab84f  2      OPC=1157  
  movb %al, (%r15,%rdi,1)        #  29    0xab851  4      OPC=1141  
  andl $0xffffffe0, %r11d        #  30    0xab855  7      OPC=131   
  nop                            #  31    0xab85c  1      OPC=1343  
  nop                            #  32    0xab85d  1      OPC=1343  
  nop                            #  33    0xab85e  1      OPC=1343  
  nop                            #  34    0xab85f  1      OPC=1343  
  addq %r15, %r11                #  35    0xab860  3      OPC=72    
  jmpq %r11                      #  36    0xab863  3      OPC=928   
  nop                            #  37    0xab866  1      OPC=1343  
  nop                            #  38    0xab867  1      OPC=1343  
  nop                            #  39    0xab868  1      OPC=1343  
  nop                            #  40    0xab869  1      OPC=1343  
  nop                            #  41    0xab86a  1      OPC=1343  
  nop                            #  42    0xab86b  1      OPC=1343  
  nop                            #  43    0xab86c  1      OPC=1343  
                                                                    
.size _ZNSs13_S_copy_charsEPcPKcS1_, .-_ZNSs13_S_copy_charsEPcPKcS1_

