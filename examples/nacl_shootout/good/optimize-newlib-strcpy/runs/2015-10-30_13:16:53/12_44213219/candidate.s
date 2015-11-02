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
  nop                           #  5     0x1267e4  1      OPC=nop             
  movq %rdi, %rcx               #  6     0x1267e5  3      OPC=movq_r64_r64_1  
  movl %ecx, %eax               #  7     0x1267e8  2      OPC=movl_r32_r32    
  subl %eax, %edi               #  8     0x1267ea  2      OPC=subl_r32_r32    
  movl %esi, %edx               #  9     0x1267ec  2      OPC=movl_r32_r32_1  
  nop                           #  10    0x1267ee  1      OPC=nop             
  nop                           #  11    0x1267ef  1      OPC=nop             
  nop                           #  12    0x1267f0  1      OPC=nop             
  jne .L_126860                 #  13    0x1267f1  6      OPC=jne_label_1     
  movl %edx, %esi               #  14    0x1267f7  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d      #  15    0x1267f9  4      OPC=movl_r32_m32    
  nop                           #  16    0x1267fd  1      OPC=nop             
  nop                           #  17    0x1267fe  1      OPC=nop             
  nop                           #  18    0x1267ff  1      OPC=nop             
  nop                           #  19    0x126800  1      OPC=nop             
  nop                           #  20    0x126801  1      OPC=nop             
  nop                           #  21    0x126802  1      OPC=nop             
  nop                           #  22    0x126803  1      OPC=nop             
  nop                           #  23    0x126804  1      OPC=nop             
  nop                           #  24    0x126805  1      OPC=nop             
  nop                           #  25    0x126806  1      OPC=nop             
  nop                           #  26    0x126807  1      OPC=nop             
  nop                           #  27    0x126808  1      OPC=nop             
  nop                           #  28    0x126809  1      OPC=nop             
  nop                           #  29    0x12680a  1      OPC=nop             
  nop                           #  30    0x12680b  1      OPC=nop             
  nop                           #  31    0x12680c  1      OPC=nop             
  nop                           #  32    0x12680d  1      OPC=nop             
  nop                           #  33    0x12680e  1      OPC=nop             
  nop                           #  34    0x12680f  1      OPC=nop             
  nop                           #  35    0x126810  1      OPC=nop             
  jne .L_126860                 #  36    0x126811  6      OPC=jne_label_1     
  nop                           #  37    0x126817  1      OPC=nop             
  nop                           #  38    0x126818  1      OPC=nop             
  nop                           #  39    0x126819  1      OPC=nop             
  nop                           #  40    0x12681a  1      OPC=nop             
  nop                           #  41    0x12681b  1      OPC=nop             
  nop                           #  42    0x12681c  1      OPC=nop             
  nop                           #  43    0x12681d  1      OPC=nop             
  nop                           #  44    0x12681e  1      OPC=nop             
  nop                           #  45    0x12681f  1      OPC=nop             
.L_126820:                      #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx               #  46    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)  #  47    0x126823  5      OPC=movl_m32_r32    
  nop                           #  48    0x126828  1      OPC=nop             
  nop                           #  49    0x126829  1      OPC=nop             
  nop                           #  50    0x12682a  1      OPC=nop             
  nop                           #  51    0x12682b  1      OPC=nop             
  nop                           #  52    0x12682c  1      OPC=nop             
  nop                           #  53    0x12682d  1      OPC=nop             
  nop                           #  54    0x12682e  1      OPC=nop             
  addl $0x4, %edx               #  55    0x12682f  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d      #  56    0x126832  4      OPC=movl_r32_m32    
  movq %r8, %r9                 #  57    0x126836  3      OPC=movq_r64_r64_1  
  leal -0x1010101(%r8), %esi    #  58    0x126839  7      OPC=leal_r32_m16    
  notl %r9d                     #  59    0x126840  3      OPC=notl_r32        
  andl %esi, %r9d               #  60    0x126843  3      OPC=andl_r32_r32_1  
  andl $0x80808080, %r9d        #  61    0x126846  7      OPC=andl_r32_imm32  
  je .L_126820                  #  62    0x12684d  6      OPC=je_label_1      
  nop                           #  63    0x126853  1      OPC=nop             
  nop                           #  64    0x126854  1      OPC=nop             
  nop                           #  65    0x126855  1      OPC=nop             
  nop                           #  66    0x126856  1      OPC=nop             
  nop                           #  67    0x126857  1      OPC=nop             
  nop                           #  68    0x126858  1      OPC=nop             
  nop                           #  69    0x126859  1      OPC=nop             
  nop                           #  70    0x12685a  1      OPC=nop             
  nop                           #  71    0x12685b  1      OPC=nop             
  nop                           #  72    0x12685c  1      OPC=nop             
  nop                           #  73    0x12685d  1      OPC=nop             
  nop                           #  74    0x12685e  1      OPC=nop             
  nop                           #  75    0x12685f  1      OPC=nop             
.L_126860:                      #        0x126860  0      OPC=<label>         
  xorl %ebp, %edx               #  76    0x126860  2      OPC=xorl_r32_r32_1  
  movsbl (%r15,%rdx,1), %esi    #  77    0x126862  5      OPC=movsbl_r32_m8   
  nop                           #  78    0x126867  1      OPC=nop             
  nop                           #  79    0x126868  1      OPC=nop             
  nop                           #  80    0x126869  1      OPC=nop             
  nop                           #  81    0x12686a  1      OPC=nop             
  nop                           #  82    0x12686b  1      OPC=nop             
  nop                           #  83    0x12686c  1      OPC=nop             
  nop                           #  84    0x12686d  1      OPC=nop             
  nop                           #  85    0x12686e  1      OPC=nop             
  nop                           #  86    0x12686f  1      OPC=nop             
  addl $0x1, %ecx               #  87    0x126870  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)  #  88    0x126873  5      OPC=movb_m8_r8      
  addq $0x1, %rdx               #  89    0x126878  4      OPC=addq_r64_imm8   
  nop                           #  90    0x12687c  1      OPC=nop             
  nop                           #  91    0x12687d  1      OPC=nop             
  nop                           #  92    0x12687e  1      OPC=nop             
  nop                           #  93    0x12687f  1      OPC=nop             
  nop                           #  94    0x126880  1      OPC=nop             
  testb %dl, %sil               #  95    0x126881  3      OPC=testb_r8_r8     
  jne .L_126860                 #  96    0x126884  6      OPC=jne_label_1     
  nop                           #  97    0x12688a  1      OPC=nop             
  nop                           #  98    0x12688b  1      OPC=nop             
  nop                           #  99    0x12688c  1      OPC=nop             
  nop                           #  100   0x12688d  1      OPC=nop             
  nop                           #  101   0x12688e  1      OPC=nop             
  nop                           #  102   0x12688f  1      OPC=nop             
  nop                           #  103   0x126890  1      OPC=nop             
  nop                           #  104   0x126891  1      OPC=nop             
  nop                           #  105   0x126892  1      OPC=nop             
  nop                           #  106   0x126893  1      OPC=nop             
  retq

.size strcpy, -.strcpy

