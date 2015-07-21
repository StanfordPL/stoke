  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.strcpy:                      #        0x1267e0  0      OPC=0     
  movq %rdi, %rcx             #  1     0x1267e0  3      OPC=1162  
  orl %esi, %edi              #  2     0x1267e3  2      OPC=1381  
  movl %esi, %edx             #  3     0x1267e5  2      OPC=1157  
  andl $0x3, %edi             #  4     0x1267e7  3      OPC=132   
  movl %ecx, %eax             #  5     0x1267ea  2      OPC=1157  
  jne .L_126860               #  6     0x1267ec  6      OPC=963   
  andl %esi, %esi             #  7     0x1267f2  2      OPC=134   
  movl (%r15,%rsi,1), %r8d    #  8     0x1267f4  4      OPC=1156  
  nop                         #  9     0x1267f8  1      OPC=1343  
  leal -0x1010101(%r8), %edi  #  10    0x1267f9  7      OPC=1066  
  orb %cl, %al                #  11    0x126800  2      OPC=1389  
  orq %r8, %rsi               #  12    0x126802  3      OPC=1385  
  nop                         #  13    0x126805  1      OPC=1343  
  nop                         #  14    0x126806  1      OPC=1343  
  notl %esi                   #  15    0x126807  2      OPC=1353  
  andl $0x80808080, %esi      #  16    0x126809  6      OPC=131   
  nop                         #  17    0x12680f  1      OPC=1343  
  andl %edi, %esi             #  18    0x126810  2      OPC=135   
  nop                         #  19    0x126812  1      OPC=1343  
  jne .L_126860               #  20    0x126813  6      OPC=963   
  nop                         #  21    0x126819  1      OPC=1343  
  nop                         #  22    0x12681a  1      OPC=1343  
  nop                         #  23    0x12681b  1      OPC=1343  
  nop                         #  24    0x12681c  1      OPC=1343  
  andl $0xf9, %ecx            #  25    0x12681d  3      OPC=132   
.L_126820:                    #        0x126820  0      OPC=0     
  movl %ecx, %ecx             #  26    0x126820  2      OPC=1157  
  movl %r8d, (%r15,%rcx,1)    #  27    0x126822  4      OPC=1136  
  addl $0x4, %edx             #  28    0x126826  3      OPC=65    
  movl (%r15,%rdx,1), %r8d    #  29    0x126829  4      OPC=1156  
  nop                         #  30    0x12682d  1      OPC=1343  
  subl %eax, %edi             #  31    0x12682e  2      OPC=2386  
  leal -0x1010101(%r8), %esi  #  32    0x126830  7      OPC=1066  
  nop                         #  33    0x126837  1      OPC=1343  
  nop                         #  34    0x126838  1      OPC=1343  
  nop                         #  35    0x126839  1      OPC=1343  
  addl $0x4, %ecx             #  36    0x12683a  3      OPC=65    
  movl %r8d, %r9d             #  37    0x12683d  3      OPC=1157  
  nop                         #  38    0x126840  1      OPC=1343  
  nop                         #  39    0x126841  1      OPC=1343  
  nop                         #  40    0x126842  1      OPC=1343  
  nop                         #  41    0x126843  1      OPC=1343  
  nop                         #  42    0x126844  1      OPC=1343  
  nop                         #  43    0x126845  1      OPC=1343  
  nop                         #  44    0x126846  1      OPC=1343  
  nop                         #  45    0x126847  1      OPC=1343  
  nop                         #  46    0x126848  1      OPC=1343  
  notl %r9d                   #  47    0x126849  3      OPC=1353  
  nop                         #  48    0x12684c  1      OPC=1343  
  andl %esi, %r9d             #  49    0x12684d  3      OPC=134   
  andl $0x80808080, %r9d      #  50    0x126850  7      OPC=131   
  nop                         #  51    0x126857  1      OPC=1343  
  je .L_126820                #  52    0x126858  6      OPC=893   
  nop                         #  53    0x12685e  1      OPC=1343  
  nop                         #  54    0x12685f  1      OPC=1343  
.L_126860:                    #        0x126860  0      OPC=0     
  orl %edx, %edx              #  55    0x126860  2      OPC=1380  
  movzbl (%r15,%rdx,1), %esi  #  56    0x126862  5      OPC=1302  
  movl %ecx, %ecx             #  57    0x126867  2      OPC=1158  
  movb %sil, (%r15,%rcx,1)    #  58    0x126869  4      OPC=1141  
  incl %edx                   #  59    0x12686d  2      OPC=844   
  nop                         #  60    0x12686f  1      OPC=1343  
  addl $0x1, %ecx             #  61    0x126870  3      OPC=65    
  shll $0x1, %esi             #  62    0x126873  2      OPC=2270  
  jne .L_126860               #  63    0x126875  6      OPC=963   
  nop                         #  64    0x12687b  1      OPC=1343  
  nopl %eax                   #  65    0x12687c  3      OPC=1347  
  nop                         #  66    0x12687f  1      OPC=1343  
  popq %r11                   #  83    0x126890  2      OPC=1694  
  andl $0xe0, %r11d     #  90    0x126898  7      OPC=132
  addq %r15, %r11             #  95    0x1268a3  3      OPC=72    
  jmpq %r11                   #  96    0x1268a6  3      OPC=928   
                                                                 
.size strcpy, .-strcpy
