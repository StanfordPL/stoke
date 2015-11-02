  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %edi, %ecx                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  movq %rcx, %r9                  #  2     0x1267e2  3      OPC=movq_r64_r64    
  movl %edi, %eax                 #  3     0x1267e5  2      OPC=movl_r32_r32    
  nop                             #  4     0x1267e7  1      OPC=nop             
  movl %esi, %edi                 #  5     0x1267e8  2      OPC=movl_r32_r32    
  movq %rdi, %rdx                 #  6     0x1267ea  3      OPC=movq_r64_r64_1  
  nop                             #  7     0x1267ed  1      OPC=nop             
  nop                             #  8     0x1267ee  1      OPC=nop             
  nop                             #  9     0x1267ef  1      OPC=nop             
  nop                             #  10    0x1267f0  1      OPC=nop             
  orl %r9d, %edi                  #  11    0x1267f1  3      OPC=orl_r32_r32     
  andl $0x3, %edi                 #  12    0x1267f4  3      OPC=andl_r32_imm8   
  jne .L_126860                   #  13    0x1267f7  6      OPC=jne_label_1     
  nop                             #  14    0x1267fd  1      OPC=nop             
  nop                             #  15    0x1267fe  1      OPC=nop             
  nop                             #  16    0x1267ff  1      OPC=nop             
  movl %eax, %ebx                 #  17    0x126800  2      OPC=movl_r32_r32_1  
  jne .L_126860                   #  18    0x126802  6      OPC=jne_label_1     
  nop                             #  19    0x126808  1      OPC=nop             
  nop                             #  20    0x126809  1      OPC=nop             
  nop                             #  21    0x12680a  1      OPC=nop             
  nop                             #  22    0x12680b  1      OPC=nop             
  nop                             #  23    0x12680c  1      OPC=nop             
  nop                             #  24    0x12680d  1      OPC=nop             
  nop                             #  25    0x12680e  1      OPC=nop             
  nop                             #  26    0x12680f  1      OPC=nop             
  nop                             #  27    0x126810  1      OPC=nop             
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
  nopl %eax                       #  38    0x12681b  3      OPC=nopl_r32        
  nop                             #  39    0x12681e  1      OPC=nop             
  nop                             #  40    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  nop                             #  41    0x126820  1      OPC=nop             
  nop                             #  42    0x126821  1      OPC=nop             
  nop                             #  43    0x126822  1      OPC=nop             
  nop                             #  44    0x126823  1      OPC=nop             
  nop                             #  45    0x126824  1      OPC=nop             
  nop                             #  46    0x126825  1      OPC=nop             
  nop                             #  47    0x126826  1      OPC=nop             
  nop                             #  48    0x126827  1      OPC=nop             
  nopl %eax                       #  49    0x126828  3      OPC=nopl_r32        
  nop                             #  50    0x12682b  1      OPC=nop             
  nop                             #  51    0x12682c  1      OPC=nop             
  nop                             #  52    0x12682d  1      OPC=nop             
  nop                             #  53    0x12682e  1      OPC=nop             
  subb %dl, %bh                   #  54    0x12682f  2      OPC=subb_rh_r8_1    
  nop                             #  55    0x126831  1      OPC=nop             
  nop                             #  56    0x126832  1      OPC=nop             
  nop                             #  57    0x126833  1      OPC=nop             
  nop                             #  58    0x126834  1      OPC=nop             
  nop                             #  59    0x126835  1      OPC=nop             
  nop                             #  60    0x126836  1      OPC=nop             
  nop                             #  61    0x126837  1      OPC=nop             
  nop                             #  62    0x126838  1      OPC=nop             
  nop                             #  63    0x126839  1      OPC=nop             
  nop                             #  64    0x12683a  1      OPC=nop             
  nop                             #  65    0x12683b  1      OPC=nop             
  nop                             #  66    0x12683c  1      OPC=nop             
  nop                             #  67    0x12683d  1      OPC=nop             
  nop                             #  68    0x12683e  1      OPC=nop             
  nop                             #  69    0x12683f  1      OPC=nop             
  nop                             #  70    0x126840  1      OPC=nop             
  nop                             #  71    0x126841  1      OPC=nop             
  nop                             #  72    0x126842  1      OPC=nop             
  nop                             #  73    0x126843  1      OPC=nop             
  nop                             #  74    0x126844  1      OPC=nop             
  nop                             #  75    0x126845  1      OPC=nop             
  nop                             #  76    0x126846  1      OPC=nop             
  nop                             #  77    0x126847  1      OPC=nop             
  nop                             #  78    0x126848  1      OPC=nop             
  nop                             #  79    0x126849  1      OPC=nop             
  je .L_126820                    #  80    0x12684a  6      OPC=je_label_1      
  nop                             #  81    0x126850  1      OPC=nop             
  nop                             #  82    0x126851  1      OPC=nop             
  nop                             #  83    0x126852  1      OPC=nop             
  nop                             #  84    0x126853  1      OPC=nop             
  nop                             #  85    0x126854  1      OPC=nop             
  nop                             #  86    0x126855  1      OPC=nop             
  addl $0xfffffff8, %edx          #  87    0x126856  6      OPC=addl_r32_imm32  
  nop                             #  88    0x12685c  1      OPC=nop             
  nop                             #  89    0x12685d  1      OPC=nop             
  nop                             #  90    0x12685e  1      OPC=nop             
  nop                             #  91    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  92    0x126860  3      OPC=addl_r32_imm8   
  movzbq -0x1(%r15,%rdx,1), %rsi  #  93    0x126863  6      OPC=movzbq_r64_m8   
  addl $0x1, %ecx                 #  94    0x126869  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  95    0x12686c  5      OPC=movb_m8_r8      
  testb %sil, %sil                #  96    0x126871  3      OPC=testb_r8_r8     
  jne .L_126860                   #  97    0x126874  6      OPC=jne_label_1     
  nop                             #  98    0x12687a  1      OPC=nop             
  nop                             #  99    0x12687b  1      OPC=nop             
  nop                             #  100   0x12687c  1      OPC=nop             
  nop                             #  101   0x12687d  1      OPC=nop             
  nop                             #  102   0x12687e  1      OPC=nop             
  nop                             #  103   0x12687f  1      OPC=nop             
  nop                             #  104   0x126880  1      OPC=nop             
  nop                             #  105   0x126881  1      OPC=nop             
  nop                             #  106   0x126882  1      OPC=nop             
  nop                             #  107   0x126883  1      OPC=nop             
  nop                             #  108   0x126884  1      OPC=nop             
  nop                             #  109   0x126885  1      OPC=nop             
  nop                             #  110   0x126886  1      OPC=nop             
  nop                             #  111   0x126887  1      OPC=nop             
  nop                             #  112   0x126888  1      OPC=nop             
  nop                             #  113   0x126889  1      OPC=nop             
  nop                             #  114   0x12688a  1      OPC=nop             
  nop                             #  115   0x12688b  1      OPC=nop             
  nop                             #  116   0x12688c  1      OPC=nop             
  nop                             #  117   0x12688d  1      OPC=nop             
  nop                             #  118   0x12688e  1      OPC=nop             
  nop                             #  119   0x12688f  1      OPC=nop             
  nop                             #  120   0x126890  1      OPC=nop             
  nop                             #  121   0x126891  1      OPC=nop             
  nop                             #  122   0x126892  1      OPC=nop             
  retq

.size strcpy, -.strcpy

