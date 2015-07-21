  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj, @function

#! file-offset 0x115040
#! rip-offset  0xd5040
#! capacity    128 bytes

# Text                                       #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj:  #        0xd5040  0      OPC=0     
  movl %edi, %edi                            #  1     0xd5040  2      OPC=1157  
  movl %edi, %edi                            #  2     0xd5042  2      OPC=1157  
  movl (%r15,%rdi,1), %ecx                   #  3     0xd5044  4      OPC=1156  
  leal -0xc(%rcx), %eax                      #  4     0xd5048  3      OPC=1066  
  movl %eax, %eax                            #  5     0xd504b  2      OPC=1157  
  movl (%r15,%rax,1), %eax                   #  6     0xd504d  4      OPC=1156  
  testl %eax, %eax                           #  7     0xd5051  2      OPC=2436  
  je .L_d50a0                                #  8     0xd5053  6      OPC=893   
  nop                                        #  9     0xd5059  1      OPC=1343  
  nop                                        #  10    0xd505a  1      OPC=1343  
  subl $0x1, %eax                            #  11    0xd505b  3      OPC=2384  
  cmpl %eax, %edx                            #  12    0xd505e  2      OPC=472   
  cmoval %eax, %edx                          #  13    0xd5060  3      OPC=272   
  leal 0x1(%rdx), %eax                       #  14    0xd5063  3      OPC=1066  
  leal (%rcx,%rdx,4), %edx                   #  15    0xd5066  3      OPC=1066  
  nop                                        #  16    0xd5069  1      OPC=1343  
  nop                                        #  17    0xd506a  1      OPC=1343  
  nop                                        #  18    0xd506b  1      OPC=1343  
  nop                                        #  19    0xd506c  1      OPC=1343  
  nop                                        #  20    0xd506d  1      OPC=1343  
  nop                                        #  21    0xd506e  1      OPC=1343  
  nop                                        #  22    0xd506f  1      OPC=1343  
  nop                                        #  23    0xd5070  1      OPC=1343  
  nop                                        #  24    0xd5071  1      OPC=1343  
  nop                                        #  25    0xd5072  1      OPC=1343  
  nop                                        #  26    0xd5073  1      OPC=1343  
  nop                                        #  27    0xd5074  1      OPC=1343  
  nop                                        #  28    0xd5075  1      OPC=1343  
  nop                                        #  29    0xd5076  1      OPC=1343  
  nop                                        #  30    0xd5077  1      OPC=1343  
  nop                                        #  31    0xd5078  1      OPC=1343  
  nop                                        #  32    0xd5079  1      OPC=1343  
  nop                                        #  33    0xd507a  1      OPC=1343  
  nop                                        #  34    0xd507b  1      OPC=1343  
  nop                                        #  35    0xd507c  1      OPC=1343  
  nop                                        #  36    0xd507d  1      OPC=1343  
  nop                                        #  37    0xd507e  1      OPC=1343  
  nop                                        #  38    0xd507f  1      OPC=1343  
  nop                                        #  39    0xd5080  1      OPC=1343  
  nop                                        #  40    0xd5081  1      OPC=1343  
  nop                                        #  41    0xd5082  1      OPC=1343  
  nop                                        #  42    0xd5083  1      OPC=1343  
  nop                                        #  43    0xd5084  1      OPC=1343  
  nop                                        #  44    0xd5085  1      OPC=1343  
.L_d5080:                                    #        0xd5086  0      OPC=0     
  testl %eax, %eax                           #  45    0xd5086  2      OPC=2436  
  je .L_d50a0                                #  46    0xd5088  6      OPC=893   
  nop                                        #  47    0xd508e  1      OPC=1343  
  nop                                        #  48    0xd508f  1      OPC=1343  
  movl %edx, %ecx                            #  49    0xd5090  2      OPC=1157  
  subl $0x1, %eax                            #  50    0xd5092  3      OPC=2384  
  subl $0x4, %edx                            #  51    0xd5095  3      OPC=2384  
  movl %ecx, %ecx                            #  52    0xd5098  2      OPC=1157  
  cmpl (%r15,%rcx,1), %esi                   #  53    0xd509a  4      OPC=471   
  jne .L_d5080                               #  54    0xd509e  6      OPC=963   
  nop                                        #  55    0xd50a4  1      OPC=1343  
  nop                                        #  56    0xd50a5  1      OPC=1343  
  popq %r11                                  #  57    0xd50a6  2      OPC=1694  
  andl $0xffffffe0, %r11d                    #  58    0xd50a8  7      OPC=131   
  nop                                        #  59    0xd50af  1      OPC=1343  
  nop                                        #  60    0xd50b0  1      OPC=1343  
  nop                                        #  61    0xd50b1  1      OPC=1343  
  nop                                        #  62    0xd50b2  1      OPC=1343  
  addq %r15, %r11                            #  63    0xd50b3  3      OPC=72    
  jmpq %r11                                  #  64    0xd50b6  3      OPC=928   
.L_d50a0:                                    #        0xd50b9  0      OPC=0     
  movl $0xffffffff, %eax                     #  65    0xd50b9  6      OPC=1155  
  popq %r11                                  #  66    0xd50bf  2      OPC=1694  
  andl $0xffffffe0, %r11d                    #  67    0xd50c1  7      OPC=131   
  nop                                        #  68    0xd50c8  1      OPC=1343  
  nop                                        #  69    0xd50c9  1      OPC=1343  
  nop                                        #  70    0xd50ca  1      OPC=1343  
  nop                                        #  71    0xd50cb  1      OPC=1343  
  addq %r15, %r11                            #  72    0xd50cc  3      OPC=72    
  jmpq %r11                                  #  73    0xd50cf  3      OPC=928   
  nop                                        #  74    0xd50d2  1      OPC=1343  
  nop                                        #  75    0xd50d3  1      OPC=1343  
  nop                                        #  76    0xd50d4  1      OPC=1343  
  nop                                        #  77    0xd50d5  1      OPC=1343  
  nop                                        #  78    0xd50d6  1      OPC=1343  
  nop                                        #  79    0xd50d7  1      OPC=1343  
  nop                                        #  80    0xd50d8  1      OPC=1343  
  nop                                        #  81    0xd50d9  1      OPC=1343  
  nop                                        #  82    0xd50da  1      OPC=1343  
  nop                                        #  83    0xd50db  1      OPC=1343  
  nop                                        #  84    0xd50dc  1      OPC=1343  
  nop                                        #  85    0xd50dd  1      OPC=1343  
  nop                                        #  86    0xd50de  1      OPC=1343  
  nop                                        #  87    0xd50df  1      OPC=1343  
  nop                                        #  88    0xd50e0  1      OPC=1343  
                                                                                
.size _ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj, .-_ZNKSbIwSt11char_traitsIwESaIwEE5rfindEwj

