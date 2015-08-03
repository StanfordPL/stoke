  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.strcpy:                          #        0x1267e0  0      OPC=0     
  movq %rdi, %rax                 #  1     0x1267e0  3      OPC=1162  
  movq %rax, %rcx                 #  2     0x1267e3  3      OPC=1162  
  movq %rax, %rdx                 #  3     0x1267e6  3      OPC=1163  
  orq %rsi, %rcx                  #  4     0x1267e9  3      OPC=1385  
  nop                             #  5     0x1267ec  1      OPC=1343  
  nop                             #  6     0x1267ed  1      OPC=1343  
  andl $0x7, %ecx                 #  7     0x1267ee  3      OPC=132   
  jne .L_68                       #  8     0x1267f1  6      OPC=963   
  leal (%rsi), %r11d              #  9     0x1267f7  3      OPC=1066  
  xorq (%r15,%r11,1), %rcx        #  10    0x1267fa  4      OPC=3762  
  nop                             #  11    0x1267fe  1      OPC=1343  
  nop                             #  12    0x1267ff  1      OPC=1343  
  nop                             #  13    0x126800  1      OPC=1343  
  nop                             #  14    0x126801  1      OPC=1343  
  nopl %eax                       #  15    0x126802  3      OPC=1347  
  nop                             #  16    0x126805  1      OPC=1343  
  nop                             #  17    0x126806  1      OPC=1343  
  movq $0x8080808080808080, %r10  #  18    0x126807  10     OPC=1160  
  movq $0xfefefefefefefeff, %r11  #  19    0x126811  10     OPC=1160  
  nop                             #  20    0x12681b  1      OPC=1343  
  nop                             #  21    0x12681c  1      OPC=1343  
  nop                             #  22    0x12681d  1      OPC=1343  
  nop                             #  23    0x12681e  1      OPC=1343  
  nop                             #  24    0x12681f  1      OPC=1343  
  nop                             #  25    0x126820  1      OPC=1343  
  movq %rcx, %rdi                 #  26    0x126821  3      OPC=1163  
  nop                             #  27    0x126824  1      OPC=1343  
  notq %rdi                       #  28    0x126825  3      OPC=1354  
  leaq (%rcx,%r11,1), %rdx        #  29    0x126828  4      OPC=1069  
  andq %rdi, %rdx                 #  30    0x12682c  3      OPC=139   
  testq %r10, %rdx                #  31    0x12682f  3      OPC=2438  
  nop                             #  32    0x126832  1      OPC=1343  
  nop                             #  33    0x126833  1      OPC=1343  
  nop                             #  34    0x126834  1      OPC=1343  
  movq %rax, %rdx                 #  35    0x126835  3      OPC=1162  
  nop                             #  36    0x126838  1      OPC=1343  
  nop                             #  37    0x126839  1      OPC=1343  
  jne .L_68                       #  38    0x12683a  6      OPC=963   
.L_40:                            #        0x126840  0      OPC=0     
  nop                             #  39    0x126840  1      OPC=1343  
  nop                             #  40    0x126841  1      OPC=1343  
  addq $0x8, %rsi                 #  41    0x126842  4      OPC=70    
  addq $0x8, %rdx                 #  42    0x126846  4      OPC=70    
  leal -0x8(%rdx), %r8d           #  43    0x12684a  4      OPC=1066  
  movq %rcx, (%r15,%r8,1)         #  44    0x12684e  4      OPC=1138  
  leal (%rsi), %r8d               #  45    0x126852  3      OPC=1066  
  movq (%r15,%r8,1), %rcx         #  46    0x126855  4      OPC=1161  
  leaq (%rcx,%r11,1), %r8         #  47    0x126859  4      OPC=1069  
  movq %rcx, %r9                  #  48    0x12685d  3      OPC=1163  
  notq %r9                        #  49    0x126860  3      OPC=1354  
  andq %r9, %r8                   #  50    0x126863  3      OPC=140   
  testq %r10, %r8                 #  51    0x126866  3      OPC=2438  
  je .L_40                        #  52    0x126869  6      OPC=893   
  nop                             #  53    0x12686f  1      OPC=1343  
  nop                             #  54    0x126870  1      OPC=1343  
  nop                             #  55    0x126871  1      OPC=1343  
  nop                             #  56    0x126872  1      OPC=1343  
  nop                             #  57    0x126873  1      OPC=1343  
  nop                             #  58    0x126874  1      OPC=1343  
  nop                             #  59    0x126875  1      OPC=1343  
  nop                             #  60    0x126876  1      OPC=1343  
  nop                             #  61    0x126877  1      OPC=1343  
  nop                             #  62    0x126878  1      OPC=1343  
  nop                             #  63    0x126879  1      OPC=1343  
  nop                             #  64    0x12687a  1      OPC=1343  
  nop                             #  65    0x12687b  1      OPC=1343  
  nop                             #  66    0x12687c  1      OPC=1343  
  nop                             #  67    0x12687d  1      OPC=1343  
  nop                             #  68    0x12687e  1      OPC=1343  
  nop                             #  69    0x12687f  1      OPC=1343  
.L_68:                            #        0x126880  0      OPC=0     
  addq $0x1, %rdx                 #  70    0x126880  4      OPC=70    
  addq $0x1, %rsi                 #  71    0x126884  4      OPC=70    
  leal -0x1(%rsi), %ecx           #  72    0x126888  3      OPC=1066  
  movzwq (%r15,%rcx,1), %rcx      #  73    0x12688b  5      OPC=1306  
  leal -0x1(%rdx), %r8d           #  74    0x126890  4      OPC=1066  
  movb %cl, (%r15,%r8,1)          #  75    0x126894  4      OPC=1141  
  negb %cl                        #  76    0x126898  2      OPC=1341  
  jne .L_68                       #  77    0x12689a  6      OPC=963   
  retq
                                                                      
.size strcpy, .-strcpy
