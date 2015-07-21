  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.strcpy:                      #        0x1267e0  0      OPC=0     
  movl %edi, %eax             #  1     0x1267e0  2      OPC=1157  
  movq %rdi, %rcx             #  2     0x1267e2  3      OPC=1163  
  orl %esi, %edi              #  3     0x1267e5  2      OPC=1381  
  andl $0x3, %edi             #  4     0x1267e7  3      OPC=132   
  movq %rsi, %rdx             #  5     0x1267ea  3      OPC=1163  
  jne .L_126860               #  6     0x1267ed  6      OPC=963   
  addl %edi, %eax             #  7     0x1267f3  2      OPC=68    
  nop                         #  8     0x1267f5  1      OPC=1343  
  nop                         #  9     0x1267f6  1      OPC=1343  
  nop                         #  10    0x1267f7  1      OPC=1343  
  andl %edx, %esi             #  11    0x1267f8  2      OPC=134   
  movl (%r15,%rsi,1), %r8d    #  12    0x1267fa  4      OPC=1156  
  nop                         #  13    0x1267fe  1      OPC=1343  
  nop                         #  14    0x1267ff  1      OPC=1343  
  nop                         #  15    0x126800  1      OPC=1343  
  nop                         #  16    0x126801  1      OPC=1343  
  leal -0x1010101(%r8), %edi  #  17    0x126802  7      OPC=1066  
  nop                         #  18    0x126809  1      OPC=1343  
  nop                         #  19    0x12680a  1      OPC=1343  
  xorl %r8d, %edi             #  20    0x12680b  3      OPC=3758  
  movb %al, %cl               #  21    0x12680e  2      OPC=1168  
  andl $0x80808080, %edi      #  22    0x126810  6      OPC=131   
  jne .L_126860               #  23    0x126816  6      OPC=963   
  xorl %edi, %eax             #  24    0x12681c  2      OPC=3758  
  nop                         #  25    0x12681e  1      OPC=1343  
  nop                         #  26    0x12681f  1      OPC=1343  
.L_126820:                    #        0x126820  0      OPC=0     
  addl %edi, %ecx             #  27    0x126820  2      OPC=67    
  movl %r8d, (%r15,%rcx,1)    #  28    0x126822  4      OPC=1136  
  addl $0x4, %edx             #  29    0x126826  3      OPC=65    
  movl (%r15,%rdx,1), %r8d    #  30    0x126829  4      OPC=1156  
  leal -0x1010101(%r8), %esi  #  31    0x12682d  7      OPC=1066  
  movl %r8d, %r9d             #  32    0x126834  3      OPC=1157  
  notl %r9d                   #  33    0x126837  3      OPC=1353  
  andl %esi, %r9d             #  34    0x12683a  3      OPC=135   
  addl $0x4, %ecx             #  35    0x12683d  3      OPC=65    
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
  andl %edx, %edx             #  57    0x126860  2      OPC=135   
  movsbl (%r15,%rdx,1), %esi  #  58    0x126862  5      OPC=1280  
  incw %dx                    #  59    0x126867  3      OPC=843   
  movl %ecx, %ecx             #  60    0x12686a  2      OPC=1157  
  movb %sil, (%r15,%rcx,1)    #  61    0x12686c  4      OPC=1141  
  addq $0x1, %rcx             #  62    0x126870  7      OPC=69    
  orb %sil, %sil              #  63    0x126877  3      OPC=1389  
  jne .L_126860               #  64    0x12687a  6      OPC=963   
  popq %r11                   #  65    0x126880  2      OPC=1694  
  andl $0xe0, %r11d           #  66    0x126882  4      OPC=132   
  addq %r15, %r11             #  67    0x126886  3      OPC=72    
  jmpq %r11                   #  68    0x126889  3      OPC=928   
                                                                  
.size strcpy, .-strcpy
