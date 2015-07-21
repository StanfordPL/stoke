  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.strcpy:                      #        0x1267e0  0      OPC=0     
  movl %edi, %eax             #  1     0x1267e0  2      OPC=1158  
  movq %rax, %rcx             #  2     0x1267e2  3      OPC=1162  
  movl %esi, %edx             #  3     0x1267e5  2      OPC=1157  
  orl %esi, %edi              #  4     0x1267e7  2      OPC=1380  
  andl $0x3, %edi             #  5     0x1267e9  3      OPC=132   
  jne .L_126860               #  6     0x1267ec  6      OPC=963   
  xorl %edi, %esi             #  7     0x1267f2  2      OPC=3759  
  movl (%r15,%rsi,1), %r8d    #  8     0x1267f4  4      OPC=1156  
  orl %r8d, %esi              #  9     0x1267f8  3      OPC=1381  
  nop                         #  10    0x1267fb  1      OPC=1343  
  nop                         #  11    0x1267fc  1      OPC=1343  
  notl %esi                   #  12    0x1267fd  2      OPC=1353  
  nop                         #  13    0x1267ff  1      OPC=1343  
  nop                         #  14    0x126800  1      OPC=1343  
  andl $0x80808080, %esi      #  15    0x126801  6      OPC=131   
  nop                         #  16    0x126807  1      OPC=1343  
  nop                         #  17    0x126808  1      OPC=1343  
  nop                         #  18    0x126809  1      OPC=1343  
  leal -0x1010101(%r8), %edi  #  19    0x12680a  7      OPC=1066  
  nop                         #  20    0x126811  1      OPC=1343  
  andl %edi, %esi             #  21    0x126812  2      OPC=134   
  nop                         #  22    0x126814  1      OPC=1343  
  nopl %eax                   #  23    0x126815  3      OPC=1347  
  jne .L_126860               #  24    0x126818  6      OPC=963   
  nop                         #  25    0x12681e  1      OPC=1343  
  nop                         #  26    0x12681f  1      OPC=1343  
.L_126820:                    #        0x126820  0      OPC=0     
  andl %ecx, %ecx             #  27    0x126820  2      OPC=135   
  movl %r8d, (%r15,%rcx,1)    #  28    0x126822  4      OPC=1136  
  addl $0x4, %edx             #  29    0x126826  3      OPC=65    
  movl (%r15,%rdx,1), %r8d    #  30    0x126829  4      OPC=1156  
  addl $0x4, %ecx             #  31    0x12682d  3      OPC=65    
  movl %r8d, %r9d             #  32    0x126830  3      OPC=1157  
  leal -0x1010101(%r8), %esi  #  33    0x126833  7      OPC=1066  
  notl %r9d                   #  34    0x12683a  3      OPC=1353  
  andl %esi, %r9d             #  35    0x12683d  3      OPC=134   
  andl $0x80808080, %r9d      #  36    0x126840  7      OPC=131   
  je .L_126820                #  37    0x126847  6      OPC=893   
  nop                         #  38    0x12684d  1      OPC=1343  
  nop                         #  39    0x12684e  1      OPC=1343  
  nop                         #  40    0x12684f  1      OPC=1343  
  nop                         #  41    0x126850  1      OPC=1343  
  nop                         #  42    0x126851  1      OPC=1343  
  nop                         #  43    0x126852  1      OPC=1343  
  nop                         #  44    0x126853  1      OPC=1343  
  nop                         #  45    0x126854  1      OPC=1343  
  nop                         #  46    0x126855  1      OPC=1343  
  nop                         #  47    0x126856  1      OPC=1343  
  nop                         #  48    0x126857  1      OPC=1343  
  nop                         #  49    0x126858  1      OPC=1343  
  nop                         #  50    0x126859  1      OPC=1343  
  nop                         #  51    0x12685a  1      OPC=1343  
  nop                         #  52    0x12685b  1      OPC=1343  
  nop                         #  53    0x12685c  1      OPC=1343  
  nop                         #  54    0x12685d  1      OPC=1343  
  nop                         #  55    0x12685e  1      OPC=1343  
  nop                         #  56    0x12685f  1      OPC=1343  
.L_126860:                    #        0x126860  0      OPC=0     
  orl %edx, %edx              #  57    0x126860  2      OPC=1380  
  movsbl (%r15,%rdx,1), %esi  #  58    0x126862  5      OPC=1280  
  addl $0x1, %edx             #  59    0x126867  3      OPC=65    
  andl %ecx, %ecx             #  60    0x12686a  2      OPC=134   
  movb %sil, (%r15,%rcx,1)    #  61    0x12686c  4      OPC=1141  
  addl $0x1, %ecx             #  62    0x126870  3      OPC=65    
  andb %sil, %sil             #  63    0x126873  3      OPC=144   
  jne .L_126860               #  64    0x126876  6      OPC=963   
  nopl %eax                   #  65    0x12687c  3      OPC=1347  
  nop                         #  66    0x12687f  1      OPC=1343  
  popq %r11                   #  67    0x126880  2      OPC=1694  
  andl $0xe0, %r11d           #  68    0x126882  4      OPC=132   
  addq %r15, %r11             #  69    0x126886  3      OPC=72    
  jmpq %r11                   #  70    0x126889  3      OPC=928   
                                                                  
.size strcpy, .-strcpy
