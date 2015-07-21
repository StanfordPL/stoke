  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.strcpy:                      #        0x1267e0  0      OPC=0     
  movl %edi, %eax             #  2     0x1267e2  2      OPC=1157  
  movl %esi, %edi             #  3     0x1267e4  2      OPC=1157  
  movq %rsi, %rdx             #  4     0x1267e6  3      OPC=1162  
  movq %rax, %rcx             #  5     0x1267e9  3      OPC=1162  
  orl %eax, %edi              #  6     0x1267ec  2      OPC=1380  
  andl $0x3, %edi             #  7     0x1267ee  3      OPC=132   
  jne .L_126860               #  8     0x1267f1  6      OPC=963   
  movl %esi, %esi             #  11    0x1267f9  2      OPC=1157  
  movl (%r15,%rsi,1), %r8d    #  12    0x1267fb  4      OPC=1156  
  movl %r8d, %esi             #  13    0x1267ff  3      OPC=1157  
  nop                         #  14    0x126802  1      OPC=1343  
  nop                         #  15    0x126803  1      OPC=1343  
  nop                         #  16    0x126804  1      OPC=1343  
  nop                         #  17    0x126805  1      OPC=1343  
  leal -0x1010101(%r8), %edi  #  18    0x126806  7      OPC=1066  
  notl %esi                   #  19    0x12680d  2      OPC=1353  
  andl %edi, %esi             #  20    0x12680f  2      OPC=134   
  andl $0x80808080, %esi      #  21    0x126811  6      OPC=131   
  jne .L_126860               #  22    0x126817  6      OPC=963   
  nop                         #  29    0x126823  1      OPC=1343  
  nop                         #  30    0x126824  1      OPC=1343  
  nop                         #  31    0x126825  1      OPC=1343  
  nop                         #  32    0x126826  1      OPC=1343  
  nop                         #  33    0x126827  1      OPC=1343  
.L_126820:                    #        0x12682c  0      OPC=0     
  nop
  nop
  movl %ecx, %ecx             #  39    0x12682f  2      OPC=1157  
  movl %r8d, (%r15,%rcx,1)    #  40    0x126831  4      OPC=1136  
  addl $0x4, %ecx             #  41    0x126835  3      OPC=65    
  addl $0x4, %edx             #  38    0x12682c  3      OPC=65    
  movl (%r15,%rdx,1), %r8d    #  43    0x12683a  4      OPC=1156  
  movl %r8d, %r9d             #  44    0x12683e  3      OPC=1157  
  leal -0x1010101(%r8), %esi  #  45    0x126841  7      OPC=1066  
  notl %r9d                   #  46    0x126848  3      OPC=1353  
  andl %esi, %r9d             #  48    0x12684c  3      OPC=134   
  andl $0x80808080, %r9d      #  49    0x12684f  7      OPC=131   
  je .L_126820                #  50    0x126856  6      OPC=893   
  nop                         #  55    0x126860  1      OPC=1343  
  nop
  nop                         #  56    0x126861  1      OPC=1343  
  nop                         #  58    0x126863  1      OPC=1343  
  nop                         #  59    0x126864  1      OPC=1343  
  nop                         #  60    0x126865  1      OPC=1343  
  nop                         #  61    0x126866  1      OPC=1343  
  nop                         #  62    0x126867  1      OPC=1343  
  nop                         #  63    0x126868  1      OPC=1343  
  nop                         #  64    0x126869  1      OPC=1343  
  nop                         #  65    0x12686a  1      OPC=1343  
  nop                         #  66    0x12686b  1      OPC=1343  
  nop                         #  67    0x12686c  1      OPC=1343  
  nop                         #  68    0x12686d  1      OPC=1343  
  nop                         #  69    0x12686e  1      OPC=1343  
  nop                         #  70    0x12686f  1      OPC=1343  
  nop
  nop
  nop
.L_126860:                    #        0x126872  0      OPC=0     
  movl %edx, %edx             #  73    0x126872  2      OPC=1157  
  movzbl (%r15,%rdx,1), %esi  #  74    0x126874  5      OPC=1302  
  addl $0x1, %edx             #  75    0x126879  3      OPC=65    
  movl %ecx, %ecx             #  76    0x12687c  2      OPC=1157  
  movb %sil, (%r15,%rcx,1)    #  77    0x12687e  4      OPC=1141  
  addl $0x1, %ecx             #  78    0x126882  3      OPC=65    
  testb %sil, %sil            #  79    0x126885  3      OPC=2440  
  jne .L_126860               #  80    0x126888  6      OPC=963   
  nop
  nop
  nop
  nop
  popq %r11                   #  83    0x126890  2      OPC=1694  
  andl $0xe0, %r11d     #  90    0x126898  7      OPC=132   
  addq %r15, %r11             #  95    0x1268a3  3      OPC=72    
  jmpq %r11                   #  96    0x1268a6  3      OPC=928   
                                                                  
.size strcpy, .-strcpy

