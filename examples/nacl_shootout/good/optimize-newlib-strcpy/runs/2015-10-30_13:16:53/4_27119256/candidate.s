  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strcpy:                        #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax               #  1     0x1267e0  2      OPC=movl_r32_r32    
  nop                           #  2     0x1267e2  1      OPC=nop             
  nop                           #  3     0x1267e3  1      OPC=nop             
  nop                           #  4     0x1267e4  1      OPC=nop             
  nop                           #  5     0x1267e5  1      OPC=nop             
  nop                           #  6     0x1267e6  1      OPC=nop             
  nop                           #  7     0x1267e7  1      OPC=nop             
  nop                           #  8     0x1267e8  1      OPC=nop             
  nop                           #  9     0x1267e9  1      OPC=nop             
  nop                           #  10    0x1267ea  1      OPC=nop             
  nop                           #  11    0x1267eb  1      OPC=nop             
  nop                           #  12    0x1267ec  1      OPC=nop             
  nop                           #  13    0x1267ed  1      OPC=nop             
  nop                           #  14    0x1267ee  1      OPC=nop             
  nop                           #  15    0x1267ef  1      OPC=nop             
  movl %edi, %ecx               #  16    0x1267f0  2      OPC=movl_r32_r32    
  nop                           #  17    0x1267f2  1      OPC=nop             
  nop                           #  18    0x1267f3  1      OPC=nop             
  andq $0x5, %rdi               #  19    0x1267f4  4      OPC=andq_r64_imm8   
  movl %esi, %edx               #  20    0x1267f8  2      OPC=movl_r32_r32    
  jne .L_126860                 #  21    0x1267fa  6      OPC=jne_label_1     
  andl %esi, %esi               #  22    0x126800  2      OPC=andl_r32_r32    
  movq (%r15,%rsi,1), %r8       #  23    0x126802  4      OPC=movq_r64_m64    
  nop                           #  24    0x126806  1      OPC=nop             
  nop                           #  25    0x126807  1      OPC=nop             
  nop                           #  26    0x126808  1      OPC=nop             
  nop                           #  27    0x126809  1      OPC=nop             
  nop                           #  28    0x12680a  1      OPC=nop             
  nop                           #  29    0x12680b  1      OPC=nop             
  nop                           #  30    0x12680c  1      OPC=nop             
  nop                           #  31    0x12680d  1      OPC=nop             
  nop                           #  32    0x12680e  1      OPC=nop             
  andb $0x2, %dil               #  33    0x12680f  4      OPC=andb_r8_imm8    
  jne .L_126860                 #  34    0x126813  6      OPC=jne_label_1     
  nop                           #  35    0x126819  1      OPC=nop             
  nop                           #  36    0x12681a  1      OPC=nop             
  nop                           #  37    0x12681b  1      OPC=nop             
  nop                           #  38    0x12681c  1      OPC=nop             
  nop                           #  39    0x12681d  1      OPC=nop             
  nop                           #  40    0x12681e  1      OPC=nop             
  nop                           #  41    0x12681f  1      OPC=nop             
.L_126820:                      #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx               #  42    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)  #  43    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx               #  44    0x126828  6      OPC=addl_r32_imm32  
  movl (%r15,%rdx,1), %r8d      #  45    0x12682e  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi    #  46    0x126832  7      OPC=leal_r32_m32    
  andq $0x80808080, %rsi        #  47    0x126839  7      OPC=andq_r64_imm32  
  movq %r8, %r9                 #  48    0x126840  3      OPC=movq_r64_r64    
  notl %r9d                     #  49    0x126843  3      OPC=notl_r32        
  andq %rsi, %r9                #  50    0x126846  3      OPC=andq_r64_r64    
  je .L_126820                  #  51    0x126849  6      OPC=je_label_1      
  nop                           #  52    0x12684f  1      OPC=nop             
  nop                           #  53    0x126850  1      OPC=nop             
  nop                           #  54    0x126851  1      OPC=nop             
  nop                           #  55    0x126852  1      OPC=nop             
  nop                           #  56    0x126853  1      OPC=nop             
  nop                           #  57    0x126854  1      OPC=nop             
  nop                           #  58    0x126855  1      OPC=nop             
  nop                           #  59    0x126856  1      OPC=nop             
  nop                           #  60    0x126857  1      OPC=nop             
  nop                           #  61    0x126858  1      OPC=nop             
  nop                           #  62    0x126859  1      OPC=nop             
  nop                           #  63    0x12685a  1      OPC=nop             
  nop                           #  64    0x12685b  1      OPC=nop             
  nop                           #  65    0x12685c  1      OPC=nop             
  nop                           #  66    0x12685d  1      OPC=nop             
  nop                           #  67    0x12685e  1      OPC=nop             
  nop                           #  68    0x12685f  1      OPC=nop             
.L_126860:                      #        0x126860  0      OPC=<label>         
  addl %edi, %edx               #  69    0x126860  2      OPC=addl_r32_r32_1  
  movsbq (%r15,%rdx,1), %rsi    #  70    0x126862  5      OPC=movsbq_r64_m8   
  addb $0x1, %dl                #  71    0x126867  3      OPC=addb_r8_imm8    
  addl $0x1, %ecx               #  72    0x12686a  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)  #  73    0x126870  5      OPC=movb_m8_r8      
  shll $0x8, %esi               #  74    0x126875  3      OPC=shll_r32_imm8   
  jne .L_126860                 #  75    0x126878  6      OPC=jne_label_1     
  nop                           #  76    0x12687e  1      OPC=nop             
  nop                           #  77    0x12687f  1      OPC=nop             
  nop                           #  78    0x126880  1      OPC=nop             
  nop                           #  79    0x126881  1      OPC=nop             
  nop                           #  80    0x126882  1      OPC=nop             
  nop                           #  81    0x126883  1      OPC=nop             
  nop                           #  82    0x126884  1      OPC=nop             
  nop                           #  83    0x126885  1      OPC=nop             
  nop                           #  84    0x126886  1      OPC=nop             
  nop                           #  85    0x126887  1      OPC=nop             
  retq

.size strcpy, -.strcpy

