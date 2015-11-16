  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                       #  Line  RIP       Bytes  Opcode              
.strcpy:                     #        0x1267e0  0      OPC=<label>         
  movq %rdi, %rax            #  1     0x1267e0  3      OPC=movq_r64_r64    
  movq %rdi, %rcx            #  2     0x1267e3  3      OPC=movq_r64_r64    
  nop                        #  3     0x1267e6  1      OPC=nop             
  nop                        #  4     0x1267e7  1      OPC=nop             
  nop                        #  5     0x1267e8  1      OPC=nop             
  nop                        #  6     0x1267e9  1      OPC=nop             
  movq %rsi, %rdx            #  7     0x1267ea  3      OPC=movq_r64_r64_1  
  nop                        #  8     0x1267ed  1      OPC=nop             
  andl $0x6, %edi            #  9     0x1267ee  3      OPC=andl_r32_imm8   
  jne .L_126860              #  10    0x1267f1  6      OPC=jne_label_1     
  orl %esi, %esi             #  11    0x1267f7  2      OPC=orl_r32_r32     
  movl (%r15,%rsi,1), %r8d   #  12    0x1267f9  4      OPC=movl_r32_m32    
  nop                        #  13    0x1267fd  1      OPC=nop             
  nop                        #  14    0x1267fe  1      OPC=nop             
  nop                        #  15    0x1267ff  1      OPC=nop             
  nop                        #  16    0x126800  1      OPC=nop             
  nop                        #  17    0x126801  1      OPC=nop             
  nop                        #  18    0x126802  1      OPC=nop             
  nop                        #  19    0x126803  1      OPC=nop             
  nop                        #  20    0x126804  1      OPC=nop             
  nop                        #  21    0x126805  1      OPC=nop             
  nop                        #  22    0x126806  1      OPC=nop             
  nop                        #  23    0x126807  1      OPC=nop             
  nop                        #  24    0x126808  1      OPC=nop             
  nop                        #  25    0x126809  1      OPC=nop             
  nop                        #  26    0x12680a  1      OPC=nop             
  nop                        #  27    0x12680b  1      OPC=nop             
  andl $0x10, %edi           #  28    0x12680c  6      OPC=andl_r32_imm32  
  nop                        #  29    0x126812  1      OPC=nop             
  nop                        #  30    0x126813  1      OPC=nop             
  jne .L_126860              #  31    0x126814  6      OPC=jne_label_1     
  nop                        #  32    0x12681a  1      OPC=nop             
  nop                        #  33    0x12681b  1      OPC=nop             
  nop                        #  34    0x12681c  1      OPC=nop             
  nop                        #  35    0x12681d  1      OPC=nop             
  nop                        #  36    0x12681e  1      OPC=nop             
  nop                        #  37    0x12681f  1      OPC=nop             
.L_126820:                   #        0x126820  0      OPC=<label>         
  addl $0x4, %edx            #  38    0x126820  3      OPC=addl_r32_imm8   
  andl %ecx, %ecx            #  39    0x126823  2      OPC=andl_r32_r32    
  movl %r8d, (%r15,%rcx,1)   #  40    0x126825  4      OPC=movl_m32_r32    
  addl $0x4, %ecx            #  41    0x126829  3      OPC=addl_r32_imm8   
  andl %edx, %edx            #  42    0x12682c  2      OPC=andl_r32_r32_1  
  movq (%r15,%rdx,1), %r8    #  43    0x12682e  4      OPC=movq_r64_m64    
  movl %r8d, %r9d            #  44    0x126832  3      OPC=movl_r32_r32_1  
  leaw -0x1010101(%r8), %si  #  45    0x126835  8      OPC=leaw_r16_m64    
  notq %r9                   #  46    0x12683d  3      OPC=notq_r64        
  nop                        #  47    0x126840  1      OPC=nop             
  nop                        #  48    0x126841  1      OPC=nop             
  nop                        #  49    0x126842  1      OPC=nop             
  andq $0x80808080, %r9      #  50    0x126843  7      OPC=andq_r64_imm32  
  andl %esi, %r9d            #  51    0x12684a  3      OPC=andl_r32_r32    
  je .L_126820               #  52    0x12684d  6      OPC=je_label_1      
  nop                        #  53    0x126853  1      OPC=nop             
  nop                        #  54    0x126854  1      OPC=nop             
  nop                        #  55    0x126855  1      OPC=nop             
  nop                        #  56    0x126856  1      OPC=nop             
  nop                        #  57    0x126857  1      OPC=nop             
  nop                        #  58    0x126858  1      OPC=nop             
  nop                        #  59    0x126859  1      OPC=nop             
  nop                        #  60    0x12685a  1      OPC=nop             
  nop                        #  61    0x12685b  1      OPC=nop             
  nop                        #  62    0x12685c  1      OPC=nop             
  nop                        #  63    0x12685d  1      OPC=nop             
  nop                        #  64    0x12685e  1      OPC=nop             
  nop                        #  65    0x12685f  1      OPC=nop             
.L_126860:                   #        0x126860  0      OPC=<label>         
  andl %edx, %edx            #  66    0x126860  2      OPC=andl_r32_r32    
  movzbw (%r15,%rdx,1), %si  #  67    0x126862  6      OPC=movzbw_r16_m8   
  nop                        #  68    0x126868  1      OPC=nop             
  addl $0x1, %edx            #  69    0x126869  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx            #  70    0x12686c  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)   #  71    0x12686e  4      OPC=movb_m8_r8      
  addl $0x1, %ecx            #  72    0x126872  3      OPC=addl_r32_imm8   
  testb %sil, %sil           #  73    0x126875  3      OPC=testb_r8_r8     
  jne .L_126860              #  74    0x126878  6      OPC=jne_label_1     
  nop                        #  75    0x12687e  1      OPC=nop             
  nop                        #  76    0x12687f  1      OPC=nop             
  nop                        #  77    0x126880  1      OPC=nop             
  nop                        #  78    0x126881  1      OPC=nop             
  nop                        #  79    0x126882  1      OPC=nop             
  nop                        #  80    0x126883  1      OPC=nop             
  nop                        #  81    0x126884  1      OPC=nop             
  nop                        #  82    0x126885  1      OPC=nop             
  nop                        #  83    0x126886  1      OPC=nop             
  nop                        #  84    0x126887  1      OPC=nop             
  nop                        #  85    0x126888  1      OPC=nop             
  nop                        #  86    0x126889  1      OPC=nop             
  nop                        #  87    0x12688a  1      OPC=nop             
  nop                        #  88    0x12688b  1      OPC=nop             
  nop                        #  89    0x12688c  1      OPC=nop             
  retq

.size strcpy, -.strcpy

