  .text
  .globl idlefn
  .type idlefn, @function

#! file-offset 0x655a0
#! rip-offset  0x255a0
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.idlefn:                       #        0x255a0  0      OPC=0     
  movl 0x10053c0a(%rip), %eax  #  1     0x255a0  6      OPC=1156  
  subl $0x1, %eax              #  2     0x255a6  3      OPC=2384  
  movl %eax, 0x10053c01(%rip)  #  3     0x255a9  6      OPC=1136  
  testl %eax, %eax             #  4     0x255af  2      OPC=2436  
  je .L_25600                  #  5     0x255b1  6      OPC=893   
  nop                          #  6     0x255b7  1      OPC=1343  
  nop                          #  7     0x255b8  1      OPC=1343  
  movl 0x10053bf3(%rip), %eax  #  8     0x255b9  6      OPC=1156  
  testb $0x1, %al              #  9     0x255bf  2      OPC=2421  
  nop                          #  10    0x255c1  1      OPC=1343  
  nop                          #  11    0x255c2  1      OPC=1343  
  nop                          #  12    0x255c3  1      OPC=1343  
  nop                          #  13    0x255c4  1      OPC=1343  
  nop                          #  14    0x255c5  1      OPC=1343  
  je .L_255e0                  #  15    0x255c6  6      OPC=893   
  nop                          #  16    0x255cc  1      OPC=1343  
  nop                          #  17    0x255cd  1      OPC=1343  
  sarl $0x1, %eax              #  18    0x255ce  2      OPC=2097  
  andl $0x7fff, %eax           #  19    0x255d0  5      OPC=113   
  xorl $0xd008, %eax           #  20    0x255d5  5      OPC=3737  
  movl %eax, 0x10053bd8(%rip)  #  21    0x255da  6      OPC=1136  
  movl $0x6, %edi              #  22    0x255e0  5      OPC=1154  
  jmpq .release                #  23    0x255e5  5      OPC=930   
  xchgw %ax, %ax               #  24    0x255ea  2      OPC=3700  
.L_255e0:                      #        0x255ec  0      OPC=0     
  sarl $0x1, %eax              #  25    0x255ec  2      OPC=2097  
  andl $0x7fff, %eax           #  26    0x255ee  5      OPC=113   
  movl %eax, 0x10053bbf(%rip)  #  27    0x255f3  6      OPC=1136  
  movl $0x5, %edi              #  28    0x255f9  5      OPC=1154  
  jmpq .release                #  29    0x255fe  5      OPC=930   
  nop                          #  30    0x25603  1      OPC=1343  
  nop                          #  31    0x25604  1      OPC=1343  
  nop                          #  32    0x25605  1      OPC=1343  
  nop                          #  33    0x25606  1      OPC=1343  
  nop                          #  34    0x25607  1      OPC=1343  
  nop                          #  35    0x25608  1      OPC=1343  
  nop                          #  36    0x25609  1      OPC=1343  
  nop                          #  37    0x2560a  1      OPC=1343  
  nop                          #  38    0x2560b  1      OPC=1343  
.L_25600:                      #        0x2560c  0      OPC=0     
  addl $0x1, 0x1004bb2d(%rip)  #  39    0x2560c  7      OPC=51    
  movl 0x10053b9b(%rip), %eax  #  40    0x25613  6      OPC=1156  
  movl %eax, %eax              #  41    0x25619  2      OPC=1157  
  orl $0x4, 0x10(%r15,%rax,1)  #  42    0x2561b  6      OPC=1364  
  movl %eax, %eax              #  43    0x25621  2      OPC=1157  
  movl (%r15,%rax,1), %eax     #  44    0x25623  4      OPC=1156  
  popq %r11                    #  45    0x25627  2      OPC=1694  
  nop                          #  46    0x25629  1      OPC=1343  
  nop                          #  47    0x2562a  1      OPC=1343  
  nop                          #  48    0x2562b  1      OPC=1343  
  andl $0xffffffe0, %r11d      #  49    0x2562c  7      OPC=131   
  nop                          #  50    0x25633  1      OPC=1343  
  nop                          #  51    0x25634  1      OPC=1343  
  nop                          #  52    0x25635  1      OPC=1343  
  nop                          #  53    0x25636  1      OPC=1343  
  addq %r15, %r11              #  54    0x25637  3      OPC=72    
  jmpq %r11                    #  55    0x2563a  3      OPC=928   
  nop                          #  56    0x2563d  1      OPC=1343  
  nop                          #  57    0x2563e  1      OPC=1343  
  nop                          #  58    0x2563f  1      OPC=1343  
  nop                          #  59    0x25640  1      OPC=1343  
  nop                          #  60    0x25641  1      OPC=1343  
  nop                          #  61    0x25642  1      OPC=1343  
  nop                          #  62    0x25643  1      OPC=1343  
  nop                          #  63    0x25644  1      OPC=1343  
  nop                          #  64    0x25645  1      OPC=1343  
  nop                          #  65    0x25646  1      OPC=1343  
  nop                          #  66    0x25647  1      OPC=1343  
  nop                          #  67    0x25648  1      OPC=1343  
  nop                          #  68    0x25649  1      OPC=1343  
  nop                          #  69    0x2564a  1      OPC=1343  
  nop                          #  70    0x2564b  1      OPC=1343  
  nop                          #  71    0x2564c  1      OPC=1343  
  nop                          #  72    0x2564d  1      OPC=1343  
  nop                          #  73    0x2564e  1      OPC=1343  
  nop                          #  74    0x2564f  1      OPC=1343  
  nop                          #  75    0x25650  1      OPC=1343  
  nop                          #  76    0x25651  1      OPC=1343  
  nop                          #  77    0x25652  1      OPC=1343  
                                                                  
.size idlefn, .-idlefn

