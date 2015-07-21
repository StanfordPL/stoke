  .text
  .globl _ZNSbIwSt11char_traitsIwESaIwEED2Ev
  .type _ZNSbIwSt11char_traitsIwESaIwEED2Ev, @function

#! file-offset 0x117760
#! rip-offset  0xd7760
#! capacity    128 bytes

# Text                                                           #  Line  RIP      Bytes  Opcode    
._ZNSbIwSt11char_traitsIwESaIwEED2Ev:                            #        0xd7760  0      OPC=0     
  movl %edi, %edi                                                #  1     0xd7760  2      OPC=1157  
  subl $0x18, %esp                                               #  2     0xd7762  3      OPC=2384  
  addq %r15, %rsp                                                #  3     0xd7765  3      OPC=72    
  movl %edi, %edi                                                #  4     0xd7768  2      OPC=1157  
  movl (%r15,%rdi,1), %edi                                       #  5     0xd776a  4      OPC=1156  
  subl $0xc, %edi                                                #  6     0xd776e  3      OPC=2384  
  cmpl $0x10073620, %edi                                         #  7     0xd7771  6      OPC=469   
  jne .L_d77a0                                                   #  8     0xd7777  6      OPC=963   
  nop                                                            #  9     0xd777d  1      OPC=1343  
  nop                                                            #  10    0xd777e  1      OPC=1343  
  nop                                                            #  11    0xd777f  1      OPC=1343  
  nop                                                            #  12    0xd7780  1      OPC=1343  
  nop                                                            #  13    0xd7781  1      OPC=1343  
  nop                                                            #  14    0xd7782  1      OPC=1343  
  nop                                                            #  15    0xd7783  1      OPC=1343  
  nop                                                            #  16    0xd7784  1      OPC=1343  
  nop                                                            #  17    0xd7785  1      OPC=1343  
.L_d7780:                                                        #        0xd7786  0      OPC=0     
  addl $0x18, %esp                                               #  18    0xd7786  3      OPC=65    
  addq %r15, %rsp                                                #  19    0xd7789  3      OPC=72    
  popq %r11                                                      #  20    0xd778c  2      OPC=1694  
  andl $0xffffffe0, %r11d                                        #  21    0xd778e  7      OPC=131   
  nop                                                            #  22    0xd7795  1      OPC=1343  
  nop                                                            #  23    0xd7796  1      OPC=1343  
  nop                                                            #  24    0xd7797  1      OPC=1343  
  nop                                                            #  25    0xd7798  1      OPC=1343  
  addq %r15, %r11                                                #  26    0xd7799  3      OPC=72    
  jmpq %r11                                                      #  27    0xd779c  3      OPC=928   
  nop                                                            #  28    0xd779f  1      OPC=1343  
  nop                                                            #  29    0xd77a0  1      OPC=1343  
  nop                                                            #  30    0xd77a1  1      OPC=1343  
  nop                                                            #  31    0xd77a2  1      OPC=1343  
  nop                                                            #  32    0xd77a3  1      OPC=1343  
  nop                                                            #  33    0xd77a4  1      OPC=1343  
  nop                                                            #  34    0xd77a5  1      OPC=1343  
  nop                                                            #  35    0xd77a6  1      OPC=1343  
  nop                                                            #  36    0xd77a7  1      OPC=1343  
  nop                                                            #  37    0xd77a8  1      OPC=1343  
  nop                                                            #  38    0xd77a9  1      OPC=1343  
  nop                                                            #  39    0xd77aa  1      OPC=1343  
  nop                                                            #  40    0xd77ab  1      OPC=1343  
  nop                                                            #  41    0xd77ac  1      OPC=1343  
.L_d77a0:                                                        #        0xd77ad  0      OPC=0     
  movl %edi, %edi                                                #  42    0xd77ad  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax                                    #  43    0xd77af  5      OPC=1156  
  leal -0x1(%rax), %edx                                          #  44    0xd77b4  3      OPC=1066  
  testl %eax, %eax                                               #  45    0xd77b7  2      OPC=2436  
  movl %edi, %edi                                                #  46    0xd77b9  2      OPC=1157  
  movl %edx, 0x8(%r15,%rdi,1)                                    #  47    0xd77bb  5      OPC=1136  
  jg .L_d7780                                                    #  48    0xd77c0  6      OPC=901   
  nop                                                            #  49    0xd77c6  1      OPC=1343  
  nop                                                            #  50    0xd77c7  1      OPC=1343  
  leal 0xf(%rsp), %esi                                           #  51    0xd77c8  4      OPC=1066  
  xchgw %ax, %ax                                                 #  52    0xd77cc  2      OPC=3700  
  callq ._ZNSbIwSt11char_traitsIwESaIwEE4_Rep10_M_destroyERKS1_  #  53    0xd77ce  5      OPC=260   
  jmpq .L_d7780                                                  #  54    0xd77d3  5      OPC=930   
  nop                                                            #  55    0xd77d8  1      OPC=1343  
  nop                                                            #  56    0xd77d9  1      OPC=1343  
  nop                                                            #  57    0xd77da  1      OPC=1343  
  nop                                                            #  58    0xd77db  1      OPC=1343  
  nop                                                            #  59    0xd77dc  1      OPC=1343  
  nop                                                            #  60    0xd77dd  1      OPC=1343  
  nop                                                            #  61    0xd77de  1      OPC=1343  
  nop                                                            #  62    0xd77df  1      OPC=1343  
  nop                                                            #  63    0xd77e0  1      OPC=1343  
  nop                                                            #  64    0xd77e1  1      OPC=1343  
  nop                                                            #  65    0xd77e2  1      OPC=1343  
  nop                                                            #  66    0xd77e3  1      OPC=1343  
  nop                                                            #  67    0xd77e4  1      OPC=1343  
  nop                                                            #  68    0xd77e5  1      OPC=1343  
  nop                                                            #  69    0xd77e6  1      OPC=1343  
  nop                                                            #  70    0xd77e7  1      OPC=1343  
  nop                                                            #  71    0xd77e8  1      OPC=1343  
  nop                                                            #  72    0xd77e9  1      OPC=1343  
  nop                                                            #  73    0xd77ea  1      OPC=1343  
  nop                                                            #  74    0xd77eb  1      OPC=1343  
  nop                                                            #  75    0xd77ec  1      OPC=1343  
  nop                                                            #  76    0xd77ed  1      OPC=1343  
  nop                                                            #  77    0xd77ee  1      OPC=1343  
  nop                                                            #  78    0xd77ef  1      OPC=1343  
  nop                                                            #  79    0xd77f0  1      OPC=1343  
  nop                                                            #  80    0xd77f1  1      OPC=1343  
  nop                                                            #  81    0xd77f2  1      OPC=1343  
  nop                                                            #  82    0xd77f3  1      OPC=1343  
  nop                                                            #  83    0xd77f4  1      OPC=1343  
  nop                                                            #  84    0xd77f5  1      OPC=1343  
  nop                                                            #  85    0xd77f6  1      OPC=1343  
  nop                                                            #  86    0xd77f7  1      OPC=1343  
                                                                                                    
.size _ZNSbIwSt11char_traitsIwESaIwEED2Ev, .-_ZNSbIwSt11char_traitsIwESaIwEED2Ev

