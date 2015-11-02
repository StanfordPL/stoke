  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strcpy:                        #        0x1267e0  0      OPC=<label>         
  nop                           #  1     0x1267e0  1      OPC=nop             
  nop                           #  2     0x1267e1  1      OPC=nop             
  nop                           #  3     0x1267e2  1      OPC=nop             
  nop                           #  4     0x1267e3  1      OPC=nop             
  movq %rdi, %rax               #  5     0x1267e4  3      OPC=movq_r64_r64_1  
  nop                           #  6     0x1267e7  1      OPC=nop             
  nop                           #  7     0x1267e8  1      OPC=nop             
  nop                           #  8     0x1267e9  1      OPC=nop             
  nop                           #  9     0x1267ea  1      OPC=nop             
  nop                           #  10    0x1267eb  1      OPC=nop             
  xorq %rax, %rdi               #  11    0x1267ec  3      OPC=xorq_r64_r64    
  nop                           #  12    0x1267ef  1      OPC=nop             
  nop                           #  13    0x1267f0  1      OPC=nop             
  nop                           #  14    0x1267f1  1      OPC=nop             
  nop                           #  15    0x1267f2  1      OPC=nop             
  nop                           #  16    0x1267f3  1      OPC=nop             
  nop                           #  17    0x1267f4  1      OPC=nop             
  nop                           #  18    0x1267f5  1      OPC=nop             
  nop                           #  19    0x1267f6  1      OPC=nop             
  nop                           #  20    0x1267f7  1      OPC=nop             
  nop                           #  21    0x1267f8  1      OPC=nop             
  nop                           #  22    0x1267f9  1      OPC=nop             
  nop                           #  23    0x1267fa  1      OPC=nop             
  nop                           #  24    0x1267fb  1      OPC=nop             
  nop                           #  25    0x1267fc  1      OPC=nop             
  movq %rsi, %rdx               #  26    0x1267fd  3      OPC=movq_r64_r64_1  
  nop                           #  27    0x126800  1      OPC=nop             
  nop                           #  28    0x126801  1      OPC=nop             
  nop                           #  29    0x126802  1      OPC=nop             
  nop                           #  30    0x126803  1      OPC=nop             
  nop                           #  31    0x126804  1      OPC=nop             
  nop                           #  32    0x126805  1      OPC=nop             
  nop                           #  33    0x126806  1      OPC=nop             
  movl %eax, %ecx               #  34    0x126807  2      OPC=movl_r32_r32    
  nop                           #  35    0x126809  1      OPC=nop             
  nop                           #  36    0x12680a  1      OPC=nop             
  nop                           #  37    0x12680b  1      OPC=nop             
  jne .L_126860                 #  38    0x12680c  6      OPC=jne_label_1     
  movl %edx, %esi               #  39    0x126812  2      OPC=movl_r32_r32_1  
  movq (%r15,%rsi,1), %r8       #  40    0x126814  4      OPC=movq_r64_m64    
  nop                           #  41    0x126818  1      OPC=nop             
  nop                           #  42    0x126819  1      OPC=nop             
  jne .L_126860                 #  43    0x12681a  6      OPC=jne_label_1     
.L_126820:                      #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx               #  44    0x126820  6      OPC=addl_r32_imm32  
  movl %r8d, -0x4(%r15,%rcx,1)  #  45    0x126826  5      OPC=movl_m32_r32    
  addl $0x4, %edx               #  46    0x12682b  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d      #  47    0x12682e  4      OPC=movl_r32_m32    
  movl %r8d, %r9d               #  48    0x126832  3      OPC=movl_r32_r32    
  leaq -0x1010101(%r8), %rsi    #  49    0x126835  7      OPC=leaq_r64_m32    
  nop                           #  50    0x12683c  1      OPC=nop             
  nop                           #  51    0x12683d  1      OPC=nop             
  nop                           #  52    0x12683e  1      OPC=nop             
  nop                           #  53    0x12683f  1      OPC=nop             
  nop                           #  54    0x126840  1      OPC=nop             
  nop                           #  55    0x126841  1      OPC=nop             
  nop                           #  56    0x126842  1      OPC=nop             
  nop                           #  57    0x126843  1      OPC=nop             
  nop                           #  58    0x126844  1      OPC=nop             
  nop                           #  59    0x126845  1      OPC=nop             
  nop                           #  60    0x126846  1      OPC=nop             
  notq %r9                      #  61    0x126847  3      OPC=notq_r64        
  andq $0x80808080, %r9         #  62    0x12684a  7      OPC=andq_r64_imm32  
  andl %esi, %r9d               #  63    0x126851  3      OPC=andl_r32_r32    
  je .L_126820                  #  64    0x126854  6      OPC=je_label_1      
  nop                           #  65    0x12685a  1      OPC=nop             
  nop                           #  66    0x12685b  1      OPC=nop             
  nop                           #  67    0x12685c  1      OPC=nop             
  nop                           #  68    0x12685d  1      OPC=nop             
  nop                           #  69    0x12685e  1      OPC=nop             
  nop                           #  70    0x12685f  1      OPC=nop             
.L_126860:                      #        0x126860  0      OPC=<label>         
  addl %edi, %edx               #  71    0x126860  2      OPC=addl_r32_r32    
  movsbq (%r15,%rdx,1), %rsi    #  72    0x126862  5      OPC=movsbq_r64_m8   
  nop                           #  73    0x126867  1      OPC=nop             
  nop                           #  74    0x126868  1      OPC=nop             
  nop                           #  75    0x126869  1      OPC=nop             
  nop                           #  76    0x12686a  1      OPC=nop             
  nop                           #  77    0x12686b  1      OPC=nop             
  nop                           #  78    0x12686c  1      OPC=nop             
  nop                           #  79    0x12686d  1      OPC=nop             
  nop                           #  80    0x12686e  1      OPC=nop             
  nop                           #  81    0x12686f  1      OPC=nop             
  nop                           #  82    0x126870  1      OPC=nop             
  nop                           #  83    0x126871  1      OPC=nop             
  nop                           #  84    0x126872  1      OPC=nop             
  nop                           #  85    0x126873  1      OPC=nop             
  nop                           #  86    0x126874  1      OPC=nop             
  addl $0x1, %ecx               #  87    0x126875  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)  #  88    0x126878  5      OPC=movb_m8_r8      
  andw %si, %si                 #  89    0x12687d  3      OPC=andw_r16_r16    
  movb $0x1, %dil               #  90    0x126880  4      OPC=movb_r8_imm8_1  
  jne .L_126860                 #  91    0x126884  6      OPC=jne_label_1     
  nop                           #  92    0x12688a  1      OPC=nop             
  nop                           #  93    0x12688b  1      OPC=nop             
  nop                           #  94    0x12688c  1      OPC=nop             
  nop                           #  95    0x12688d  1      OPC=nop             
  nop                           #  96    0x12688e  1      OPC=nop             
  nop                           #  97    0x12688f  1      OPC=nop             
  nop                           #  98    0x126890  1      OPC=nop             
  nop                           #  99    0x126891  1      OPC=nop             
  retq

.size strcpy, -.strcpy

