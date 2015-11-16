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
  movq %rsi, %rdx               #  6     0x1267e5  3      OPC=movq_r64_r64   
  movl %edi, %eax               #  7     0x1267e8  2      OPC=movl_r32_r32   
  movq %rdi, %rcx               #  8     0x1267ea  3      OPC=movq_r64_r64   
  andl $0x10, %esi              #  9     0x1267ed  3      OPC=andl_r32_imm8  
  jne .L_126860                 #  10    0x1267f0  6      OPC=jne_label_1    
  xorl $0xfb, %esi              #  11    0x1267f6  3      OPC=xorl_r32_imm8  
  orb 0x4(%r15,%rsi,1), %sil    #  12    0x1267f9  5      OPC=orb_r8_m8      
  nop                           #  13    0x1267fe  1      OPC=nop            
  nop                           #  14    0x1267ff  1      OPC=nop            
  nop                           #  15    0x126800  1      OPC=nop            
  nop                           #  16    0x126801  1      OPC=nop            
  nop                           #  17    0x126802  1      OPC=nop            
  nop                           #  18    0x126803  1      OPC=nop            
  nop                           #  19    0x126804  1      OPC=nop            
  nop                           #  20    0x126805  1      OPC=nop            
  nop                           #  21    0x126806  1      OPC=nop            
  nop                           #  22    0x126807  1      OPC=nop            
  nop                           #  23    0x126808  1      OPC=nop            
  nop                           #  24    0x126809  1      OPC=nop            
  nop                           #  25    0x12680a  1      OPC=nop            
  nop                           #  26    0x12680b  1      OPC=nop            
  nop                           #  27    0x12680c  1      OPC=nop            
  nop                           #  28    0x12680d  1      OPC=nop            
  nop                           #  29    0x12680e  1      OPC=nop            
  nop                           #  30    0x12680f  1      OPC=nop            
  nop                           #  31    0x126810  1      OPC=nop            
  nop                           #  32    0x126811  1      OPC=nop            
  nop                           #  33    0x126812  1      OPC=nop            
  nop                           #  34    0x126813  1      OPC=nop            
  nop                           #  35    0x126814  1      OPC=nop            
  nop                           #  36    0x126815  1      OPC=nop            
  nop                           #  37    0x126816  1      OPC=nop            
  nop                           #  38    0x126817  1      OPC=nop            
  nop                           #  39    0x126818  1      OPC=nop            
  nop                           #  40    0x126819  1      OPC=nop            
  jne .L_126860                 #  41    0x12681a  6      OPC=jne_label_1    
.L_126820:                      #        0x126820  0      OPC=<label>        
  nop                           #  42    0x126820  1      OPC=nop            
  nop                           #  43    0x126821  1      OPC=nop            
  nop                           #  44    0x126822  1      OPC=nop            
  nop                           #  45    0x126823  1      OPC=nop            
  nop                           #  46    0x126824  1      OPC=nop            
  nop                           #  47    0x126825  1      OPC=nop            
  nop                           #  48    0x126826  1      OPC=nop            
  sall %cl, %eax                #  49    0x126827  2      OPC=sall_r32_cl    
  nop                           #  50    0x126829  1      OPC=nop            
  nop                           #  51    0x12682a  1      OPC=nop            
  nop                           #  52    0x12682b  1      OPC=nop            
  nop                           #  53    0x12682c  1      OPC=nop            
  nop                           #  54    0x12682d  1      OPC=nop            
  nop                           #  55    0x12682e  1      OPC=nop            
  nop                           #  56    0x12682f  1      OPC=nop            
  nop                           #  57    0x126830  1      OPC=nop            
  nop                           #  58    0x126831  1      OPC=nop            
  nop                           #  59    0x126832  1      OPC=nop            
  nop                           #  60    0x126833  1      OPC=nop            
  nop                           #  61    0x126834  1      OPC=nop            
  nop                           #  62    0x126835  1      OPC=nop            
  nop                           #  63    0x126836  1      OPC=nop            
  je .L_126820                  #  64    0x126837  6      OPC=je_label_1     
  nop                           #  65    0x12683d  1      OPC=nop            
  nop                           #  66    0x12683e  1      OPC=nop            
  nop                           #  67    0x12683f  1      OPC=nop            
  nop                           #  68    0x126840  1      OPC=nop            
  nop                           #  69    0x126841  1      OPC=nop            
  nop                           #  70    0x126842  1      OPC=nop            
  nop                           #  71    0x126843  1      OPC=nop            
  nop                           #  72    0x126844  1      OPC=nop            
  subb %sil, %dl                #  73    0x126845  3      OPC=subb_r8_r8     
  nop                           #  74    0x126848  1      OPC=nop            
  nop                           #  75    0x126849  1      OPC=nop            
  nop                           #  76    0x12684a  1      OPC=nop            
  nopl %eax                     #  77    0x12684b  3      OPC=nopl_r32       
  nop                           #  78    0x12684e  1      OPC=nop            
  nop                           #  79    0x12684f  1      OPC=nop            
  nop                           #  80    0x126850  1      OPC=nop            
  nop                           #  81    0x126851  1      OPC=nop            
  nop                           #  82    0x126852  1      OPC=nop            
  nop                           #  83    0x126853  1      OPC=nop            
  nop                           #  84    0x126854  1      OPC=nop            
  nop                           #  85    0x126855  1      OPC=nop            
  nop                           #  86    0x126856  1      OPC=nop            
  nop                           #  87    0x126857  1      OPC=nop            
  nop                           #  88    0x126858  1      OPC=nop            
  nop                           #  89    0x126859  1      OPC=nop            
  nop                           #  90    0x12685a  1      OPC=nop            
  nop                           #  91    0x12685b  1      OPC=nop            
  nop                           #  92    0x12685c  1      OPC=nop            
  nop                           #  93    0x12685d  1      OPC=nop            
  nop                           #  94    0x12685e  1      OPC=nop            
  nop                           #  95    0x12685f  1      OPC=nop            
.L_126860:                      #        0x126860  0      OPC=<label>        
  subl %ebp, %edx               #  96    0x126860  2      OPC=subl_r32_r32   
  movsbq (%r15,%rdx,1), %rsi    #  97    0x126862  5      OPC=movsbq_r64_m8  
  nop                           #  98    0x126867  1      OPC=nop            
  nop                           #  99    0x126868  1      OPC=nop            
  addb $0x1, %dl                #  100   0x126869  3      OPC=addb_r8_imm8   
  nop                           #  101   0x12686c  1      OPC=nop            
  addl $0x1, %ecx               #  102   0x12686d  3      OPC=addl_r32_imm8  
  movb %sil, -0x1(%r15,%rcx,1)  #  103   0x126870  5      OPC=movb_m8_r8     
  testb %sil, %cl               #  104   0x126875  3      OPC=testb_r8_r8    
  nop                           #  105   0x126878  1      OPC=nop            
  nop                           #  106   0x126879  1      OPC=nop            
  nop                           #  107   0x12687a  1      OPC=nop            
  nop                           #  108   0x12687b  1      OPC=nop            
  sarl $0xe0, %eax              #  109   0x12687c  3      OPC=sarl_r32_imm8  
  nop                           #  110   0x12687f  1      OPC=nop            
  nop                           #  111   0x126880  1      OPC=nop            
  nop                           #  112   0x126881  1      OPC=nop            
  nop                           #  113   0x126882  1      OPC=nop            
  jne .L_126860                 #  114   0x126883  6      OPC=jne_label_1    
  nop                           #  115   0x126889  1      OPC=nop            
  nopl %eax                     #  116   0x12688a  3      OPC=nopl_r32       
  nop                           #  117   0x12688d  1      OPC=nop            
  nop                           #  118   0x12688e  1      OPC=nop            
  nop                           #  119   0x12688f  1      OPC=nop            
  nop                           #  120   0x126890  1      OPC=nop            
  retq

.size strcpy, -.strcpy

