  .text
  .globl _ZNSs7replaceEjjjc
  .type _ZNSs7replaceEjjjc, @function

#! file-offset 0xee120
#! rip-offset  0xae120
#! capacity    96 bytes

# Text                                  #  Line  RIP      Bytes  Opcode    
._ZNSs7replaceEjjjc:                    #        0xae120  0      OPC=0     
  movl %edi, %edi                       #  1     0xae120  2      OPC=1157  
  subl $0x8, %esp                       #  2     0xae122  3      OPC=2384  
  addq %r15, %rsp                       #  3     0xae125  3      OPC=72    
  movl %edx, %eax                       #  4     0xae128  2      OPC=1157  
  movl %edi, %edi                       #  5     0xae12a  2      OPC=1157  
  movl (%r15,%rdi,1), %edx              #  6     0xae12c  4      OPC=1156  
  subl $0xc, %edx                       #  7     0xae130  3      OPC=2384  
  movl %edx, %edx                       #  8     0xae133  2      OPC=1157  
  movl (%r15,%rdx,1), %edx              #  9     0xae135  4      OPC=1156  
  cmpl %edx, %esi                       #  10    0xae139  2      OPC=472   
  nop                                   #  11    0xae13b  1      OPC=1343  
  nop                                   #  12    0xae13c  1      OPC=1343  
  nop                                   #  13    0xae13d  1      OPC=1343  
  nop                                   #  14    0xae13e  1      OPC=1343  
  nop                                   #  15    0xae13f  1      OPC=1343  
  ja .L_ae160                           #  16    0xae140  6      OPC=863   
  nop                                   #  17    0xae146  1      OPC=1343  
  nop                                   #  18    0xae147  1      OPC=1343  
  subl %esi, %edx                       #  19    0xae148  2      OPC=2386  
  movsbl %r8b, %r8d                     #  20    0xae14a  4      OPC=1282  
  cmpl %eax, %edx                       #  21    0xae14e  2      OPC=472   
  cmoval %eax, %edx                     #  22    0xae150  3      OPC=272   
  addl $0x8, %esp                       #  23    0xae153  3      OPC=65    
  addq %r15, %rsp                       #  24    0xae156  3      OPC=72    
  jmpq ._ZNSs14_M_replace_auxEjjjc      #  25    0xae159  5      OPC=930   
  nop                                   #  26    0xae15e  1      OPC=1343  
  nop                                   #  27    0xae15f  1      OPC=1343  
  nop                                   #  28    0xae160  1      OPC=1343  
  nop                                   #  29    0xae161  1      OPC=1343  
  nop                                   #  30    0xae162  1      OPC=1343  
  nop                                   #  31    0xae163  1      OPC=1343  
  nop                                   #  32    0xae164  1      OPC=1343  
  nop                                   #  33    0xae165  1      OPC=1343  
.L_ae160:                               #        0xae166  0      OPC=0     
  movl $0x1003bb5d, %edi                #  34    0xae166  5      OPC=1154  
  nop                                   #  35    0xae16b  1      OPC=1343  
  nop                                   #  36    0xae16c  1      OPC=1343  
  nop                                   #  37    0xae16d  1      OPC=1343  
  nop                                   #  38    0xae16e  1      OPC=1343  
  nop                                   #  39    0xae16f  1      OPC=1343  
  nop                                   #  40    0xae170  1      OPC=1343  
  nop                                   #  41    0xae171  1      OPC=1343  
  nop                                   #  42    0xae172  1      OPC=1343  
  nop                                   #  43    0xae173  1      OPC=1343  
  nop                                   #  44    0xae174  1      OPC=1343  
  nop                                   #  45    0xae175  1      OPC=1343  
  nop                                   #  46    0xae176  1      OPC=1343  
  nop                                   #  47    0xae177  1      OPC=1343  
  nop                                   #  48    0xae178  1      OPC=1343  
  nop                                   #  49    0xae179  1      OPC=1343  
  nop                                   #  50    0xae17a  1      OPC=1343  
  nop                                   #  51    0xae17b  1      OPC=1343  
  nop                                   #  52    0xae17c  1      OPC=1343  
  nop                                   #  53    0xae17d  1      OPC=1343  
  nop                                   #  54    0xae17e  1      OPC=1343  
  nop                                   #  55    0xae17f  1      OPC=1343  
  nop                                   #  56    0xae180  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc  #  57    0xae181  5      OPC=260   
                                                                           
.size _ZNSs7replaceEjjjc, .-_ZNSs7replaceEjjjc

