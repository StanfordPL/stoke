  .text
  .globl __ctloc
  .type __ctloc, @function

#! file-offset 0x180b80
#! rip-offset  0x140b80
#! capacity    128 bytes

# Text                           #  Line  RIP       Bytes  Opcode    
.__ctloc:                        #        0x140b80  0      OPC=0     
  movq %rbx, -0x10(%rsp)         #  1     0x140b80  5      OPC=1138  
  movl %edi, %ebx                #  2     0x140b85  2      OPC=1157  
  movq %r12, -0x8(%rsp)          #  3     0x140b87  5      OPC=1138  
  movl %ebx, %edi                #  4     0x140b8c  2      OPC=1157  
  subl $0x18, %esp               #  5     0x140b8e  3      OPC=2384  
  addq %r15, %rsp                #  6     0x140b91  3      OPC=72    
  movl %edx, %r12d               #  7     0x140b94  3      OPC=1157  
  nop                            #  8     0x140b97  1      OPC=1343  
  nop                            #  9     0x140b98  1      OPC=1343  
  nop                            #  10    0x140b99  1      OPC=1343  
  nop                            #  11    0x140b9a  1      OPC=1343  
  nop                            #  12    0x140b9b  1      OPC=1343  
  nop                            #  13    0x140b9c  1      OPC=1343  
  nop                            #  14    0x140b9d  1      OPC=1343  
  nop                            #  15    0x140b9e  1      OPC=1343  
  nop                            #  16    0x140b9f  1      OPC=1343  
  movl %ebx, %ebx                #  17    0x140ba0  2      OPC=1157  
  movl $0x0, 0x3fc(%r15,%rbx,1)  #  18    0x140ba2  12     OPC=1135  
  movl $0xff, %edx               #  19    0x140bae  5      OPC=1154  
  movl %esi, %esi                #  20    0x140bb3  2      OPC=1157  
  nop                            #  21    0x140bb5  1      OPC=1343  
  nop                            #  22    0x140bb6  1      OPC=1343  
  nop                            #  23    0x140bb7  1      OPC=1343  
  nop                            #  24    0x140bb8  1      OPC=1343  
  nop                            #  25    0x140bb9  1      OPC=1343  
  nop                            #  26    0x140bba  1      OPC=1343  
  callq .mbstowcs                #  27    0x140bbb  5      OPC=260   
  movl $0x0, %edx                #  28    0x140bc0  5      OPC=1154  
  cmpl $0xffffffff, %eax         #  29    0x140bc5  6      OPC=469   
  nop                            #  30    0x140bcb  1      OPC=1343  
  nop                            #  31    0x140bcc  1      OPC=1343  
  nop                            #  32    0x140bcd  1      OPC=1343  
  cmovel %edx, %eax              #  33    0x140bce  3      OPC=302   
  movl %r12d, %r12d              #  34    0x140bd1  3      OPC=1157  
  movl %eax, (%r15,%r12,1)       #  35    0x140bd4  4      OPC=1136  
  movl %ebx, %eax                #  36    0x140bd8  2      OPC=1157  
  movq 0x10(%rsp), %r12          #  37    0x140bda  5      OPC=1161  
  movq 0x8(%rsp), %rbx           #  38    0x140bdf  5      OPC=1161  
  xchgw %ax, %ax                 #  39    0x140be4  2      OPC=3700  
  addl $0x18, %esp               #  40    0x140be6  3      OPC=65    
  addq %r15, %rsp                #  41    0x140be9  3      OPC=72    
  popq %r11                      #  42    0x140bec  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  43    0x140bee  7      OPC=131   
  nop                            #  44    0x140bf5  1      OPC=1343  
  nop                            #  45    0x140bf6  1      OPC=1343  
  nop                            #  46    0x140bf7  1      OPC=1343  
  nop                            #  47    0x140bf8  1      OPC=1343  
  addq %r15, %r11                #  48    0x140bf9  3      OPC=72    
  jmpq %r11                      #  49    0x140bfc  3      OPC=928   
  nop                            #  50    0x140bff  1      OPC=1343  
  nop                            #  51    0x140c00  1      OPC=1343  
  nop                            #  52    0x140c01  1      OPC=1343  
  nop                            #  53    0x140c02  1      OPC=1343  
  nop                            #  54    0x140c03  1      OPC=1343  
  nop                            #  55    0x140c04  1      OPC=1343  
  nop                            #  56    0x140c05  1      OPC=1343  
  nop                            #  57    0x140c06  1      OPC=1343  
  nop                            #  58    0x140c07  1      OPC=1343  
  nop                            #  59    0x140c08  1      OPC=1343  
  nop                            #  60    0x140c09  1      OPC=1343  
  nop                            #  61    0x140c0a  1      OPC=1343  
  nop                            #  62    0x140c0b  1      OPC=1343  
  nop                            #  63    0x140c0c  1      OPC=1343  
                                                                     
.size __ctloc, .-__ctloc

