  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax             #  1     0x1267e0  2      OPC=movl_r32_r32_1  
  nop                         #  2     0x1267e2  1      OPC=nop             
  movq %rsi, %rdx             #  3     0x1267e3  3      OPC=movq_r64_r64_1  
  nop                         #  4     0x1267e6  1      OPC=nop             
  movl %eax, %ecx             #  5     0x1267e7  2      OPC=movl_r32_r32_1  
  andl %esi, %edi             #  6     0x1267e9  2      OPC=andl_r32_r32_1  
  andl $0x20, %edi            #  7     0x1267eb  3      OPC=andl_r32_imm8   
  nop                         #  8     0x1267ee  1      OPC=nop             
  nop                         #  9     0x1267ef  1      OPC=nop             
  nop                         #  10    0x1267f0  1      OPC=nop             
  jne .L_126860               #  11    0x1267f1  6      OPC=jne_label_1     
  movl %esi, %esi             #  12    0x1267f7  2      OPC=movl_r32_r32_1  
  movq (%r15,%rsi,1), %r8     #  13    0x1267f9  4      OPC=movq_r64_m64    
  nop                         #  14    0x1267fd  1      OPC=nop             
  nop                         #  15    0x1267fe  1      OPC=nop             
  nop                         #  16    0x1267ff  1      OPC=nop             
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
  jne .L_126860               #  37    0x126814  6      OPC=jne_label_1     
  nop                         #  38    0x12681a  1      OPC=nop             
  nop                         #  39    0x12681b  1      OPC=nop             
  nop                         #  40    0x12681c  1      OPC=nop             
  nop                         #  41    0x12681d  1      OPC=nop             
  nop                         #  42    0x12681e  1      OPC=nop             
  nop                         #  43    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  subl %edi, %ecx             #  44    0x126820  2      OPC=subl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)    #  45    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  46    0x126826  3      OPC=addl_r32_imm8   
  addw $0x4, %dx              #  47    0x126829  4      OPC=addw_r16_imm8   
  movl %edx, %esi             #  48    0x12682d  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  49    0x12682f  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %rsi  #  50    0x126833  7      OPC=leaq_r64_m64    
  movl %r8d, %r9d             #  51    0x12683a  3      OPC=movl_r32_r32_1  
  notq %r9                    #  52    0x12683d  3      OPC=notq_r64        
  andl $0x80808080, %r9d      #  53    0x126840  7      OPC=andl_r32_imm32  
  andl %esi, %r9d             #  54    0x126847  3      OPC=andl_r32_r32    
  je .L_126820                #  55    0x12684a  6      OPC=je_label_1      
  nop                         #  56    0x126850  1      OPC=nop             
  nop                         #  57    0x126851  1      OPC=nop             
  nop                         #  58    0x126852  1      OPC=nop             
  nop                         #  59    0x126853  1      OPC=nop             
  nop                         #  60    0x126854  1      OPC=nop             
  nop                         #  61    0x126855  1      OPC=nop             
  nop                         #  62    0x126856  1      OPC=nop             
  nop                         #  63    0x126857  1      OPC=nop             
  nop                         #  64    0x126858  1      OPC=nop             
  nop                         #  65    0x126859  1      OPC=nop             
  nop                         #  66    0x12685a  1      OPC=nop             
  nop                         #  67    0x12685b  1      OPC=nop             
  nop                         #  68    0x12685c  1      OPC=nop             
  nop                         #  69    0x12685d  1      OPC=nop             
  nop                         #  70    0x12685e  1      OPC=nop             
  nop                         #  71    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  addl %ebp, %edx             #  72    0x126860  2      OPC=addl_r32_r32_1  
  movsbq (%r15,%rdx,1), %rsi  #  73    0x126862  5      OPC=movsbq_r64_m8   
  addl $0x1, %edx             #  74    0x126867  3      OPC=addl_r32_imm8   
  nop                         #  75    0x12686a  1      OPC=nop             
  nop                         #  76    0x12686b  1      OPC=nop             
  movl %ecx, %ecx             #  77    0x12686c  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  78    0x12686e  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  79    0x126872  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  80    0x126875  3      OPC=testb_r8_r8     
  jne .L_126860               #  81    0x126878  6      OPC=jne_label_1     
  nop                         #  82    0x12687e  1      OPC=nop             
  nop                         #  83    0x12687f  1      OPC=nop             
  nop                         #  84    0x126880  1      OPC=nop             
  retq

.size strcpy, -.strcpy

