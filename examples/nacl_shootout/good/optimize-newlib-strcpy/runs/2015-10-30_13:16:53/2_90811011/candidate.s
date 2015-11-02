  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %esi, %edx                 #  1     0x1267e0  2      OPC=movl_r32_r32_1  
  nop                             #  2     0x1267e2  1      OPC=nop             
  nop                             #  3     0x1267e3  1      OPC=nop             
  nop                             #  4     0x1267e4  1      OPC=nop             
  nop                             #  5     0x1267e5  1      OPC=nop             
  movq %rdi, %rax                 #  6     0x1267e6  3      OPC=movq_r64_r64    
  nop                             #  7     0x1267e9  1      OPC=nop             
  movq %rax, %rcx                 #  8     0x1267ea  3      OPC=movq_r64_r64_1  
  nop                             #  9     0x1267ed  1      OPC=nop             
  nop                             #  10    0x1267ee  1      OPC=nop             
  andw $0x2, %di                  #  11    0x1267ef  4      OPC=andw_r16_imm8   
  jne .L_126860                   #  12    0x1267f3  6      OPC=jne_label_1     
  movl %edx, %esi                 #  13    0x1267f9  2      OPC=movl_r32_r32    
  movq (%r15,%rsi,1), %r8         #  14    0x1267fb  4      OPC=movq_r64_m64    
  nop                             #  15    0x1267ff  1      OPC=nop             
  nop                             #  16    0x126800  1      OPC=nop             
  nop                             #  17    0x126801  1      OPC=nop             
  nop                             #  18    0x126802  1      OPC=nop             
  nop                             #  19    0x126803  1      OPC=nop             
  nop                             #  20    0x126804  1      OPC=nop             
  nop                             #  21    0x126805  1      OPC=nop             
  nop                             #  22    0x126806  1      OPC=nop             
  nop                             #  23    0x126807  1      OPC=nop             
  nop                             #  24    0x126808  1      OPC=nop             
  nop                             #  25    0x126809  1      OPC=nop             
  nop                             #  26    0x12680a  1      OPC=nop             
  jne .L_126860                   #  27    0x12680b  6      OPC=jne_label_1     
  nop                             #  28    0x126811  1      OPC=nop             
  nop                             #  29    0x126812  1      OPC=nop             
  nop                             #  30    0x126813  1      OPC=nop             
  nop                             #  31    0x126814  1      OPC=nop             
  nop                             #  32    0x126815  1      OPC=nop             
  nop                             #  33    0x126816  1      OPC=nop             
  nop                             #  34    0x126817  1      OPC=nop             
  nop                             #  35    0x126818  1      OPC=nop             
  nop                             #  36    0x126819  1      OPC=nop             
  nop                             #  37    0x12681a  1      OPC=nop             
  nop                             #  38    0x12681b  1      OPC=nop             
  nop                             #  39    0x12681c  1      OPC=nop             
  nop                             #  40    0x12681d  1      OPC=nop             
  nop                             #  41    0x12681e  1      OPC=nop             
  nop                             #  42    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  nop                             #  43    0x126820  1      OPC=nop             
  nop                             #  44    0x126821  1      OPC=nop             
  nop                             #  45    0x126822  1      OPC=nop             
  nop                             #  46    0x126823  1      OPC=nop             
  addl $0x4, %ecx                 #  47    0x126824  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)    #  48    0x126827  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  49    0x12682c  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  50    0x12682f  4      OPC=movl_r32_m32    
  movq %r8, %r9                   #  51    0x126833  3      OPC=movq_r64_r64    
  notl %r9d                       #  52    0x126836  3      OPC=notl_r32        
  leal -0x1010101(%r8), %esi      #  53    0x126839  7      OPC=leal_r32_m32    
  andq %rsi, %r9                  #  54    0x126840  3      OPC=andq_r64_r64    
  andq $0x80808080, %r9           #  55    0x126843  7      OPC=andq_r64_imm32  
  je .L_126820                    #  56    0x12684a  6      OPC=je_label_1      
  nop                             #  57    0x126850  1      OPC=nop             
  nop                             #  58    0x126851  1      OPC=nop             
  nop                             #  59    0x126852  1      OPC=nop             
  nop                             #  60    0x126853  1      OPC=nop             
  nop                             #  61    0x126854  1      OPC=nop             
  nop                             #  62    0x126855  1      OPC=nop             
  nop                             #  63    0x126856  1      OPC=nop             
  nop                             #  64    0x126857  1      OPC=nop             
  nop                             #  65    0x126858  1      OPC=nop             
  nop                             #  66    0x126859  1      OPC=nop             
  nop                             #  67    0x12685a  1      OPC=nop             
  nop                             #  68    0x12685b  1      OPC=nop             
  nop                             #  69    0x12685c  1      OPC=nop             
  nop                             #  70    0x12685d  1      OPC=nop             
  nop                             #  71    0x12685e  1      OPC=nop             
  nop                             #  72    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  nop                             #  73    0x126860  1      OPC=nop             
  nop                             #  74    0x126861  1      OPC=nop             
  nop                             #  75    0x126862  1      OPC=nop             
  nop                             #  76    0x126863  1      OPC=nop             
  nop                             #  77    0x126864  1      OPC=nop             
  nop                             #  78    0x126865  1      OPC=nop             
  nop                             #  79    0x126866  1      OPC=nop             
  nop                             #  80    0x126867  1      OPC=nop             
  nop                             #  81    0x126868  1      OPC=nop             
  incl %edx                       #  82    0x126869  2      OPC=incl_r32        
  movzbq -0x1(%r15,%rdx,1), %rsi  #  83    0x12686b  6      OPC=movzbq_r64_m8   
  addl $0x1, %ecx                 #  84    0x126871  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  85    0x126874  5      OPC=movb_m8_r8      
  nop                             #  86    0x126879  1      OPC=nop             
  nop                             #  87    0x12687a  1      OPC=nop             
  nop                             #  88    0x12687b  1      OPC=nop             
  nop                             #  89    0x12687c  1      OPC=nop             
  nop                             #  90    0x12687d  1      OPC=nop             
  nop                             #  91    0x12687e  1      OPC=nop             
  nop                             #  92    0x12687f  1      OPC=nop             
  nop                             #  93    0x126880  1      OPC=nop             
  nop                             #  94    0x126881  1      OPC=nop             
  nop                             #  95    0x126882  1      OPC=nop             
  nop                             #  96    0x126883  1      OPC=nop             
  nop                             #  97    0x126884  1      OPC=nop             
  nop                             #  98    0x126885  1      OPC=nop             
  nop                             #  99    0x126886  1      OPC=nop             
  nop                             #  100   0x126887  1      OPC=nop             
  andl $0x6, %esi                 #  101   0x126888  3      OPC=andl_r32_imm8   
  jne .L_126860                   #  102   0x12688b  6      OPC=jne_label_1     
  retq

.size strcpy, -.strcpy

