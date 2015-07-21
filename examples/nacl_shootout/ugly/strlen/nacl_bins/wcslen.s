  .text
  .globl wcslen
  .type wcslen, @function

#! file-offset 0x182840
#! rip-offset  0x142840
#! capacity    96 bytes

# Text                      #  Line  RIP       Bytes  Opcode    
.wcslen:                    #        0x142840  0      OPC=0     
  movl %edi, %edi           #  1     0x142840  2      OPC=1157  
  xorl %eax, %eax           #  2     0x142842  2      OPC=3758  
  movl %edi, %edi           #  3     0x142844  2      OPC=1157  
  movl (%r15,%rdi,1), %ecx  #  4     0x142846  4      OPC=1156  
  movq %rdi, %rdx           #  5     0x14284a  3      OPC=1162  
  testl %ecx, %ecx          #  6     0x14284d  2      OPC=2436  
  je .L_142880              #  7     0x14284f  6      OPC=893   
  nop                       #  8     0x142855  1      OPC=1343  
  nop                       #  9     0x142856  1      OPC=1343  
  nop                       #  10    0x142857  1      OPC=1343  
  nop                       #  11    0x142858  1      OPC=1343  
  nop                       #  12    0x142859  1      OPC=1343  
  nop                       #  13    0x14285a  1      OPC=1343  
  nop                       #  14    0x14285b  1      OPC=1343  
  nop                       #  15    0x14285c  1      OPC=1343  
  nop                       #  16    0x14285d  1      OPC=1343  
  nop                       #  17    0x14285e  1      OPC=1343  
  nop                       #  18    0x14285f  1      OPC=1343  
  nop                       #  19    0x142860  1      OPC=1343  
  nop                       #  20    0x142861  1      OPC=1343  
  nop                       #  21    0x142862  1      OPC=1343  
  nop                       #  22    0x142863  1      OPC=1343  
  nop                       #  23    0x142864  1      OPC=1343  
  nop                       #  24    0x142865  1      OPC=1343  
.L_142860:                  #        0x142866  0      OPC=0     
  addl $0x4, %edx           #  25    0x142866  3      OPC=65    
  movl %edx, %edx           #  26    0x142869  2      OPC=1157  
  movl (%r15,%rdx,1), %eax  #  27    0x14286b  4      OPC=1156  
  testl %eax, %eax          #  28    0x14286f  2      OPC=2436  
  jne .L_142860             #  29    0x142871  6      OPC=963   
  nop                       #  30    0x142877  1      OPC=1343  
  nop                       #  31    0x142878  1      OPC=1343  
  movl %edx, %eax           #  32    0x142879  2      OPC=1157  
  subl %edi, %eax           #  33    0x14287b  2      OPC=2386  
  sarl $0x2, %eax           #  34    0x14287d  3      OPC=2096  
  nop                       #  35    0x142880  1      OPC=1343  
  nop                       #  36    0x142881  1      OPC=1343  
  nop                       #  37    0x142882  1      OPC=1343  
  nop                       #  38    0x142883  1      OPC=1343  
  nop                       #  39    0x142884  1      OPC=1343  
  nop                       #  40    0x142885  1      OPC=1343  
  nop                       #  41    0x142886  1      OPC=1343  
  nop                       #  42    0x142887  1      OPC=1343  
  nop                       #  43    0x142888  1      OPC=1343  
  nop                       #  44    0x142889  1      OPC=1343  
  nop                       #  45    0x14288a  1      OPC=1343  
  nop                       #  46    0x14288b  1      OPC=1343  
.L_142880:                  #        0x14288c  0      OPC=0     
  popq %r11                 #  47    0x14288c  2      OPC=1694  
  andl $0xffffffe0, %r11d   #  48    0x14288e  7      OPC=131   
  nop                       #  49    0x142895  1      OPC=1343  
  nop                       #  50    0x142896  1      OPC=1343  
  nop                       #  51    0x142897  1      OPC=1343  
  nop                       #  52    0x142898  1      OPC=1343  
  addq %r15, %r11           #  53    0x142899  3      OPC=72    
  jmpq %r11                 #  54    0x14289c  3      OPC=928   
  nop                       #  55    0x14289f  1      OPC=1343  
  nop                       #  56    0x1428a0  1      OPC=1343  
  nop                       #  57    0x1428a1  1      OPC=1343  
  nop                       #  58    0x1428a2  1      OPC=1343  
  nop                       #  59    0x1428a3  1      OPC=1343  
  nop                       #  60    0x1428a4  1      OPC=1343  
  nop                       #  61    0x1428a5  1      OPC=1343  
  nop                       #  62    0x1428a6  1      OPC=1343  
  nop                       #  63    0x1428a7  1      OPC=1343  
  nop                       #  64    0x1428a8  1      OPC=1343  
  nop                       #  65    0x1428a9  1      OPC=1343  
  nop                       #  66    0x1428aa  1      OPC=1343  
  nop                       #  67    0x1428ab  1      OPC=1343  
  nop                       #  68    0x1428ac  1      OPC=1343  
  nop                       #  69    0x1428ad  1      OPC=1343  
  nop                       #  70    0x1428ae  1      OPC=1343  
  nop                       #  71    0x1428af  1      OPC=1343  
  nop                       #  72    0x1428b0  1      OPC=1343  
  nop                       #  73    0x1428b1  1      OPC=1343  
  nop                       #  74    0x1428b2  1      OPC=1343  
                                                                
.size wcslen, .-wcslen

