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
  movl %edi, %ecx             #  5     0x1267e4  2      OPC=movl_r32_r32_1  
  nop                         #  6     0x1267e6  1      OPC=nop             
  nop                         #  7     0x1267e7  1      OPC=nop             
  nop                         #  8     0x1267e8  1      OPC=nop             
  andl $0x2, %edi             #  9     0x1267e9  3      OPC=andl_r32_imm8   
  movl %ecx, %eax             #  10    0x1267ec  2      OPC=movl_r32_r32_1  
  nop                         #  11    0x1267ee  1      OPC=nop             
  nop                         #  12    0x1267ef  1      OPC=nop             
  movl %esi, %edx             #  13    0x1267f0  2      OPC=movl_r32_r32_1  
  nop                         #  14    0x1267f2  1      OPC=nop             
  nop                         #  15    0x1267f3  1      OPC=nop             
  nop                         #  16    0x1267f4  1      OPC=nop             
  nop                         #  17    0x1267f5  1      OPC=nop             
  jne .L_126860               #  18    0x1267f6  6      OPC=jne_label_1     
  nop                         #  19    0x1267fc  1      OPC=nop             
  nop                         #  20    0x1267fd  1      OPC=nop             
  nop                         #  21    0x1267fe  1      OPC=nop             
  nop                         #  22    0x1267ff  1      OPC=nop             
  nop                         #  23    0x126800  1      OPC=nop             
  nop                         #  24    0x126801  1      OPC=nop             
  nop                         #  25    0x126802  1      OPC=nop             
  nop                         #  26    0x126803  1      OPC=nop             
  nop                         #  27    0x126804  1      OPC=nop             
  nop                         #  28    0x126805  1      OPC=nop             
  nop                         #  29    0x126806  1      OPC=nop             
  nop                         #  30    0x126807  1      OPC=nop             
  nop                         #  31    0x126808  1      OPC=nop             
  nop                         #  32    0x126809  1      OPC=nop             
  nop                         #  33    0x12680a  1      OPC=nop             
  nop                         #  34    0x12680b  1      OPC=nop             
  nop                         #  35    0x12680c  1      OPC=nop             
  movl %edx, %esi             #  36    0x12680d  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d    #  37    0x12680f  4      OPC=movl_r32_m32    
  nop                         #  38    0x126813  1      OPC=nop             
  nop                         #  39    0x126814  1      OPC=nop             
  nop                         #  40    0x126815  1      OPC=nop             
  nop                         #  41    0x126816  1      OPC=nop             
  jne .L_126860               #  42    0x126817  6      OPC=jne_label_1     
  nop                         #  43    0x12681d  1      OPC=nop             
  nop                         #  44    0x12681e  1      OPC=nop             
  nop                         #  45    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  movl %ecx, %ecx             #  46    0x126820  2      OPC=movl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)    #  47    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  48    0x126826  3      OPC=addl_r32_imm8   
  nop                         #  49    0x126829  1      OPC=nop             
  nop                         #  50    0x12682a  1      OPC=nop             
  addl $0x4, %edx             #  51    0x12682b  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  52    0x12682e  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %r9   #  53    0x126832  7      OPC=leaq_r64_m64    
  nop                         #  54    0x126839  1      OPC=nop             
  nop                         #  55    0x12683a  1      OPC=nop             
  nop                         #  56    0x12683b  1      OPC=nop             
  nop                         #  57    0x12683c  1      OPC=nop             
  nop                         #  58    0x12683d  1      OPC=nop             
  nop                         #  59    0x12683e  1      OPC=nop             
  nop                         #  60    0x12683f  1      OPC=nop             
  nop                         #  61    0x126840  1      OPC=nop             
  nop                         #  62    0x126841  1      OPC=nop             
  nop                         #  63    0x126842  1      OPC=nop             
  nop                         #  64    0x126843  1      OPC=nop             
  nop                         #  65    0x126844  1      OPC=nop             
  nop                         #  66    0x126845  1      OPC=nop             
  nop                         #  67    0x126846  1      OPC=nop             
  nop                         #  68    0x126847  1      OPC=nop             
  andq %rsi, %r9              #  69    0x126848  3      OPC=andq_r64_r64    
  nop                         #  70    0x12684b  1      OPC=nop             
  je .L_126820                #  71    0x12684c  6      OPC=je_label_1      
  nop                         #  72    0x126852  1      OPC=nop             
  nop                         #  73    0x126853  1      OPC=nop             
  nop                         #  74    0x126854  1      OPC=nop             
  nop                         #  75    0x126855  1      OPC=nop             
  nop                         #  76    0x126856  1      OPC=nop             
  nop                         #  77    0x126857  1      OPC=nop             
  nop                         #  78    0x126858  1      OPC=nop             
  nop                         #  79    0x126859  1      OPC=nop             
  nop                         #  80    0x12685a  1      OPC=nop             
  nop                         #  81    0x12685b  1      OPC=nop             
  nop                         #  82    0x12685c  1      OPC=nop             
  nop                         #  83    0x12685d  1      OPC=nop             
  nop                         #  84    0x12685e  1      OPC=nop             
  nop                         #  85    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  orl %edi, %edx              #  86    0x126860  2      OPC=orl_r32_r32     
  movsbq (%r15,%rdx,1), %rsi  #  87    0x126862  5      OPC=movsbq_r64_m8   
  nop                         #  88    0x126867  1      OPC=nop             
  nop                         #  89    0x126868  1      OPC=nop             
  movl %ecx, %ecx             #  90    0x126869  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  91    0x12686b  4      OPC=movb_m8_r8      
  nop                         #  92    0x12686f  1      OPC=nop             
  nop                         #  93    0x126870  1      OPC=nop             
  nop                         #  94    0x126871  1      OPC=nop             
  nop                         #  95    0x126872  1      OPC=nop             
  nop                         #  96    0x126873  1      OPC=nop             
  nop                         #  97    0x126874  1      OPC=nop             
  nop                         #  98    0x126875  1      OPC=nop             
  nop                         #  99    0x126876  1      OPC=nop             
  andl $0x6, %edi             #  100   0x126877  3      OPC=andl_r32_imm8   
  jne .L_126860               #  101   0x12687a  6      OPC=jne_label_1     
  nop                         #  102   0x126880  1      OPC=nop             
  nop                         #  103   0x126881  1      OPC=nop             
  nop                         #  104   0x126882  1      OPC=nop             
  nop                         #  105   0x126883  1      OPC=nop             
  nop                         #  106   0x126884  1      OPC=nop             
  nop                         #  107   0x126885  1      OPC=nop             
  nop                         #  108   0x126886  1      OPC=nop             
  nop                         #  109   0x126887  1      OPC=nop             
  nop                         #  110   0x126888  1      OPC=nop             
  nop                         #  111   0x126889  1      OPC=nop             
  retq
                                                                            
.size strcpy, .-strcpy
