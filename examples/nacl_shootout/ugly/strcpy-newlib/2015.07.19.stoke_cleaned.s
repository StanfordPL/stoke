  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.strcpy:                      #        0x1267e0  0      OPC=0     
  movq %rsi, %rdx             #  1     0x1267e0  3      OPC=1163  
  movl %esi, %esi             #  2     0x1267e3  2      OPC=1157  
  movl %edi, %eax             #  3     0x1267e5  2      OPC=1158  
  xorl %esi, %edi             #  4     0x1267e7  2      OPC=3759  
  orl %eax, %edi              #  5     0x1267e9  2      OPC=1380  
  andl $0x3, %edi             #  6     0x1267eb  3      OPC=132   
  movq %rax, %rcx             #  7     0x1267ee  3      OPC=1162  
  jne .L_126860               #  8     0x1267f1  6      OPC=963   
  orl %esi, %esi              #  9     0x1267f7  2      OPC=1381  
  movl (%r15,%rsi,1), %r8d    #  10    0x1267f9  4      OPC=1156  
  movl %r8d, %esi             #  11    0x1267fd  3      OPC=1158  
  notl %esi                   #  12    0x126800  2      OPC=1353  
  nop                         #  13    0x126802  1      OPC=1343  
  nop                         #  14    0x126803  1      OPC=1343  
  leal -0x1010101(%r8), %edi  #  15    0x126804  7      OPC=1066  
  nop                         #  16    0x12680b  1      OPC=1343  
  andl $0x80808080, %esi      #  17    0x12680c  6      OPC=131   
  andl %edi, %esi             #  18    0x126812  2      OPC=134   
  jne .L_126860               #  19    0x126814  6      OPC=963   
  nop                         #  20    0x12681a  1      OPC=1343  
  nop                         #  21    0x12681b  1      OPC=1343  
  nop                         #  22    0x12681c  1      OPC=1343  
  nop                         #  23    0x12681d  1      OPC=1343  
  nop                         #  24    0x12681e  1      OPC=1343  
  nop                         #  25    0x12681f  1      OPC=1343  
.L_126820:                    #        0x126820  0      OPC=0     
  orl %ecx, %ecx              #  26    0x126820  2      OPC=1381  
  movl %r8d, (%r15,%rcx,1)    #  27    0x126822  4      OPC=1136  
  addl $0x4, %ecx             #  28    0x126826  3      OPC=65    
  addl $0x4, %edx             #  29    0x126829  3      OPC=65    
  movl (%r15,%rdx,1), %r8d    #  30    0x12682c  4      OPC=1156  
  movl %r8d, %r9d             #  32    0x126831  3      OPC=1157  
  leal -0x1010101(%r8), %esi  #  33    0x126834  7      OPC=1066  
  notl %r9d                   #  34    0x12683b  3      OPC=1353  
  andl %esi, %r9d             #  39    0x126842  3      OPC=134   
  andl $0x80808080, %r9d      #  40    0x126845  7      OPC=131   
  je .L_126820                #  42    0x12684d  6      OPC=893   
  nop
  nop
  nop
  nop
  nop
  nop
  nop                         #  43    0x126853  1      OPC=1343  
  nop                         #  44    0x126854  1      OPC=1343  
  nop                         #  45    0x126855  1      OPC=1343  
  nop                         #  46    0x126856  1      OPC=1343  
  nop                         #  47    0x126857  1      OPC=1343  
  nop                         #  48    0x126858  1      OPC=1343  
  nop                         #  49    0x126859  1      OPC=1343  
  nop                         #  50    0x12685a  1      OPC=1343  
  nop                         #  51    0x12685b  1      OPC=1343  
  nop
  nop
  nop                         #  53    0x12685e  1      OPC=1343  
  nop                         #  54    0x12685f  1      OPC=1343  
.L_126860:                    #        0x126860  0      OPC=0     
  andl %edx, %edx             #  55    0x126860  2      OPC=134   
  movsbl (%r15,%rdx,1), %esi  #  56    0x126862  5      OPC=1280  
  addl $0x1, %edx             #  58    0x126868  3      OPC=65    
  andl %ecx, %ecx             #  59    0x12686b  2      OPC=134   
  movb %sil, (%r15,%rcx,1)    #  60    0x12686d  4      OPC=1141  
  addl $0x1, %ecx             #  63    0x126873  3      OPC=65    
  testb %sil, %sil            #  65    0x126877  3      OPC=2440  
  jne .L_126860               #  66    0x12687a  6      OPC=963   
  nop
  nop
  nop
  nop
  popq %r11                   #  83    0x126890  2      OPC=1694  
  andl $0xe0, %r11d     #  90    0x126898  7      OPC=132
  addq %r15, %r11             #  95    0x1268a3  3      OPC=72    
  jmpq %r11                   #  96    0x1268a6  3      OPC=928   

                                                                  
.size strcpy, .-strcpy
