  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode    
.strcpy:                      #        0x1267e0  0      OPC=0     
  movq %rdi, %rcx             #  1     0x1267e0  3      OPC=1163  
  orl %esi, %edi              #  2     0x1267e3  2      OPC=1380  
  movl %esi, %edx             #  3     0x1267e5  2      OPC=1157  
  andl $0x3, %edi             #  4     0x1267e7  3      OPC=132   
  movl %ecx, %eax             #  5     0x1267ea  2      OPC=1157  
  jne .L_126860               #  6     0x1267ec  6      OPC=963   
  xorl %edi, %esi             #  7     0x1267f2  2      OPC=3759  
  movl (%r15,%rsi,1), %r8d    #  8     0x1267f4  4      OPC=1156  
  leal -0x1010101(%r8), %esi  #  9     0x1267f8  7      OPC=1066  
  nop                         #  10    0x1267ff  1      OPC=1343  
  nop                         #  11    0x126800  1      OPC=1343  
  xorl %r8d, %esi             #  12    0x126801  3      OPC=3758  
  andl $0x80808080, %esi      #  13    0x126804  6      OPC=131   
  jne .L_126860               #  14    0x12680a  6      OPC=963   
  movw %di, %di               #  15    0x126810  3      OPC=1151  
  nop                         #  16    0x126813  1      OPC=1343  
  nop                         #  17    0x126814  1      OPC=1343  
  movl %edx, %edx             #  18    0x126815  2      OPC=1157  
  nop                         #  19    0x126817  1      OPC=1343  
  subl %edi, %edi             #  20    0x126818  2      OPC=2387  
  xorl %edi, %edx             #  21    0x12681a  2      OPC=3758  
  nop                         #  22    0x12681c  1      OPC=1343  
  nop                         #  23    0x12681d  1      OPC=1343  
  nop                         #  24    0x12681e  1      OPC=1343  
  nop                         #  25    0x12681f  1      OPC=1343  
.L_126820:                    #        0x126820  0      OPC=0     
  xorl %edi, %ecx             #  26    0x126820  2      OPC=3758  
  movl %r8d, (%r15,%rcx,1)    #  27    0x126822  4      OPC=1136  
  addl $0x4, %edx             #  28    0x126826  3      OPC=65    
  movl (%r15,%rdx,1), %r8d    #  29    0x126829  4      OPC=1156  
  leal -0x1010101(%r8), %esi  #  30    0x12682d  7      OPC=1066  
  movl %r8d, %r9d             #  31    0x126834  3      OPC=1158  
  addl $0x4, %ecx             #  32    0x126837  3      OPC=65    
  notl %r9d                   #  33    0x12683a  3      OPC=1353  
  andl %esi, %r9d             #  34    0x12683d  3      OPC=134   
  andl $0x80808080, %r9d      #  35    0x126840  7      OPC=131   
  je .L_126820                #  36    0x126847  6      OPC=893   
  nop                         #  37    0x12684d  1      OPC=1343  
  nop                         #  38    0x12684e  1      OPC=1343  
  nop                         #  39    0x12684f  1      OPC=1343  
  nop                         #  40    0x126850  1      OPC=1343  
  nop                         #  41    0x126851  1      OPC=1343  
  nop                         #  42    0x126852  1      OPC=1343  
  nop                         #  43    0x126853  1      OPC=1343  
  nop                         #  44    0x126854  1      OPC=1343  
  nop                         #  45    0x126855  1      OPC=1343  
  nop                         #  46    0x126856  1      OPC=1343  
  nop                         #  47    0x126857  1      OPC=1343  
  nop                         #  48    0x126858  1      OPC=1343  
  nop                         #  49    0x126859  1      OPC=1343  
  nop                         #  50    0x12685a  1      OPC=1343  
  nop                         #  51    0x12685b  1      OPC=1343  
  nop                         #  52    0x12685c  1      OPC=1343  
  nop                         #  53    0x12685d  1      OPC=1343  
  nop                         #  54    0x12685e  1      OPC=1343  
  nop                         #  55    0x12685f  1      OPC=1343  
.L_126860:                    #        0x126860  0      OPC=0     
  andl %edx, %edx             #  56    0x126860  2      OPC=135   
  movzbl (%r15,%rdx,1), %esi  #  57    0x126862  5      OPC=1302  
  incw %dx                    #  58    0x126867  3      OPC=843   
  andl $0xffffffff, %ecx      #  59    0x12686a  6      OPC=131   
  movb %sil, (%r15,%rcx,1)    #  60    0x126870  4      OPC=1141  
  addl $0x1, %ecx             #  61    0x126874  3      OPC=65    
  negl %esi                   #  62    0x126877  2      OPC=1339  
  jne .L_126860               #  63    0x126879  6      OPC=963   
  nop                         #  64    0x12687f  1      OPC=1343  
  popq %r11                   #  65    0x126880  2      OPC=1694  
  andl $0xe0, %r11d           #  66    0x126882  4      OPC=132   
  addq %r15, %r11             #  67    0x126886  3      OPC=72    
  jmpq %r11                   #  68    0x126889  3      OPC=928   
                                                                  
.size strcpy, .-strcpy
