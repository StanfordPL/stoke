  .text
  .globl EqualsC_Execute
  .type EqualsC_Execute, @function

#! file-offset 0x66740
#! rip-offset  0x26740
#! capacity    160 bytes

# Text                           #  Line  RIP      Bytes  Opcode    
.EqualsC_Execute:                #        0x26740  0      OPC=0     
  movl %edi, %edi                #  1     0x26740  2      OPC=1157  
  movl %edi, %edi                #  2     0x26742  2      OPC=1157  
  movzbl 0xc(%r15,%rdi,1), %eax  #  3     0x26744  6      OPC=1302  
  testb %al, %al                 #  4     0x2674a  2      OPC=2440  
  jne .L_26780                   #  5     0x2674c  6      OPC=963   
  nop                            #  6     0x26752  1      OPC=1343  
  nop                            #  7     0x26753  1      OPC=1343  
  movl %edi, %edi                #  8     0x26754  2      OPC=1157  
  movl 0x18(%r15,%rdi,1), %eax   #  9     0x26756  5      OPC=1156  
  movl %edi, %edi                #  10    0x2675b  2      OPC=1157  
  movl 0x1c(%r15,%rdi,1), %edx   #  11    0x2675d  5      OPC=1156  
  nop                            #  12    0x26762  1      OPC=1343  
  nop                            #  13    0x26763  1      OPC=1343  
  nop                            #  14    0x26764  1      OPC=1343  
  nop                            #  15    0x26765  1      OPC=1343  
  movl %edx, %edx                #  16    0x26766  2      OPC=1157  
  movl (%r15,%rdx,1), %edx       #  17    0x26768  4      OPC=1156  
  movl %eax, %eax                #  18    0x2676c  2      OPC=1157  
  movl %edx, (%r15,%rax,1)       #  19    0x2676e  4      OPC=1136  
  popq %r11                      #  20    0x26772  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  21    0x26774  7      OPC=131   
  nop                            #  22    0x2677b  1      OPC=1343  
  nop                            #  23    0x2677c  1      OPC=1343  
  nop                            #  24    0x2677d  1      OPC=1343  
  nop                            #  25    0x2677e  1      OPC=1343  
  addq %r15, %r11                #  26    0x2677f  3      OPC=72    
  jmpq %r11                      #  27    0x26782  3      OPC=928   
  nop                            #  28    0x26785  1      OPC=1343  
  nop                            #  29    0x26786  1      OPC=1343  
  nop                            #  30    0x26787  1      OPC=1343  
  nop                            #  31    0x26788  1      OPC=1343  
  nop                            #  32    0x26789  1      OPC=1343  
  nop                            #  33    0x2678a  1      OPC=1343  
  nop                            #  34    0x2678b  1      OPC=1343  
  nop                            #  35    0x2678c  1      OPC=1343  
.L_26780:                        #        0x2678d  0      OPC=0     
  cmpb $0x1, %al                 #  36    0x2678d  2      OPC=449   
  je .L_267a0                    #  37    0x2678f  6      OPC=893   
  nop                            #  38    0x26795  1      OPC=1343  
  nop                            #  39    0x26796  1      OPC=1343  
  popq %r11                      #  40    0x26797  2      OPC=1694  
  andl $0xffffffe0, %r11d        #  41    0x26799  7      OPC=131   
  nop                            #  42    0x267a0  1      OPC=1343  
  nop                            #  43    0x267a1  1      OPC=1343  
  nop                            #  44    0x267a2  1      OPC=1343  
  nop                            #  45    0x267a3  1      OPC=1343  
  addq %r15, %r11                #  46    0x267a4  3      OPC=72    
  jmpq %r11                      #  47    0x267a7  3      OPC=928   
  nop                            #  48    0x267aa  1      OPC=1343  
  nop                            #  49    0x267ab  1      OPC=1343  
  nop                            #  50    0x267ac  1      OPC=1343  
  nop                            #  51    0x267ad  1      OPC=1343  
  nop                            #  52    0x267ae  1      OPC=1343  
  nop                            #  53    0x267af  1      OPC=1343  
  nop                            #  54    0x267b0  1      OPC=1343  
  nop                            #  55    0x267b1  1      OPC=1343  
  nop                            #  56    0x267b2  1      OPC=1343  
  nop                            #  57    0x267b3  1      OPC=1343  
  nop                            #  58    0x267b4  1      OPC=1343  
  nop                            #  59    0x267b5  1      OPC=1343  
  nop                            #  60    0x267b6  1      OPC=1343  
  nop                            #  61    0x267b7  1      OPC=1343  
  nop                            #  62    0x267b8  1      OPC=1343  
  nop                            #  63    0x267b9  1      OPC=1343  
.L_267a0:                        #        0x267ba  0      OPC=0     
  movl %edi, %edi                #  64    0x267ba  2      OPC=1157  
  movl 0x1c(%r15,%rdi,1), %eax   #  65    0x267bc  5      OPC=1156  
  movl %edi, %edi                #  66    0x267c1  2      OPC=1157  
  movl 0x18(%r15,%rdi,1), %edx   #  67    0x267c3  5      OPC=1156  
  movl %edx, %edx                #  68    0x267c8  2      OPC=1157  
  movl (%r15,%rdx,1), %edx       #  69    0x267ca  4      OPC=1156  
  movl %eax, %eax                #  70    0x267ce  2      OPC=1157  
  movl %edx, (%r15,%rax,1)       #  71    0x267d0  4      OPC=1136  
  popq %r11                      #  72    0x267d4  2      OPC=1694  
  nop                            #  73    0x267d6  1      OPC=1343  
  nop                            #  74    0x267d7  1      OPC=1343  
  nop                            #  75    0x267d8  1      OPC=1343  
  nop                            #  76    0x267d9  1      OPC=1343  
  andl $0xffffffe0, %r11d        #  77    0x267da  7      OPC=131   
  nop                            #  78    0x267e1  1      OPC=1343  
  nop                            #  79    0x267e2  1      OPC=1343  
  nop                            #  80    0x267e3  1      OPC=1343  
  nop                            #  81    0x267e4  1      OPC=1343  
  addq %r15, %r11                #  82    0x267e5  3      OPC=72    
  jmpq %r11                      #  83    0x267e8  3      OPC=928   
  nop                            #  84    0x267eb  1      OPC=1343  
  nop                            #  85    0x267ec  1      OPC=1343  
  nop                            #  86    0x267ed  1      OPC=1343  
  nop                            #  87    0x267ee  1      OPC=1343  
  nop                            #  88    0x267ef  1      OPC=1343  
  nop                            #  89    0x267f0  1      OPC=1343  
  nop                            #  90    0x267f1  1      OPC=1343  
  nop                            #  91    0x267f2  1      OPC=1343  
  nop                            #  92    0x267f3  1      OPC=1343  
  nop                            #  93    0x267f4  1      OPC=1343  
  nop                            #  94    0x267f5  1      OPC=1343  
  nop                            #  95    0x267f6  1      OPC=1343  
  nop                            #  96    0x267f7  1      OPC=1343  
  nop                            #  97    0x267f8  1      OPC=1343  
  nop                            #  98    0x267f9  1      OPC=1343  
  nop                            #  99    0x267fa  1      OPC=1343  
  nop                            #  100   0x267fb  1      OPC=1343  
  nop                            #  101   0x267fc  1      OPC=1343  
  nop                            #  102   0x267fd  1      OPC=1343  
  nop                            #  103   0x267fe  1      OPC=1343  
  nop                            #  104   0x267ff  1      OPC=1343  
  nop                            #  105   0x26800  1      OPC=1343  
                                                                    
.size EqualsC_Execute, .-EqualsC_Execute

