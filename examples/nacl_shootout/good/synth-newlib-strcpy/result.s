  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode    
.strcpy:                          #        0x1267e0  0      OPC=0     
  nop                             #  1     0x1267e0  1      OPC=1343  
  movq %rdi, %rcx                 #  2     0x1267e1  3      OPC=1163  
  movq %rcx, %rax                 #  3     0x1267e4  3      OPC=1163  
  movq %rax, %rdx                 #  4     0x1267e7  3      OPC=1163  
  orb %sil, %cl                   #  5     0x1267ea  3      OPC=1390  
  andl $0x3, %ecx                 #  6     0x1267ed  3      OPC=132   
  jne .L_68                       #  7     0x1267f0  6      OPC=963   
  leal (%rsi), %r11d              #  8     0x1267f6  3      OPC=1066  
  xorq (%r15,%r11,1), %rcx        #  9     0x1267f9  4      OPC=3762  
  nop                             #  10    0x1267fd  1      OPC=1343  
  nop                             #  11    0x1267fe  1      OPC=1343  
  nop                             #  12    0x1267ff  1      OPC=1343  
  orq %rcx, %rdi                  #  13    0x126800  3      OPC=1385  
  movq $0xfefefefefefefeff, %r11  #  14    0x126803  10     OPC=1160  
  notq %rdi                       #  15    0x12680d  3      OPC=1354  
  nop                             #  16    0x126810  1      OPC=1343  
  nop                             #  17    0x126811  1      OPC=1343  
  movq $0x8080808080808080, %r10  #  18    0x126812  10     OPC=1160  
  leaq (%rcx,%r11,1), %rdx        #  19    0x12681c  4      OPC=1069  
  nopl %eax                       #  20    0x126820  3      OPC=1347  
  nop                             #  21    0x126823  1      OPC=1343  
  nop                             #  22    0x126824  1      OPC=1343  
  andq %rdi, %rdx                 #  23    0x126825  3      OPC=140   
  nop                             #  24    0x126828  1      OPC=1343  
  testq %r10, %rdx                #  25    0x126829  3      OPC=2438  
  movq %rax, %rdx                 #  26    0x12682c  3      OPC=1162  
  jne .L_68                       #  27    0x12682f  6      OPC=963   
  nopl %eax                       #  28    0x126835  3      OPC=1347  
  nopl %eax                       #  29    0x126838  3      OPC=1347  
  nopl %eax                       #  30    0x12683b  3      OPC=1347  
  nop                             #  31    0x12683e  1      OPC=1343  
  nop                             #  32    0x12683f  1      OPC=1343  
.L_40:                            #        0x126840  0      OPC=0     
  addq $0x8, %rdx                 #  33    0x126840  4      OPC=70    
  addq $0x8, %rsi                 #  34    0x126844  4      OPC=70    
  leal -0x8(%rdx), %r8d           #  35    0x126848  4      OPC=1066  
  movnti %rcx, (%r15,%r8,1)       #  36    0x12684c  5      OPC=1235  
  leal (%rsi), %r8d               #  37    0x126851  3      OPC=1066  
  movq (%r15,%r8,1), %rcx         #  38    0x126854  4      OPC=1161  
  leaq (%rcx,%r11,1), %r8         #  39    0x126858  4      OPC=1069  
  nop                             #  40    0x12685c  1      OPC=1343  
  movq %rcx, %r9                  #  41    0x12685d  3      OPC=1163  
  notq %r9                        #  42    0x126860  3      OPC=1354  
  andq %r9, %r8                   #  43    0x126863  3      OPC=139   
  testq %r10, %r8                 #  44    0x126866  3      OPC=2438  
  je .L_40                        #  45    0x126869  6      OPC=893   
  nop                             #  46    0x12686f  1      OPC=1343  
  nopl %eax                       #  47    0x126870  3      OPC=1347  
  nopl %eax                       #  48    0x126873  3      OPC=1347  
  nopl %eax                       #  49    0x126876  3      OPC=1347  
  nopl %eax                       #  50    0x126879  3      OPC=1347  
  nop                             #  51    0x12687c  1      OPC=1343  
  nopl %eax                       #  52    0x12687d  3      OPC=1347  
.L_68:                            #        0x126880  0      OPC=0     
  addq $0x1, %rdx                 #  53    0x126880  4      OPC=70    
  addq $0x1, %rsi                 #  54    0x126884  4      OPC=70    
  leal -0x1(%rsi), %ecx           #  55    0x126888  3      OPC=1066  
  movsbl (%r15,%rcx,1), %ecx      #  56    0x12688b  5      OPC=1280  
  leal -0x1(%rdx), %r8d           #  57    0x126890  4      OPC=1066  
  movb %cl, (%r15,%r8,1)          #  58    0x126894  4      OPC=1141  
  testb %cl, %cl                  #  59    0x126898  2      OPC=2440  
  jne .L_68                       #  60    0x12689a  6      OPC=963   
  popq %r11                       #  67    0x1268ac  2      OPC=1694  
  andl $0xe0, %r11d               #  68    0x1268ae  4      OPC=132   
  addq %r15, %r11                 #  69    0x1268b2  3      OPC=72    
  jmpq %r11                       #  70    0x1268b5  3      OPC=928   
                                                                      
.size strcpy, .-strcpy
