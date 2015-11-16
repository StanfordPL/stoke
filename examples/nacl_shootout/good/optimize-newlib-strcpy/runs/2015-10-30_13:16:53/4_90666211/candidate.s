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
  movl %edi, %eax             #  3     0x1267e2  2      OPC=movl_r32_r32    
  nop                         #  4     0x1267e4  1      OPC=nop             
  movq %rax, %rcx             #  5     0x1267e5  3      OPC=movq_r64_r64    
  andl $0x0, %edi             #  6     0x1267e8  3      OPC=andl_r32_imm8   
  movl %esi, %edx             #  7     0x1267eb  2      OPC=movl_r32_r32_1  
  nop                         #  8     0x1267ed  1      OPC=nop             
  nop                         #  9     0x1267ee  1      OPC=nop             
  nop                         #  10    0x1267ef  1      OPC=nop             
  nop                         #  11    0x1267f0  1      OPC=nop             
  nop                         #  12    0x1267f1  1      OPC=nop             
  jne .L_126860               #  13    0x1267f2  6      OPC=jne_label_1     
  nop                         #  14    0x1267f8  1      OPC=nop             
  movl %edx, %esi             #  15    0x1267f9  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  16    0x1267fb  4      OPC=movl_r32_m32    
  nop                         #  17    0x1267ff  1      OPC=nop             
  nop                         #  18    0x126800  1      OPC=nop             
  nop                         #  19    0x126801  1      OPC=nop             
  nop                         #  20    0x126802  1      OPC=nop             
  nop                         #  21    0x126803  1      OPC=nop             
  nop                         #  22    0x126804  1      OPC=nop             
  nop                         #  23    0x126805  1      OPC=nop             
  nop                         #  24    0x126806  1      OPC=nop             
  nop                         #  25    0x126807  1      OPC=nop             
  nop                         #  26    0x126808  1      OPC=nop             
  nop                         #  27    0x126809  1      OPC=nop             
  nop                         #  28    0x12680a  1      OPC=nop             
  jne .L_126860               #  29    0x12680b  6      OPC=jne_label_1     
  nop                         #  30    0x126811  1      OPC=nop             
  nop                         #  31    0x126812  1      OPC=nop             
  nop                         #  32    0x126813  1      OPC=nop             
  nop                         #  33    0x126814  1      OPC=nop             
  nop                         #  34    0x126815  1      OPC=nop             
  nop                         #  35    0x126816  1      OPC=nop             
  nop                         #  36    0x126817  1      OPC=nop             
  nop                         #  37    0x126818  1      OPC=nop             
  nop                         #  38    0x126819  1      OPC=nop             
  nop                         #  39    0x12681a  1      OPC=nop             
  nop                         #  40    0x12681b  1      OPC=nop             
  nop                         #  41    0x12681c  1      OPC=nop             
  nop                         #  42    0x12681d  1      OPC=nop             
  nop                         #  43    0x12681e  1      OPC=nop             
  nop                         #  44    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  orl %esp, %ecx              #  45    0x126820  2      OPC=orl_r32_r32     
  movl %r8d, (%r15,%rcx,1)    #  46    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  47    0x126826  3      OPC=addl_r32_imm8   
  addl $0x4, %edx             #  48    0x126829  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  49    0x12682c  4      OPC=movl_r32_m32    
  movq %r8, %r9               #  50    0x126830  3      OPC=movq_r64_r64_1  
  leaq -0x1010101(%r8), %rsi  #  51    0x126833  7      OPC=leaq_r64_m32    
  notq %r9                    #  52    0x12683a  3      OPC=notq_r64        
  andl %esi, %r9d             #  53    0x12683d  3      OPC=andl_r32_r32_1  
  andl $0x80808080, %r9d      #  54    0x126840  7      OPC=andl_r32_imm32  
  je .L_126820                #  55    0x126847  6      OPC=je_label_1      
  nop                         #  56    0x12684d  1      OPC=nop             
  nop                         #  57    0x12684e  1      OPC=nop             
  nop                         #  58    0x12684f  1      OPC=nop             
  nop                         #  59    0x126850  1      OPC=nop             
  nop                         #  60    0x126851  1      OPC=nop             
  nop                         #  61    0x126852  1      OPC=nop             
  nop                         #  62    0x126853  1      OPC=nop             
  nop                         #  63    0x126854  1      OPC=nop             
  nop                         #  64    0x126855  1      OPC=nop             
  nop                         #  65    0x126856  1      OPC=nop             
  nop                         #  66    0x126857  1      OPC=nop             
  nop                         #  67    0x126858  1      OPC=nop             
  nop                         #  68    0x126859  1      OPC=nop             
  nop                         #  69    0x12685a  1      OPC=nop             
  nop                         #  70    0x12685b  1      OPC=nop             
  nop                         #  71    0x12685c  1      OPC=nop             
  nop                         #  72    0x12685d  1      OPC=nop             
  nop                         #  73    0x12685e  1      OPC=nop             
  nop                         #  74    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  orl %edx, %edx              #  75    0x126860  2      OPC=orl_r32_r32     
  movsbw (%r15,%rdx,1), %si   #  76    0x126862  6      OPC=movsbw_r16_m8   
  nop                         #  77    0x126868  1      OPC=nop             
  nop                         #  78    0x126869  1      OPC=nop             
  andl %ecx, %ecx             #  79    0x12686a  2      OPC=andl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  80    0x12686c  4      OPC=movb_m8_r8      
  addw $0x1, %dx              #  81    0x126870  4      OPC=addw_r16_imm8   
  addl $0x1, %ecx             #  82    0x126874  3      OPC=addl_r32_imm8   
  testb %al, %sil             #  83    0x126877  3      OPC=testb_r8_r8     
  jne .L_126860               #  84    0x12687a  6      OPC=jne_label_1     
  nop                         #  85    0x126880  1      OPC=nop             
  nop                         #  86    0x126881  1      OPC=nop             
  nop                         #  87    0x126882  1      OPC=nop             
  nop                         #  88    0x126883  1      OPC=nop             
  nop                         #  89    0x126884  1      OPC=nop             
  retq

.size strcpy, -.strcpy

