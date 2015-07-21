  .text
  .globl key_count_cmp
  .type key_count_cmp, @function

#! file-offset 0x635a0
#! rip-offset  0x235a0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode    
.key_count_cmp:                #        0x235a0  0      OPC=0     
  movl %edi, %edi              #  1     0x235a0  2      OPC=1157  
  movl %esi, %esi              #  2     0x235a2  2      OPC=1157  
  movl %edi, %edi              #  3     0x235a4  2      OPC=1157  
  movl 0x8(%r15,%rdi,1), %edx  #  4     0x235a6  5      OPC=1156  
  movl %esi, %esi              #  5     0x235ab  2      OPC=1157  
  movl 0x8(%r15,%rsi,1), %eax  #  6     0x235ad  5      OPC=1156  
  cmpl %eax, %edx              #  7     0x235b2  2      OPC=472   
  je .L_235e0                  #  8     0x235b4  6      OPC=893   
  nop                          #  9     0x235ba  1      OPC=1343  
  nop                          #  10    0x235bb  1      OPC=1343  
  subl %edx, %eax              #  11    0x235bc  2      OPC=2386  
  popq %r11                    #  12    0x235be  2      OPC=1694  
  nop                          #  13    0x235c0  1      OPC=1343  
  nop                          #  14    0x235c1  1      OPC=1343  
  nop                          #  15    0x235c2  1      OPC=1343  
  nop                          #  16    0x235c3  1      OPC=1343  
  nop                          #  17    0x235c4  1      OPC=1343  
  nop                          #  18    0x235c5  1      OPC=1343  
  andl $0xffffffe0, %r11d      #  19    0x235c6  7      OPC=131   
  nop                          #  20    0x235cd  1      OPC=1343  
  nop                          #  21    0x235ce  1      OPC=1343  
  nop                          #  22    0x235cf  1      OPC=1343  
  nop                          #  23    0x235d0  1      OPC=1343  
  addq %r15, %r11              #  24    0x235d1  3      OPC=72    
  jmpq %r11                    #  25    0x235d4  3      OPC=928   
  nop                          #  26    0x235d7  1      OPC=1343  
  nop                          #  27    0x235d8  1      OPC=1343  
  nop                          #  28    0x235d9  1      OPC=1343  
  nop                          #  29    0x235da  1      OPC=1343  
  nop                          #  30    0x235db  1      OPC=1343  
  nop                          #  31    0x235dc  1      OPC=1343  
  nop                          #  32    0x235dd  1      OPC=1343  
  nop                          #  33    0x235de  1      OPC=1343  
  nop                          #  34    0x235df  1      OPC=1343  
  nop                          #  35    0x235e0  1      OPC=1343  
  nop                          #  36    0x235e1  1      OPC=1343  
  nop                          #  37    0x235e2  1      OPC=1343  
  nop                          #  38    0x235e3  1      OPC=1343  
  nop                          #  39    0x235e4  1      OPC=1343  
  nop                          #  40    0x235e5  1      OPC=1343  
  nop                          #  41    0x235e6  1      OPC=1343  
  nop                          #  42    0x235e7  1      OPC=1343  
  nop                          #  43    0x235e8  1      OPC=1343  
  nop                          #  44    0x235e9  1      OPC=1343  
  nop                          #  45    0x235ea  1      OPC=1343  
  nop                          #  46    0x235eb  1      OPC=1343  
  nop                          #  47    0x235ec  1      OPC=1343  
.L_235e0:                      #        0x235ed  0      OPC=0     
  movl $0xffffffff, %eax       #  48    0x235ed  6      OPC=1155  
  movl %esi, %esi              #  49    0x235f3  2      OPC=1157  
  movq (%r15,%rsi,1), %rdx     #  50    0x235f5  4      OPC=1161  
  movl %edi, %edi              #  51    0x235f9  2      OPC=1157  
  cmpq %rdx, (%r15,%rdi,1)     #  52    0x235fb  4      OPC=460   
  jb .L_23600                  #  53    0x235ff  6      OPC=875   
  nop                          #  54    0x23605  1      OPC=1343  
  nop                          #  55    0x23606  1      OPC=1343  
  seta %al                     #  56    0x23607  3      OPC=2163  
  movzbl %al, %eax             #  57    0x2360a  3      OPC=1304  
  nop                          #  58    0x2360d  1      OPC=1343  
  nop                          #  59    0x2360e  1      OPC=1343  
  nop                          #  60    0x2360f  1      OPC=1343  
  nop                          #  61    0x23610  1      OPC=1343  
  nop                          #  62    0x23611  1      OPC=1343  
  nop                          #  63    0x23612  1      OPC=1343  
  nop                          #  64    0x23613  1      OPC=1343  
.L_23600:                      #        0x23614  0      OPC=0     
  popq %r11                    #  65    0x23614  2      OPC=1694  
  andl $0xffffffe0, %r11d      #  66    0x23616  7      OPC=131   
  nop                          #  67    0x2361d  1      OPC=1343  
  nop                          #  68    0x2361e  1      OPC=1343  
  nop                          #  69    0x2361f  1      OPC=1343  
  nop                          #  70    0x23620  1      OPC=1343  
  addq %r15, %r11              #  71    0x23621  3      OPC=72    
  jmpq %r11                    #  72    0x23624  3      OPC=928   
  nop                          #  73    0x23627  1      OPC=1343  
  nop                          #  74    0x23628  1      OPC=1343  
  nop                          #  75    0x23629  1      OPC=1343  
  nop                          #  76    0x2362a  1      OPC=1343  
  nop                          #  77    0x2362b  1      OPC=1343  
  nop                          #  78    0x2362c  1      OPC=1343  
  nop                          #  79    0x2362d  1      OPC=1343  
  nop                          #  80    0x2362e  1      OPC=1343  
  nop                          #  81    0x2362f  1      OPC=1343  
  nop                          #  82    0x23630  1      OPC=1343  
  nop                          #  83    0x23631  1      OPC=1343  
  nop                          #  84    0x23632  1      OPC=1343  
  nop                          #  85    0x23633  1      OPC=1343  
  nop                          #  86    0x23634  1      OPC=1343  
  nop                          #  87    0x23635  1      OPC=1343  
  nop                          #  88    0x23636  1      OPC=1343  
  nop                          #  89    0x23637  1      OPC=1343  
  nop                          #  90    0x23638  1      OPC=1343  
  nop                          #  91    0x23639  1      OPC=1343  
  nop                          #  92    0x2363a  1      OPC=1343  
                                                                  
.size key_count_cmp, .-key_count_cmp

