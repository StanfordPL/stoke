  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strcpy:                        #        0x1267e0  0      OPC=<label>         
  movq %rsi, %rdx               #  1     0x1267e0  3      OPC=movq_r64_r64_1  
  nop                           #  2     0x1267e3  1      OPC=nop             
  nop                           #  3     0x1267e4  1      OPC=nop             
  nop                           #  4     0x1267e5  1      OPC=nop             
  movl %edi, %ecx               #  5     0x1267e6  2      OPC=movl_r32_r32    
  nop                           #  6     0x1267e8  1      OPC=nop             
  nop                           #  7     0x1267e9  1      OPC=nop             
  andl $0x1, %esi               #  8     0x1267ea  3      OPC=andl_r32_imm8   
  nop                           #  9     0x1267ed  1      OPC=nop             
  jne .L_126860                 #  10    0x1267ee  6      OPC=jne_label_1     
  movl %edx, %esi               #  11    0x1267f4  2      OPC=movl_r32_r32_1  
  movq (%r15,%rsi,1), %r8       #  12    0x1267f6  4      OPC=movq_r64_m64    
  nop                           #  13    0x1267fa  1      OPC=nop             
  nop                           #  14    0x1267fb  1      OPC=nop             
  nop                           #  15    0x1267fc  1      OPC=nop             
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
  nop                           #  36    0x126811  1      OPC=nop             
  nop                           #  37    0x126812  1      OPC=nop             
  jne .L_126860                 #  38    0x126813  6      OPC=jne_label_1     
  nop                           #  39    0x126819  1      OPC=nop             
  nop                           #  40    0x12681a  1      OPC=nop             
  nop                           #  41    0x12681b  1      OPC=nop             
  nop                           #  42    0x12681c  1      OPC=nop             
  nop                           #  43    0x12681d  1      OPC=nop             
  nop                           #  44    0x12681e  1      OPC=nop             
  nop                           #  45    0x12681f  1      OPC=nop             
.L_126820:                      #        0x126820  0      OPC=<label>         
  addl %ebp, %ecx               #  46    0x126820  2      OPC=addl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)      #  47    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx               #  48    0x126826  6      OPC=addl_r32_imm32  
  movq (%r15,%rdx,1), %r8       #  49    0x12682c  4      OPC=movq_r64_m64    
  addl $0x4, %ecx               #  50    0x126830  3      OPC=addl_r32_imm8   
  leaq -0x1010101(%r8), %rsi    #  51    0x126833  7      OPC=leaq_r64_m64    
  movl %r8d, %r9d               #  52    0x12683a  3      OPC=movl_r32_r32    
  notl %r9d                     #  53    0x12683d  3      OPC=notl_r32        
  andl %esi, %r9d               #  54    0x126840  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d        #  55    0x126843  7      OPC=andl_r32_imm32  
  je .L_126820                  #  56    0x12684a  6      OPC=je_label_1      
  nop                           #  57    0x126850  1      OPC=nop             
  nop                           #  58    0x126851  1      OPC=nop             
  nop                           #  59    0x126852  1      OPC=nop             
  nop                           #  60    0x126853  1      OPC=nop             
  nop                           #  61    0x126854  1      OPC=nop             
  nop                           #  62    0x126855  1      OPC=nop             
  nop                           #  63    0x126856  1      OPC=nop             
  nop                           #  64    0x126857  1      OPC=nop             
  nop                           #  65    0x126858  1      OPC=nop             
  nop                           #  66    0x126859  1      OPC=nop             
  nop                           #  67    0x12685a  1      OPC=nop             
  nop                           #  68    0x12685b  1      OPC=nop             
  nop                           #  69    0x12685c  1      OPC=nop             
  nop                           #  70    0x12685d  1      OPC=nop             
  nop                           #  71    0x12685e  1      OPC=nop             
  nop                           #  72    0x12685f  1      OPC=nop             
.L_126860:                      #        0x126860  0      OPC=<label>         
  andl %edx, %edx               #  73    0x126860  2      OPC=andl_r32_r32_1  
  movsbw (%r15,%rdx,1), %si     #  74    0x126862  6      OPC=movsbw_r16_m8   
  addw $0x1, %dx                #  75    0x126868  4      OPC=addw_r16_imm8   
  addl $0x1, %ecx               #  76    0x12686c  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)  #  77    0x126872  5      OPC=movb_m8_r8      
  testb %sil, %sil              #  78    0x126877  3      OPC=testb_r8_r8     
  jne .L_126860                 #  79    0x12687a  6      OPC=jne_label_1     
  nop                           #  80    0x126880  1      OPC=nop             
  nop                           #  81    0x126881  1      OPC=nop             
  nop                           #  82    0x126882  1      OPC=nop             
  nop                           #  83    0x126883  1      OPC=nop             
  nop                           #  84    0x126884  1      OPC=nop             
  nop                           #  85    0x126885  1      OPC=nop             
  nop                           #  86    0x126886  1      OPC=nop             
  nop                           #  87    0x126887  1      OPC=nop             
  nop                           #  88    0x126888  1      OPC=nop             
  nop                           #  89    0x126889  1      OPC=nop             
  movq %rdi, %rax               #  90    0x12688a  3      OPC=movq_r64_r64    
  nop                           #  91    0x12688d  1      OPC=nop             
  nop                           #  92    0x12688e  1      OPC=nop             
  retq

.size strcpy, -.strcpy

