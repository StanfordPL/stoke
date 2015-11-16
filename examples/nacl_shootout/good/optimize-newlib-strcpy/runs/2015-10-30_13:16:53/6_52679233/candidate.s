  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  nop                         #  1     0x1267e0  1      OPC=nop             
  nop                         #  2     0x1267e1  1      OPC=nop             
  nop                         #  3     0x1267e2  1      OPC=nop             
  nop                         #  4     0x1267e3  1      OPC=nop             
  nop                         #  5     0x1267e4  1      OPC=nop             
  movq %rsi, %rdx             #  6     0x1267e5  3      OPC=movq_r64_r64_1  
  movl %edi, %eax             #  7     0x1267e8  2      OPC=movl_r32_r32_1  
  andq %rsp, %rsi             #  8     0x1267ea  3      OPC=andq_r64_r64_1  
  movq %rax, %rcx             #  9     0x1267ed  3      OPC=movq_r64_r64_1  
  nop                         #  10    0x1267f0  1      OPC=nop             
  jne .L_126860               #  11    0x1267f1  6      OPC=jne_label_1     
  nop                         #  12    0x1267f7  1      OPC=nop             
  nop                         #  13    0x1267f8  1      OPC=nop             
  nop                         #  14    0x1267f9  1      OPC=nop             
  movl %edx, %esi             #  15    0x1267fa  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  16    0x1267fc  4      OPC=movl_r32_m32    
  nop                         #  17    0x126800  1      OPC=nop             
  nop                         #  18    0x126801  1      OPC=nop             
  nop                         #  19    0x126802  1      OPC=nop             
  nop                         #  20    0x126803  1      OPC=nop             
  nop                         #  21    0x126804  1      OPC=nop             
  nop                         #  22    0x126805  1      OPC=nop             
  nop                         #  23    0x126806  1      OPC=nop             
  nop                         #  24    0x126807  1      OPC=nop             
  nop                         #  25    0x126808  1      OPC=nop             
  nop                         #  26    0x126809  1      OPC=nop             
  nop                         #  27    0x12680a  1      OPC=nop             
  nop                         #  28    0x12680b  1      OPC=nop             
  nop                         #  29    0x12680c  1      OPC=nop             
  nop                         #  30    0x12680d  1      OPC=nop             
  nop                         #  31    0x12680e  1      OPC=nop             
  nop                         #  32    0x12680f  1      OPC=nop             
  nop                         #  33    0x126810  1      OPC=nop             
  nop                         #  34    0x126811  1      OPC=nop             
  nop                         #  35    0x126812  1      OPC=nop             
  nop                         #  36    0x126813  1      OPC=nop             
  nop                         #  37    0x126814  1      OPC=nop             
  nop                         #  38    0x126815  1      OPC=nop             
  nop                         #  39    0x126816  1      OPC=nop             
  jne .L_126860               #  40    0x126817  6      OPC=jne_label_1     
  nop                         #  41    0x12681d  1      OPC=nop             
  nop                         #  42    0x12681e  1      OPC=nop             
  nop                         #  43    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  nop                         #  44    0x126820  1      OPC=nop             
  nop                         #  45    0x126821  1      OPC=nop             
  nop                         #  46    0x126822  1      OPC=nop             
  andl %ecx, %ecx             #  47    0x126823  2      OPC=andl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  48    0x126825  4      OPC=movl_m32_r32    
  addl $0x4, %edx             #  49    0x126829  6      OPC=addl_r32_imm32  
  movl (%r15,%rdx,1), %r8d    #  50    0x12682f  4      OPC=movl_r32_m32    
  movq %r8, %r9               #  51    0x126833  3      OPC=movq_r64_r64_1  
  notl %r9d                   #  52    0x126836  3      OPC=notl_r32        
  leaq -0x1010101(%r8), %rsi  #  53    0x126839  7      OPC=leaq_r64_m32    
  addl $0x4, %ecx             #  54    0x126840  3      OPC=addl_r32_imm8   
  andl $0x80808080, %r9d      #  55    0x126843  7      OPC=andl_r32_imm32  
  andl %esi, %r9d             #  56    0x12684a  3      OPC=andl_r32_r32    
  je .L_126820                #  57    0x12684d  6      OPC=je_label_1      
  nop                         #  58    0x126853  1      OPC=nop             
  nop                         #  59    0x126854  1      OPC=nop             
  nop                         #  60    0x126855  1      OPC=nop             
  nop                         #  61    0x126856  1      OPC=nop             
  nop                         #  62    0x126857  1      OPC=nop             
  nop                         #  63    0x126858  1      OPC=nop             
  nop                         #  64    0x126859  1      OPC=nop             
  nop                         #  65    0x12685a  1      OPC=nop             
  nop                         #  66    0x12685b  1      OPC=nop             
  nop                         #  67    0x12685c  1      OPC=nop             
  nop                         #  68    0x12685d  1      OPC=nop             
  nop                         #  69    0x12685e  1      OPC=nop             
  nop                         #  70    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  andl %edx, %edx             #  71    0x126860  2      OPC=andl_r32_r32    
  movsbq (%r15,%rdx,1), %rsi  #  72    0x126862  5      OPC=movsbq_r64_m8   
  nop                         #  73    0x126867  1      OPC=nop             
  subl %esp, %ecx             #  74    0x126868  2      OPC=subl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  75    0x12686a  4      OPC=movb_m8_r8      
  addb $0x1, %cl              #  76    0x12686e  3      OPC=addb_r8_imm8    
  addq $0x1, %rdx             #  77    0x126871  4      OPC=addq_r64_imm8   
  testb %sil, %dl             #  78    0x126875  3      OPC=testb_r8_r8     
  jne .L_126860               #  79    0x126878  6      OPC=jne_label_1     
  nop                         #  80    0x12687e  1      OPC=nop             
  nop                         #  81    0x12687f  1      OPC=nop             
  nop                         #  82    0x126880  1      OPC=nop             
  nop                         #  83    0x126881  1      OPC=nop             
  nop                         #  84    0x126882  1      OPC=nop             
  nop                         #  85    0x126883  1      OPC=nop             
  nop                         #  86    0x126884  1      OPC=nop             
  nop                         #  87    0x126885  1      OPC=nop             
  nop                         #  88    0x126886  1      OPC=nop             
  nop                         #  89    0x126887  1      OPC=nop             
  nop                         #  90    0x126888  1      OPC=nop             
  nop                         #  91    0x126889  1      OPC=nop             
  nop                         #  92    0x12688a  1      OPC=nop             
  nop                         #  93    0x12688b  1      OPC=nop             
  nop                         #  94    0x12688c  1      OPC=nop             
  nop                         #  95    0x12688d  1      OPC=nop             
  nop                         #  96    0x12688e  1      OPC=nop             
  nop                         #  97    0x12688f  1      OPC=nop             
  retq

.size strcpy, -.strcpy

