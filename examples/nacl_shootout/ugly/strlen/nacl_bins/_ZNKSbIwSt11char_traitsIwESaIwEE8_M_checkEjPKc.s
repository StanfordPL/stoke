  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc
  .type _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc, @function

#! file-offset 0x116240
#! rip-offset  0xd6240
#! capacity    96 bytes

# Text                                            #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc:  #        0xd6240  0      OPC=0     
  movl %edi, %edi                                 #  1     0xd6240  2      OPC=1157  
  subl $0x8, %esp                                 #  2     0xd6242  3      OPC=2384  
  addq %r15, %rsp                                 #  3     0xd6245  3      OPC=72    
  movl %edx, %edx                                 #  4     0xd6248  2      OPC=1157  
  movl %edi, %edi                                 #  5     0xd624a  2      OPC=1157  
  movl (%r15,%rdi,1), %eax                        #  6     0xd624c  4      OPC=1156  
  subl $0xc, %eax                                 #  7     0xd6250  3      OPC=2384  
  movl %eax, %eax                                 #  8     0xd6253  2      OPC=1157  
  cmpl (%r15,%rax,1), %esi                        #  9     0xd6255  4      OPC=471   
  ja .L_d6280                                     #  10    0xd6259  6      OPC=863   
  nop                                             #  11    0xd625f  1      OPC=1343  
  nop                                             #  12    0xd6260  1      OPC=1343  
  nop                                             #  13    0xd6261  1      OPC=1343  
  nop                                             #  14    0xd6262  1      OPC=1343  
  nop                                             #  15    0xd6263  1      OPC=1343  
  nop                                             #  16    0xd6264  1      OPC=1343  
  nop                                             #  17    0xd6265  1      OPC=1343  
  addl $0x8, %esp                                 #  18    0xd6266  3      OPC=65    
  addq %r15, %rsp                                 #  19    0xd6269  3      OPC=72    
  movl %esi, %eax                                 #  20    0xd626c  2      OPC=1157  
  popq %r11                                       #  21    0xd626e  2      OPC=1694  
  andl $0xffffffe0, %r11d                         #  22    0xd6270  7      OPC=131   
  nop                                             #  23    0xd6277  1      OPC=1343  
  nop                                             #  24    0xd6278  1      OPC=1343  
  nop                                             #  25    0xd6279  1      OPC=1343  
  nop                                             #  26    0xd627a  1      OPC=1343  
  addq %r15, %r11                                 #  27    0xd627b  3      OPC=72    
  jmpq %r11                                       #  28    0xd627e  3      OPC=928   
  nop                                             #  29    0xd6281  1      OPC=1343  
  nop                                             #  30    0xd6282  1      OPC=1343  
  nop                                             #  31    0xd6283  1      OPC=1343  
  nop                                             #  32    0xd6284  1      OPC=1343  
  nop                                             #  33    0xd6285  1      OPC=1343  
  nop                                             #  34    0xd6286  1      OPC=1343  
  nop                                             #  35    0xd6287  1      OPC=1343  
  nop                                             #  36    0xd6288  1      OPC=1343  
  nop                                             #  37    0xd6289  1      OPC=1343  
  nop                                             #  38    0xd628a  1      OPC=1343  
  nop                                             #  39    0xd628b  1      OPC=1343  
  nop                                             #  40    0xd628c  1      OPC=1343  
.L_d6280:                                         #        0xd628d  0      OPC=0     
  movl %edx, %edi                                 #  41    0xd628d  2      OPC=1157  
  nop                                             #  42    0xd628f  1      OPC=1343  
  nop                                             #  43    0xd6290  1      OPC=1343  
  nop                                             #  44    0xd6291  1      OPC=1343  
  nop                                             #  45    0xd6292  1      OPC=1343  
  nop                                             #  46    0xd6293  1      OPC=1343  
  nop                                             #  47    0xd6294  1      OPC=1343  
  nop                                             #  48    0xd6295  1      OPC=1343  
  nop                                             #  49    0xd6296  1      OPC=1343  
  nop                                             #  50    0xd6297  1      OPC=1343  
  nop                                             #  51    0xd6298  1      OPC=1343  
  nop                                             #  52    0xd6299  1      OPC=1343  
  nop                                             #  53    0xd629a  1      OPC=1343  
  nop                                             #  54    0xd629b  1      OPC=1343  
  nop                                             #  55    0xd629c  1      OPC=1343  
  nop                                             #  56    0xd629d  1      OPC=1343  
  nop                                             #  57    0xd629e  1      OPC=1343  
  nop                                             #  58    0xd629f  1      OPC=1343  
  nop                                             #  59    0xd62a0  1      OPC=1343  
  nop                                             #  60    0xd62a1  1      OPC=1343  
  nop                                             #  61    0xd62a2  1      OPC=1343  
  nop                                             #  62    0xd62a3  1      OPC=1343  
  nop                                             #  63    0xd62a4  1      OPC=1343  
  nop                                             #  64    0xd62a5  1      OPC=1343  
  nop                                             #  65    0xd62a6  1      OPC=1343  
  nop                                             #  66    0xd62a7  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc            #  67    0xd62a8  5      OPC=260   
                                                                                     
.size _ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc, .-_ZNKSbIwSt11char_traitsIwESaIwEE8_M_checkEjPKc

