  .text
  .globl _ZNSsD2Ev
  .type _ZNSsD2Ev, @function

#! file-offset 0xeb760
#! rip-offset  0xab760
#! capacity    128 bytes

# Text                                   #  Line  RIP      Bytes  Opcode    
._ZNSsD2Ev:                              #        0xab760  0      OPC=0     
  movl %edi, %edi                        #  1     0xab760  2      OPC=1157  
  subl $0x18, %esp                       #  2     0xab762  3      OPC=2384  
  addq %r15, %rsp                        #  3     0xab765  3      OPC=72    
  movl %edi, %edi                        #  4     0xab768  2      OPC=1157  
  movl (%r15,%rdi,1), %edi               #  5     0xab76a  4      OPC=1156  
  subl $0xc, %edi                        #  6     0xab76e  3      OPC=2384  
  cmpl $0x10073580, %edi                 #  7     0xab771  6      OPC=469   
  jne .L_ab7a0                           #  8     0xab777  6      OPC=963   
  nop                                    #  9     0xab77d  1      OPC=1343  
  nop                                    #  10    0xab77e  1      OPC=1343  
  nop                                    #  11    0xab77f  1      OPC=1343  
  nop                                    #  12    0xab780  1      OPC=1343  
  nop                                    #  13    0xab781  1      OPC=1343  
  nop                                    #  14    0xab782  1      OPC=1343  
  nop                                    #  15    0xab783  1      OPC=1343  
  nop                                    #  16    0xab784  1      OPC=1343  
  nop                                    #  17    0xab785  1      OPC=1343  
.L_ab780:                                #        0xab786  0      OPC=0     
  addl $0x18, %esp                       #  18    0xab786  3      OPC=65    
  addq %r15, %rsp                        #  19    0xab789  3      OPC=72    
  popq %r11                              #  20    0xab78c  2      OPC=1694  
  andl $0xffffffe0, %r11d                #  21    0xab78e  7      OPC=131   
  nop                                    #  22    0xab795  1      OPC=1343  
  nop                                    #  23    0xab796  1      OPC=1343  
  nop                                    #  24    0xab797  1      OPC=1343  
  nop                                    #  25    0xab798  1      OPC=1343  
  addq %r15, %r11                        #  26    0xab799  3      OPC=72    
  jmpq %r11                              #  27    0xab79c  3      OPC=928   
  nop                                    #  28    0xab79f  1      OPC=1343  
  nop                                    #  29    0xab7a0  1      OPC=1343  
  nop                                    #  30    0xab7a1  1      OPC=1343  
  nop                                    #  31    0xab7a2  1      OPC=1343  
  nop                                    #  32    0xab7a3  1      OPC=1343  
  nop                                    #  33    0xab7a4  1      OPC=1343  
  nop                                    #  34    0xab7a5  1      OPC=1343  
  nop                                    #  35    0xab7a6  1      OPC=1343  
  nop                                    #  36    0xab7a7  1      OPC=1343  
  nop                                    #  37    0xab7a8  1      OPC=1343  
  nop                                    #  38    0xab7a9  1      OPC=1343  
  nop                                    #  39    0xab7aa  1      OPC=1343  
  nop                                    #  40    0xab7ab  1      OPC=1343  
  nop                                    #  41    0xab7ac  1      OPC=1343  
.L_ab7a0:                                #        0xab7ad  0      OPC=0     
  movl %edi, %edi                        #  42    0xab7ad  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %eax            #  43    0xab7af  5      OPC=1156  
  leal -0x1(%rax), %edx                  #  44    0xab7b4  3      OPC=1066  
  testl %eax, %eax                       #  45    0xab7b7  2      OPC=2436  
  movl %edi, %edi                        #  46    0xab7b9  2      OPC=1157  
  movl %edx, 0x8(%r15,%rdi,1)            #  47    0xab7bb  5      OPC=1136  
  jg .L_ab780                            #  48    0xab7c0  6      OPC=901   
  nop                                    #  49    0xab7c6  1      OPC=1343  
  nop                                    #  50    0xab7c7  1      OPC=1343  
  leal 0xf(%rsp), %esi                   #  51    0xab7c8  4      OPC=1066  
  xchgw %ax, %ax                         #  52    0xab7cc  2      OPC=3700  
  callq ._ZNSs4_Rep10_M_destroyERKSaIcE  #  53    0xab7ce  5      OPC=260   
  jmpq .L_ab780                          #  54    0xab7d3  5      OPC=930   
  nop                                    #  55    0xab7d8  1      OPC=1343  
  nop                                    #  56    0xab7d9  1      OPC=1343  
  nop                                    #  57    0xab7da  1      OPC=1343  
  nop                                    #  58    0xab7db  1      OPC=1343  
  nop                                    #  59    0xab7dc  1      OPC=1343  
  nop                                    #  60    0xab7dd  1      OPC=1343  
  nop                                    #  61    0xab7de  1      OPC=1343  
  nop                                    #  62    0xab7df  1      OPC=1343  
  nop                                    #  63    0xab7e0  1      OPC=1343  
  nop                                    #  64    0xab7e1  1      OPC=1343  
  nop                                    #  65    0xab7e2  1      OPC=1343  
  nop                                    #  66    0xab7e3  1      OPC=1343  
  nop                                    #  67    0xab7e4  1      OPC=1343  
  nop                                    #  68    0xab7e5  1      OPC=1343  
  nop                                    #  69    0xab7e6  1      OPC=1343  
  nop                                    #  70    0xab7e7  1      OPC=1343  
  nop                                    #  71    0xab7e8  1      OPC=1343  
  nop                                    #  72    0xab7e9  1      OPC=1343  
  nop                                    #  73    0xab7ea  1      OPC=1343  
  nop                                    #  74    0xab7eb  1      OPC=1343  
  nop                                    #  75    0xab7ec  1      OPC=1343  
  nop                                    #  76    0xab7ed  1      OPC=1343  
  nop                                    #  77    0xab7ee  1      OPC=1343  
  nop                                    #  78    0xab7ef  1      OPC=1343  
  nop                                    #  79    0xab7f0  1      OPC=1343  
  nop                                    #  80    0xab7f1  1      OPC=1343  
  nop                                    #  81    0xab7f2  1      OPC=1343  
  nop                                    #  82    0xab7f3  1      OPC=1343  
  nop                                    #  83    0xab7f4  1      OPC=1343  
  nop                                    #  84    0xab7f5  1      OPC=1343  
  nop                                    #  85    0xab7f6  1      OPC=1343  
  nop                                    #  86    0xab7f7  1      OPC=1343  
                                                                            
.size _ZNSsD2Ev, .-_ZNSsD2Ev

