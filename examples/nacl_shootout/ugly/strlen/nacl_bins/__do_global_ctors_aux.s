  .text
  .globl __do_global_ctors_aux
  .type __do_global_ctors_aux, @function

#! file-offset 0x1980a0
#! rip-offset  0x1580a0
#! capacity    128 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.__do_global_ctors_aux:       #        0x1580a0  0      OPC=0     
  pushq %rbp                  #  1     0x1580a0  1      OPC=1861  
  movq %rsp, %rbp             #  2     0x1580a1  3      OPC=1162  
  pushq %rbx                  #  3     0x1580a4  1      OPC=1861  
  subl $0x8, %esp             #  4     0x1580a5  3      OPC=2384  
  addq %r15, %rsp             #  5     0x1580a8  3      OPC=72    
  movl 0xff183e7(%rip), %eax  #  6     0x1580ab  6      OPC=1156  
  cmpl $0xffffffff, %eax      #  7     0x1580b1  6      OPC=469   
  nop                         #  8     0x1580b7  1      OPC=1343  
  nop                         #  9     0x1580b8  1      OPC=1343  
  nop                         #  10    0x1580b9  1      OPC=1343  
  je .L_158100                #  11    0x1580ba  6      OPC=893   
  nop                         #  12    0x1580c0  1      OPC=1343  
  nop                         #  13    0x1580c1  1      OPC=1343  
  movl $0x10070498, %ebx      #  14    0x1580c2  5      OPC=1154  
  movl %ebx, %ebx             #  15    0x1580c7  2      OPC=1157  
  nop                         #  16    0x1580c9  1      OPC=1343  
  nop                         #  17    0x1580ca  1      OPC=1343  
  nop                         #  18    0x1580cb  1      OPC=1343  
.L_1580c0:                    #        0x1580cc  0      OPC=0     
  subl $0x4, %ebx             #  19    0x1580cc  3      OPC=2384  
  nop                         #  20    0x1580cf  1      OPC=1343  
  nop                         #  21    0x1580d0  1      OPC=1343  
  nop                         #  22    0x1580d1  1      OPC=1343  
  nop                         #  23    0x1580d2  1      OPC=1343  
  nop                         #  24    0x1580d3  1      OPC=1343  
  nop                         #  25    0x1580d4  1      OPC=1343  
  nop                         #  26    0x1580d5  1      OPC=1343  
  nop                         #  27    0x1580d6  1      OPC=1343  
  nop                         #  28    0x1580d7  1      OPC=1343  
  nop                         #  29    0x1580d8  1      OPC=1343  
  nop                         #  30    0x1580d9  1      OPC=1343  
  nop                         #  31    0x1580da  1      OPC=1343  
  nop                         #  32    0x1580db  1      OPC=1343  
  nop                         #  33    0x1580dc  1      OPC=1343  
  nop                         #  34    0x1580dd  1      OPC=1343  
  nop                         #  35    0x1580de  1      OPC=1343  
  nop                         #  36    0x1580df  1      OPC=1343  
  nop                         #  37    0x1580e0  1      OPC=1343  
  nop                         #  38    0x1580e1  1      OPC=1343  
  nop                         #  39    0x1580e2  1      OPC=1343  
  nop                         #  40    0x1580e3  1      OPC=1343  
  andl $0xffffffe0, %eax      #  41    0x1580e4  6      OPC=131   
  nop                         #  42    0x1580ea  1      OPC=1343  
  nop                         #  43    0x1580eb  1      OPC=1343  
  nop                         #  44    0x1580ec  1      OPC=1343  
  addq %r15, %rax             #  45    0x1580ed  3      OPC=72    
  callq %rax                  #  46    0x1580f0  2      OPC=258   
  movl %ebx, %ebx             #  47    0x1580f2  2      OPC=1157  
  movl (%r15,%rbx,1), %eax    #  48    0x1580f4  4      OPC=1156  
  cmpl $0xffffffff, %eax      #  49    0x1580f8  6      OPC=469   
  nop                         #  50    0x1580fe  1      OPC=1343  
  nop                         #  51    0x1580ff  1      OPC=1343  
  nop                         #  52    0x158100  1      OPC=1343  
  jne .L_1580c0               #  53    0x158101  6      OPC=963   
  nop                         #  54    0x158107  1      OPC=1343  
  nop                         #  55    0x158108  1      OPC=1343  
  nop                         #  56    0x158109  1      OPC=1343  
  nop                         #  57    0x15810a  1      OPC=1343  
  nop                         #  58    0x15810b  1      OPC=1343  
  nop                         #  59    0x15810c  1      OPC=1343  
  nop                         #  60    0x15810d  1      OPC=1343  
  nop                         #  61    0x15810e  1      OPC=1343  
  nop                         #  62    0x15810f  1      OPC=1343  
  nop                         #  63    0x158110  1      OPC=1343  
  nop                         #  64    0x158111  1      OPC=1343  
  nop                         #  65    0x158112  1      OPC=1343  
  nop                         #  66    0x158113  1      OPC=1343  
  nop                         #  67    0x158114  1      OPC=1343  
  nop                         #  68    0x158115  1      OPC=1343  
  nop                         #  69    0x158116  1      OPC=1343  
  nop                         #  70    0x158117  1      OPC=1343  
  nop                         #  71    0x158118  1      OPC=1343  
  nop                         #  72    0x158119  1      OPC=1343  
  nop                         #  73    0x15811a  1      OPC=1343  
  nop                         #  74    0x15811b  1      OPC=1343  
  nop                         #  75    0x15811c  1      OPC=1343  
  nop                         #  76    0x15811d  1      OPC=1343  
.L_158100:                    #        0x15811e  0      OPC=0     
  addl $0x8, %esp             #  77    0x15811e  3      OPC=65    
  addq %r15, %rsp             #  78    0x158121  3      OPC=72    
  popq %rbx                   #  79    0x158124  1      OPC=1694  
  popq %r11                   #  80    0x158125  2      OPC=1694  
  movl %r11d, %ebp            #  81    0x158127  3      OPC=1157  
  addq %r15, %rbp             #  82    0x15812a  3      OPC=72    
  popq %r11                   #  83    0x15812d  2      OPC=1694  
  andl $0xffffffe0, %r11d     #  84    0x15812f  7      OPC=131   
  nop                         #  85    0x158136  1      OPC=1343  
  nop                         #  86    0x158137  1      OPC=1343  
  nop                         #  87    0x158138  1      OPC=1343  
  nop                         #  88    0x158139  1      OPC=1343  
  addq %r15, %r11             #  89    0x15813a  3      OPC=72    
  jmpq %r11                   #  90    0x15813d  3      OPC=928   
  nop                         #  91    0x158140  1      OPC=1343  
  nop                         #  92    0x158141  1      OPC=1343  
  nop                         #  93    0x158142  1      OPC=1343  
  nop                         #  94    0x158143  1      OPC=1343  
  nop                         #  95    0x158144  1      OPC=1343  
                                                                  
.size __do_global_ctors_aux, .-__do_global_ctors_aux

