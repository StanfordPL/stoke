  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax             #  1     0x1267e0  2      OPC=movl_r32_r32    
  movq %rsi, %rdx             #  2     0x1267e2  3      OPC=movq_r64_r64    
  addl %esi, %edi             #  3     0x1267e5  2      OPC=addl_r32_r32_1  
  andl $0x3, %edi             #  4     0x1267e7  3      OPC=andl_r32_imm8   
  nop                         #  5     0x1267ea  1      OPC=nop             
  movq %rax, %rcx             #  6     0x1267eb  3      OPC=movq_r64_r64    
  nop                         #  7     0x1267ee  1      OPC=nop             
  jne .L_126860               #  8     0x1267ef  6      OPC=jne_label_1     
  nop                         #  9     0x1267f5  1      OPC=nop             
  nop                         #  10    0x1267f6  1      OPC=nop             
  nop                         #  11    0x1267f7  1      OPC=nop             
  movl %edx, %esi             #  12    0x1267f8  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  13    0x1267fa  4      OPC=movl_r32_m32    
  nop                         #  14    0x1267fe  1      OPC=nop             
  nop                         #  15    0x1267ff  1      OPC=nop             
  nop                         #  16    0x126800  1      OPC=nop             
  nop                         #  17    0x126801  1      OPC=nop             
  nop                         #  18    0x126802  1      OPC=nop             
  nop                         #  19    0x126803  1      OPC=nop             
  nop                         #  20    0x126804  1      OPC=nop             
  nop                         #  21    0x126805  1      OPC=nop             
  nop                         #  22    0x126806  1      OPC=nop             
  nop                         #  23    0x126807  1      OPC=nop             
  nop                         #  24    0x126808  1      OPC=nop             
  nop                         #  25    0x126809  1      OPC=nop             
  jne .L_126860               #  26    0x12680a  6      OPC=jne_label_1     
  nop                         #  27    0x126810  1      OPC=nop             
  nop                         #  28    0x126811  1      OPC=nop             
  nop                         #  29    0x126812  1      OPC=nop             
  nop                         #  30    0x126813  1      OPC=nop             
  nop                         #  31    0x126814  1      OPC=nop             
  nop                         #  32    0x126815  1      OPC=nop             
  nop                         #  33    0x126816  1      OPC=nop             
  nop                         #  34    0x126817  1      OPC=nop             
  nop                         #  35    0x126818  1      OPC=nop             
  nop                         #  36    0x126819  1      OPC=nop             
  nop                         #  37    0x12681a  1      OPC=nop             
  nop                         #  38    0x12681b  1      OPC=nop             
  nop                         #  39    0x12681c  1      OPC=nop             
  nop                         #  40    0x12681d  1      OPC=nop             
  nop                         #  41    0x12681e  1      OPC=nop             
  nop                         #  42    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  nop                         #  43    0x126820  1      OPC=nop             
  nop                         #  44    0x126821  1      OPC=nop             
  nop                         #  45    0x126822  1      OPC=nop             
  nop                         #  46    0x126823  1      OPC=nop             
  nop                         #  47    0x126824  1      OPC=nop             
  nop                         #  48    0x126825  1      OPC=nop             
  movl %ecx, %ecx             #  49    0x126826  2      OPC=movl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)    #  50    0x126828  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  51    0x12682c  3      OPC=addl_r32_imm8   
  addl $0x4, %edx             #  52    0x12682f  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  53    0x126832  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %rsi  #  54    0x126836  7      OPC=leaq_r64_m32    
  movq %r8, %r9               #  55    0x12683d  3      OPC=movq_r64_r64    
  notl %r9d                   #  56    0x126840  3      OPC=notl_r32        
  andl %esi, %r9d             #  57    0x126843  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  58    0x126846  7      OPC=andl_r32_imm32  
  je .L_126820                #  59    0x12684d  6      OPC=je_label_1      
  nop                         #  60    0x126853  1      OPC=nop             
  nop                         #  61    0x126854  1      OPC=nop             
  nop                         #  62    0x126855  1      OPC=nop             
  nop                         #  63    0x126856  1      OPC=nop             
  nop                         #  64    0x126857  1      OPC=nop             
  nop                         #  65    0x126858  1      OPC=nop             
  nop                         #  66    0x126859  1      OPC=nop             
  nop                         #  67    0x12685a  1      OPC=nop             
  nop                         #  68    0x12685b  1      OPC=nop             
  nop                         #  69    0x12685c  1      OPC=nop             
  nop                         #  70    0x12685d  1      OPC=nop             
  nop                         #  71    0x12685e  1      OPC=nop             
  nop                         #  72    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  andl %edx, %edx             #  73    0x126860  2      OPC=andl_r32_r32_1  
  movsbl (%r15,%rdx,1), %esi  #  74    0x126862  5      OPC=movsbl_r32_m8   
  addl $0x1, %edx             #  75    0x126867  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  76    0x12686a  2      OPC=movl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)    #  77    0x12686c  4      OPC=movb_m8_r8      
  addq $0x1, %rcx             #  78    0x126870  7      OPC=addq_r64_imm32  
  testb %sil, %sil            #  79    0x126877  3      OPC=testb_r8_r8     
  jne .L_126860               #  80    0x12687a  6      OPC=jne_label_1     
  nop                         #  81    0x126880  1      OPC=nop             
  nop                         #  82    0x126881  1      OPC=nop             
  nop                         #  83    0x126882  1      OPC=nop             
  nop                         #  84    0x126883  1      OPC=nop             
  nop                         #  85    0x126884  1      OPC=nop             
  nop                         #  86    0x126885  1      OPC=nop             
  nop                         #  87    0x126886  1      OPC=nop             
  nop                         #  88    0x126887  1      OPC=nop             
  nop                         #  89    0x126888  1      OPC=nop             
  nop                         #  90    0x126889  1      OPC=nop             
  nop                         #  91    0x12688a  1      OPC=nop             
  retq

.size strcpy, -.strcpy

