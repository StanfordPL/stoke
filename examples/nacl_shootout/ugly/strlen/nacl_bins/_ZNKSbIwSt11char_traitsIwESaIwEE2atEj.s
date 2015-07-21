  .text
  .globl _ZNKSbIwSt11char_traitsIwESaIwEE2atEj
  .type _ZNKSbIwSt11char_traitsIwESaIwEE2atEj, @function

#! file-offset 0x1161e0
#! rip-offset  0xd61e0
#! capacity    96 bytes

# Text                                   #  Line  RIP      Bytes  Opcode    
._ZNKSbIwSt11char_traitsIwESaIwEE2atEj:  #        0xd61e0  0      OPC=0     
  movl %edi, %edi                        #  1     0xd61e0  2      OPC=1157  
  subl $0x8, %esp                        #  2     0xd61e2  3      OPC=2384  
  addq %r15, %rsp                        #  3     0xd61e5  3      OPC=72    
  movl %edi, %edi                        #  4     0xd61e8  2      OPC=1157  
  movl (%r15,%rdi,1), %eax               #  5     0xd61ea  4      OPC=1156  
  leal -0xc(%rax), %edx                  #  6     0xd61ee  3      OPC=1066  
  movl %edx, %edx                        #  7     0xd61f1  2      OPC=1157  
  cmpl (%r15,%rdx,1), %esi               #  8     0xd61f3  4      OPC=471   
  jae .L_d6220                           #  9     0xd61f7  6      OPC=869   
  nop                                    #  10    0xd61fd  1      OPC=1343  
  nop                                    #  11    0xd61fe  1      OPC=1343  
  addl $0x8, %esp                        #  12    0xd61ff  3      OPC=65    
  addq %r15, %rsp                        #  13    0xd6202  3      OPC=72    
  nop                                    #  14    0xd6205  1      OPC=1343  
  leal (%rax,%rsi,4), %eax               #  15    0xd6206  3      OPC=1066  
  popq %r11                              #  16    0xd6209  2      OPC=1694  
  andl $0xffffffe0, %r11d                #  17    0xd620b  7      OPC=131   
  nop                                    #  18    0xd6212  1      OPC=1343  
  nop                                    #  19    0xd6213  1      OPC=1343  
  nop                                    #  20    0xd6214  1      OPC=1343  
  nop                                    #  21    0xd6215  1      OPC=1343  
  addq %r15, %r11                        #  22    0xd6216  3      OPC=72    
  jmpq %r11                              #  23    0xd6219  3      OPC=928   
  xchgw %ax, %ax                         #  24    0xd621c  2      OPC=3700  
  nop                                    #  25    0xd621e  1      OPC=1343  
  nop                                    #  26    0xd621f  1      OPC=1343  
  nop                                    #  27    0xd6220  1      OPC=1343  
  nop                                    #  28    0xd6221  1      OPC=1343  
  nop                                    #  29    0xd6222  1      OPC=1343  
  nop                                    #  30    0xd6223  1      OPC=1343  
  nop                                    #  31    0xd6224  1      OPC=1343  
  nop                                    #  32    0xd6225  1      OPC=1343  
  nop                                    #  33    0xd6226  1      OPC=1343  
  nop                                    #  34    0xd6227  1      OPC=1343  
  nop                                    #  35    0xd6228  1      OPC=1343  
  nop                                    #  36    0xd6229  1      OPC=1343  
  nop                                    #  37    0xd622a  1      OPC=1343  
  nop                                    #  38    0xd622b  1      OPC=1343  
  nop                                    #  39    0xd622c  1      OPC=1343  
.L_d6220:                                #        0xd622d  0      OPC=0     
  movl $0x1003baac, %edi                 #  40    0xd622d  5      OPC=1154  
  nop                                    #  41    0xd6232  1      OPC=1343  
  nop                                    #  42    0xd6233  1      OPC=1343  
  nop                                    #  43    0xd6234  1      OPC=1343  
  nop                                    #  44    0xd6235  1      OPC=1343  
  nop                                    #  45    0xd6236  1      OPC=1343  
  nop                                    #  46    0xd6237  1      OPC=1343  
  nop                                    #  47    0xd6238  1      OPC=1343  
  nop                                    #  48    0xd6239  1      OPC=1343  
  nop                                    #  49    0xd623a  1      OPC=1343  
  nop                                    #  50    0xd623b  1      OPC=1343  
  nop                                    #  51    0xd623c  1      OPC=1343  
  nop                                    #  52    0xd623d  1      OPC=1343  
  nop                                    #  53    0xd623e  1      OPC=1343  
  nop                                    #  54    0xd623f  1      OPC=1343  
  nop                                    #  55    0xd6240  1      OPC=1343  
  nop                                    #  56    0xd6241  1      OPC=1343  
  nop                                    #  57    0xd6242  1      OPC=1343  
  nop                                    #  58    0xd6243  1      OPC=1343  
  nop                                    #  59    0xd6244  1      OPC=1343  
  nop                                    #  60    0xd6245  1      OPC=1343  
  nop                                    #  61    0xd6246  1      OPC=1343  
  nop                                    #  62    0xd6247  1      OPC=1343  
  callq ._ZSt20__throw_out_of_rangePKc   #  63    0xd6248  5      OPC=260   
                                                                            
.size _ZNKSbIwSt11char_traitsIwESaIwEE2atEj, .-_ZNKSbIwSt11char_traitsIwESaIwEE2atEj

