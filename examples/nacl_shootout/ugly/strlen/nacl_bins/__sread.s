  .text
  .globl __sread
  .type __sread, @function

#! file-offset 0x165e20
#! rip-offset  0x125e20
#! capacity    96 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.__sread:                         #        0x125e20  0      OPC=0     
  pushq %rbx                      #  1     0x125e20  1      OPC=1861  
  movl %esi, %ebx                 #  2     0x125e21  2      OPC=1157  
  movl %edx, %esi                 #  3     0x125e23  2      OPC=1157  
  movl %ebx, %ebx                 #  4     0x125e25  2      OPC=1157  
  movswl 0xe(%r15,%rbx,1), %edi   #  5     0x125e27  6      OPC=1279  
  movl %ecx, %edx                 #  6     0x125e2d  2      OPC=1157  
  nop                             #  7     0x125e2f  1      OPC=1343  
  nop                             #  8     0x125e30  1      OPC=1343  
  nop                             #  9     0x125e31  1      OPC=1343  
  nop                             #  10    0x125e32  1      OPC=1343  
  nop                             #  11    0x125e33  1      OPC=1343  
  nop                             #  12    0x125e34  1      OPC=1343  
  nop                             #  13    0x125e35  1      OPC=1343  
  nop                             #  14    0x125e36  1      OPC=1343  
  nop                             #  15    0x125e37  1      OPC=1343  
  nop                             #  16    0x125e38  1      OPC=1343  
  nop                             #  17    0x125e39  1      OPC=1343  
  nop                             #  18    0x125e3a  1      OPC=1343  
  callq .read                     #  19    0x125e3b  5      OPC=260   
  testl %eax, %eax                #  20    0x125e40  2      OPC=2436  
  js .L_125e60                    #  21    0x125e42  6      OPC=1043  
  nop                             #  22    0x125e48  1      OPC=1343  
  nop                             #  23    0x125e49  1      OPC=1343  
  movslq %eax, %rdx               #  24    0x125e4a  3      OPC=1289  
  movl %ebx, %ebx                 #  25    0x125e4d  2      OPC=1157  
  addq %rdx, 0x50(%r15,%rbx,1)    #  26    0x125e4f  5      OPC=55    
  popq %rbx                       #  27    0x125e54  1      OPC=1694  
  popq %r11                       #  28    0x125e55  2      OPC=1694  
  andl $0xffffffe0, %r11d         #  29    0x125e57  7      OPC=131   
  nop                             #  30    0x125e5e  1      OPC=1343  
  nop                             #  31    0x125e5f  1      OPC=1343  
  nop                             #  32    0x125e60  1      OPC=1343  
  nop                             #  33    0x125e61  1      OPC=1343  
  addq %r15, %r11                 #  34    0x125e62  3      OPC=72    
  jmpq %r11                       #  35    0x125e65  3      OPC=928   
  nop                             #  36    0x125e68  1      OPC=1343  
  nop                             #  37    0x125e69  1      OPC=1343  
  nop                             #  38    0x125e6a  1      OPC=1343  
  nop                             #  39    0x125e6b  1      OPC=1343  
  nop                             #  40    0x125e6c  1      OPC=1343  
.L_125e60:                        #        0x125e6d  0      OPC=0     
  movl %ebx, %ebx                 #  41    0x125e6d  2      OPC=1157  
  andw $0xefff, 0xc(%r15,%rbx,1)  #  42    0x125e6f  8      OPC=114   
  popq %rbx                       #  43    0x125e77  1      OPC=1694  
  popq %r11                       #  44    0x125e78  2      OPC=1694  
  andl $0xffffffe0, %r11d         #  45    0x125e7a  7      OPC=131   
  nop                             #  46    0x125e81  1      OPC=1343  
  nop                             #  47    0x125e82  1      OPC=1343  
  nop                             #  48    0x125e83  1      OPC=1343  
  nop                             #  49    0x125e84  1      OPC=1343  
  addq %r15, %r11                 #  50    0x125e85  3      OPC=72    
  jmpq %r11                       #  51    0x125e88  3      OPC=928   
  nop                             #  52    0x125e8b  1      OPC=1343  
  nop                             #  53    0x125e8c  1      OPC=1343  
  nop                             #  54    0x125e8d  1      OPC=1343  
  nop                             #  55    0x125e8e  1      OPC=1343  
  nop                             #  56    0x125e8f  1      OPC=1343  
  nop                             #  57    0x125e90  1      OPC=1343  
  nop                             #  58    0x125e91  1      OPC=1343  
  nop                             #  59    0x125e92  1      OPC=1343  
  nop                             #  60    0x125e93  1      OPC=1343  
                                                                      
.size __sread, .-__sread

