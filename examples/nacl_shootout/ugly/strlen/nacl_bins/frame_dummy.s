  .text
  .globl frame_dummy
  .type frame_dummy, @function

#! file-offset 0x60160
#! rip-offset  0x20160
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode    
.frame_dummy:                   #        0x20160  0      OPC=0     
  pushq %rbp                    #  1     0x20160  1      OPC=1861  
  movl $0x10e480, %eax          #  2     0x20161  5      OPC=1154  
  testl %eax, %eax              #  3     0x20166  2      OPC=2436  
  movq %rsp, %rbp               #  4     0x20168  3      OPC=1162  
  je .L_20180                   #  5     0x2016b  6      OPC=893   
  nop                           #  6     0x20171  1      OPC=1343  
  nop                           #  7     0x20172  1      OPC=1343  
  movl $0x100710d0, %esi        #  8     0x20173  5      OPC=1154  
  movl $0x10050fc0, %edi        #  9     0x20178  5      OPC=1154  
  nop                           #  10    0x2017d  1      OPC=1343  
  nop                           #  11    0x2017e  1      OPC=1343  
  nop                           #  12    0x2017f  1      OPC=1343  
  nop                           #  13    0x20180  1      OPC=1343  
  callq .__register_frame_info  #  14    0x20181  5      OPC=260   
.L_20180:                       #        0x20186  0      OPC=0     
  movl 0x10050322(%rip), %eax   #  15    0x20186  6      OPC=1156  
  testl %eax, %eax              #  16    0x2018c  2      OPC=2436  
  je .L_201c0                   #  17    0x2018e  6      OPC=893   
  nop                           #  18    0x20194  1      OPC=1343  
  nop                           #  19    0x20195  1      OPC=1343  
  movl $0x0, %eax               #  20    0x20196  5      OPC=1154  
  movl %eax, %eax               #  21    0x2019b  2      OPC=1157  
  testq %rax, %rax              #  22    0x2019d  3      OPC=2438  
  je .L_201c0                   #  23    0x201a0  6      OPC=893   
  nop                           #  24    0x201a6  1      OPC=1343  
  nop                           #  25    0x201a7  1      OPC=1343  
  popq %r11                     #  26    0x201a8  2      OPC=1694  
  movl %r11d, %ebp              #  27    0x201aa  3      OPC=1157  
  addq %r15, %rbp               #  28    0x201ad  3      OPC=72    
  xchgw %ax, %ax                #  29    0x201b0  2      OPC=3700  
  movl $0x100704a8, %edi        #  30    0x201b2  5      OPC=1154  
  andl $0xffffffe0, %eax        #  31    0x201b7  6      OPC=131   
  nop                           #  32    0x201bd  1      OPC=1343  
  nop                           #  33    0x201be  1      OPC=1343  
  nop                           #  34    0x201bf  1      OPC=1343  
  addq %r15, %rax               #  35    0x201c0  3      OPC=72    
  jmpq %rax                     #  36    0x201c3  2      OPC=928   
  nop                           #  37    0x201c5  1      OPC=1343  
  nop                           #  38    0x201c6  1      OPC=1343  
  nop                           #  39    0x201c7  1      OPC=1343  
  nop                           #  40    0x201c8  1      OPC=1343  
  nop                           #  41    0x201c9  1      OPC=1343  
  nop                           #  42    0x201ca  1      OPC=1343  
  nop                           #  43    0x201cb  1      OPC=1343  
  nop                           #  44    0x201cc  1      OPC=1343  
  nop                           #  45    0x201cd  1      OPC=1343  
  nop                           #  46    0x201ce  1      OPC=1343  
  nop                           #  47    0x201cf  1      OPC=1343  
  nop                           #  48    0x201d0  1      OPC=1343  
  nop                           #  49    0x201d1  1      OPC=1343  
  nop                           #  50    0x201d2  1      OPC=1343  
  nop                           #  51    0x201d3  1      OPC=1343  
  nop                           #  52    0x201d4  1      OPC=1343  
  nop                           #  53    0x201d5  1      OPC=1343  
  nop                           #  54    0x201d6  1      OPC=1343  
  nop                           #  55    0x201d7  1      OPC=1343  
.L_201c0:                       #        0x201d8  0      OPC=0     
  popq %r11                     #  56    0x201d8  2      OPC=1694  
  movl %r11d, %ebp              #  57    0x201da  3      OPC=1157  
  addq %r15, %rbp               #  58    0x201dd  3      OPC=72    
  popq %r11                     #  59    0x201e0  2      OPC=1694  
  andl $0xffffffe0, %r11d       #  60    0x201e2  7      OPC=131   
  nop                           #  61    0x201e9  1      OPC=1343  
  nop                           #  62    0x201ea  1      OPC=1343  
  nop                           #  63    0x201eb  1      OPC=1343  
  nop                           #  64    0x201ec  1      OPC=1343  
  addq %r15, %r11               #  65    0x201ed  3      OPC=72    
  jmpq %r11                     #  66    0x201f0  3      OPC=928   
  nop                           #  67    0x201f3  1      OPC=1343  
  nop                           #  68    0x201f4  1      OPC=1343  
  nop                           #  69    0x201f5  1      OPC=1343  
  nop                           #  70    0x201f6  1      OPC=1343  
  nop                           #  71    0x201f7  1      OPC=1343  
  nop                           #  72    0x201f8  1      OPC=1343  
  nop                           #  73    0x201f9  1      OPC=1343  
  nop                           #  74    0x201fa  1      OPC=1343  
  nop                           #  75    0x201fb  1      OPC=1343  
  nop                           #  76    0x201fc  1      OPC=1343  
  nop                           #  77    0x201fd  1      OPC=1343  
  nop                           #  78    0x201fe  1      OPC=1343  
                                                                   
.size frame_dummy, .-frame_dummy

