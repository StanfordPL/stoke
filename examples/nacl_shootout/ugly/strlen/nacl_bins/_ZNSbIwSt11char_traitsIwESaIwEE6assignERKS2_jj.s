  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj
  .type _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj, @function

#! file-offset 0x119000
#! rip-offset  0xd9000
#! capacity    96 bytes

# Text                                               #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj:     #        0xd9000  0      OPC=0     
  movl %esi, %esi                                    #  1     0xd9000  2      OPC=1157  
  subl $0x8, %esp                                    #  2     0xd9002  3      OPC=2384  
  addq %r15, %rsp                                    #  3     0xd9005  3      OPC=72    
  movl %edi, %edi                                    #  4     0xd9008  2      OPC=1157  
  movl %esi, %esi                                    #  5     0xd900a  2      OPC=1157  
  movl (%r15,%rsi,1), %esi                           #  6     0xd900c  4      OPC=1156  
  leal -0xc(%rsi), %eax                              #  7     0xd9010  3      OPC=1066  
  movl %eax, %eax                                    #  8     0xd9013  2      OPC=1157  
  movl (%r15,%rax,1), %eax                           #  9     0xd9015  4      OPC=1156  
  cmpl %eax, %edx                                    #  10    0xd9019  2      OPC=472   
  nop                                                #  11    0xd901b  1      OPC=1343  
  nop                                                #  12    0xd901c  1      OPC=1343  
  nop                                                #  13    0xd901d  1      OPC=1343  
  nop                                                #  14    0xd901e  1      OPC=1343  
  nop                                                #  15    0xd901f  1      OPC=1343  
  ja .L_d9040                                        #  16    0xd9020  6      OPC=863   
  nop                                                #  17    0xd9026  1      OPC=1343  
  nop                                                #  18    0xd9027  1      OPC=1343  
  subl %edx, %eax                                    #  19    0xd9028  2      OPC=2386  
  leal (%rsi,%rdx,4), %esi                           #  20    0xd902a  3      OPC=1066  
  cmpl %ecx, %eax                                    #  21    0xd902d  2      OPC=472   
  cmoval %ecx, %eax                                  #  22    0xd902f  3      OPC=272   
  addl $0x8, %esp                                    #  23    0xd9032  3      OPC=65    
  addq %r15, %rsp                                    #  24    0xd9035  3      OPC=72    
  movl %eax, %edx                                    #  25    0xd9038  2      OPC=1157  
  jmpq ._ZNSbIwSt11char_traitsIwESaIwEE6assignEPKwj  #  26    0xd903a  5      OPC=930   
  nop                                                #  27    0xd903f  1      OPC=1343  
  nop                                                #  28    0xd9040  1      OPC=1343  
  nop                                                #  29    0xd9041  1      OPC=1343  
  nop                                                #  30    0xd9042  1      OPC=1343  
  nop                                                #  31    0xd9043  1      OPC=1343  
  nop                                                #  32    0xd9044  1      OPC=1343  
  nop                                                #  33    0xd9045  1      OPC=1343  
.L_d9040:                                            #        0xd9046  0      OPC=0     
  movl $0x1003bb2b, %edi                             #  34    0xd9046  5      OPC=1154  
  nop                                                #  35    0xd904b  1      OPC=1343  
  nop                                                #  36    0xd904c  1      OPC=1343  
  nop                                                #  37    0xd904d  1      OPC=1343  
  nop                                                #  38    0xd904e  1      OPC=1343  
  nop                                                #  39    0xd904f  1      OPC=1343  
  nop                                                #  40    0xd9050  1      OPC=1343  
  nop                                                #  41    0xd9051  1      OPC=1343  
  nop                                                #  42    0xd9052  1      OPC=1343  
  nop                                                #  43    0xd9053  1      OPC=1343  
  nop                                                #  44    0xd9054  1      OPC=1343  
  nop                                                #  45    0xd9055  1      OPC=1343  
  nop                                                #  46    0xd9056  1      OPC=1343  
  nop                                                #  47    0xd9057  1      OPC=1343  
  nop                                                #  48    0xd9058  1      OPC=1343  
  nop                                                #  49    0xd9059  1      OPC=1343  
  nop                                                #  50    0xd905a  1      OPC=1343  
  nop                                                #  51    0xd905b  1      OPC=1343  
  nop                                                #  52    0xd905c  1      OPC=1343  
  nop                                                #  53    0xd905d  1      OPC=1343  
  nop                                                #  54    0xd905e  1      OPC=1343  
  nop                                                #  55    0xd905f  1      OPC=1343  
  nop                                                #  56    0xd9060  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc               #  57    0xd9061  5      OPC=260   
                                                                                        
.size _ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj, .-_ZNSbIwSt11char_traitsIwESaIwEE6assignERKS2_jj

