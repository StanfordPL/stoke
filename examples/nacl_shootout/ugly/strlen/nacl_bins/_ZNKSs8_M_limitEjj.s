  .text
  .globl _ZNKSs8_M_limitEjj
  .type _ZNKSs8_M_limitEjj, @function

#! file-offset 0xe9d80
#! rip-offset  0xa9d80
#! capacity    64 bytes

# Text                      #  Line  RIP      Bytes  Opcode    
._ZNKSs8_M_limitEjj:        #        0xa9d80  0      OPC=0     
  movl %edi, %edi           #  1     0xa9d80  2      OPC=1157  
  movl %edi, %edi           #  2     0xa9d82  2      OPC=1157  
  movl (%r15,%rdi,1), %eax  #  3     0xa9d84  4      OPC=1156  
  popq %r11                 #  4     0xa9d88  2      OPC=1694  
  subl $0xc, %eax           #  5     0xa9d8a  3      OPC=2384  
  movl %eax, %eax           #  6     0xa9d8d  2      OPC=1157  
  movl (%r15,%rax,1), %eax  #  7     0xa9d8f  4      OPC=1156  
  subl %esi, %eax           #  8     0xa9d93  2      OPC=2386  
  cmpl %eax, %edx           #  9     0xa9d95  2      OPC=472   
  cmovbel %edx, %eax        #  10    0xa9d97  3      OPC=290   
  nop                       #  11    0xa9d9a  1      OPC=1343  
  nop                       #  12    0xa9d9b  1      OPC=1343  
  nop                       #  13    0xa9d9c  1      OPC=1343  
  nop                       #  14    0xa9d9d  1      OPC=1343  
  nop                       #  15    0xa9d9e  1      OPC=1343  
  nop                       #  16    0xa9d9f  1      OPC=1343  
  andl $0xffffffe0, %r11d   #  17    0xa9da0  7      OPC=131   
  nop                       #  18    0xa9da7  1      OPC=1343  
  nop                       #  19    0xa9da8  1      OPC=1343  
  nop                       #  20    0xa9da9  1      OPC=1343  
  nop                       #  21    0xa9daa  1      OPC=1343  
  addq %r15, %r11           #  22    0xa9dab  3      OPC=72    
  jmpq %r11                 #  23    0xa9dae  3      OPC=928   
  nop                       #  24    0xa9db1  1      OPC=1343  
  nop                       #  25    0xa9db2  1      OPC=1343  
  nop                       #  26    0xa9db3  1      OPC=1343  
  nop                       #  27    0xa9db4  1      OPC=1343  
  nop                       #  28    0xa9db5  1      OPC=1343  
  nop                       #  29    0xa9db6  1      OPC=1343  
  nop                       #  30    0xa9db7  1      OPC=1343  
  nop                       #  31    0xa9db8  1      OPC=1343  
  nop                       #  32    0xa9db9  1      OPC=1343  
  nop                       #  33    0xa9dba  1      OPC=1343  
  nop                       #  34    0xa9dbb  1      OPC=1343  
  nop                       #  35    0xa9dbc  1      OPC=1343  
  nop                       #  36    0xa9dbd  1      OPC=1343  
  nop                       #  37    0xa9dbe  1      OPC=1343  
  nop                       #  38    0xa9dbf  1      OPC=1343  
  nop                       #  39    0xa9dc0  1      OPC=1343  
  nop                       #  40    0xa9dc1  1      OPC=1343  
  nop                       #  41    0xa9dc2  1      OPC=1343  
  nop                       #  42    0xa9dc3  1      OPC=1343  
  nop                       #  43    0xa9dc4  1      OPC=1343  
  nop                       #  44    0xa9dc5  1      OPC=1343  
  nop                       #  45    0xa9dc6  1      OPC=1343  
                                                               
.size _ZNKSs8_M_limitEjj, .-_ZNKSs8_M_limitEjj

