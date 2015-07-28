  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.strcpy:                          #        0x1267e0  0      OPC=0     
  movq %rdi, %rcx                 #  1     0x1267e0  3      OPC=1162  
  orq %rsi, %rcx                  #  2     0x1267e3  3      OPC=1386  
  movq %rdi, %rax                 #  3     0x1267e6  3      OPC=1162  
  andl $0x5, %ecx                 #  4     0x1267e9  3      OPC=132   
  nop                             #  5     0x1267ec  1      OPC=1343  
  movq %rax, %rdx                 #  6     0x1267ed  3      OPC=1162  
  nop                             #  7     0x1267f0  1      OPC=1343  
  jne .L_68                       #  8     0x1267f1  6      OPC=963   
  nop                             #  9     0x1267f7  1      OPC=1343  
  nop                             #  10    0x1267f8  1      OPC=1343  
  nop                             #  11    0x1267f9  1      OPC=1343  
  nop                             #  12    0x1267fa  1      OPC=1343  
  nop                             #  13    0x1267fb  1      OPC=1343  
  nop                             #  14    0x1267fc  1      OPC=1343  
  nop                             #  15    0x1267fd  1      OPC=1343  
  nop                             #  16    0x1267fe  1      OPC=1343  
  nop                             #  17    0x1267ff  1      OPC=1343  
  nop                             #  18    0x126800  1      OPC=1343  
  leal (%rsi), %r11d              #  19    0x126801  3      OPC=1066  
  orq (%r15,%r11,1), %rcx         #  20    0x126804  4      OPC=1384  
  movq $0x8080808080808080, %r10  #  21    0x126808  10     OPC=1160  
  movq $0xfefefefefefefeff, %r11  #  22    0x126812  10     OPC=1160  
  movq %rcx, %rdi                 #  23    0x12681c  3      OPC=1163  
  nop                             #  24    0x12681f  1      OPC=1343  
  leaq (%rcx,%r11,1), %rdx        #  25    0x126820  4      OPC=1069  
  addq %r10, %rdi                 #  26    0x126824  3      OPC=73    
  nop                             #  27    0x126827  1      OPC=1343  
  nopl %eax                       #  28    0x126828  3      OPC=1347  
  andq %rdi, %rdx                 #  29    0x12682b  3      OPC=140   
  testq %r10, %rdx                #  30    0x12682e  3      OPC=2438  
  movq %rax, %rdx                 #  31    0x126831  3      OPC=1162  
  nop                             #  32    0x126834  1      OPC=1343  
  nop                             #  33    0x126835  1      OPC=1343  
  nop                             #  34    0x126836  1      OPC=1343  
  nop                             #  35    0x126837  1      OPC=1343  
  nop                             #  36    0x126838  1      OPC=1343  
  nop                             #  37    0x126839  1      OPC=1343  
  jne .L_68                       #  38    0x12683a  6      OPC=963   
.L_40:                            #        0x126840  0      OPC=0     
  addq $0x8, %rdx                 #  39    0x126840  4      OPC=70    
  nop                             #  40    0x126844  1      OPC=1343  
  addq $0x8, %rsi                 #  41    0x126845  4      OPC=70    
  leal -0x8(%rdx), %r8d           #  42    0x126849  4      OPC=1066  
  movq %rcx, (%r15,%r8,1)         #  43    0x12684d  4      OPC=1138  
  nop                             #  44    0x126851  1      OPC=1343  
  leal (%rsi), %r8d               #  45    0x126852  3      OPC=1066  
  movq (%r15,%r8,1), %rcx         #  46    0x126855  4      OPC=1161  
  leaq (%rcx,%r11,1), %r8         #  47    0x126859  4      OPC=1069  
  movq %rcx, %r9                  #  48    0x12685d  3      OPC=1162  
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
  movzbl (%r15,%rcx,1), %ecx      #  73    0x12688b  5      OPC=1302  
  leal -0x1(%rdx), %r8d           #  74    0x126890  4      OPC=1066  
  movb %cl, (%r15,%r8,1)          #  75    0x126894  4      OPC=1141  
  testb %cl, %cl                  #  76    0x126898  2      OPC=2440  
  jne .L_68                       #  77    0x12689a  6      OPC=963   
  popq %r11                       #  78    0x1268a0  2      OPC=1694  
  andl $0xe0, %r11d               #  79    0x1268a2  4      OPC=132   
  addq %r15, %r11                 #  80    0x1268a6  3      OPC=72    
  jmpq %r11                       #  81    0x1268a9  3      OPC=928   
                                                                      
.size strcpy, .-strcpy
