  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  nop                             #  1     0x1267e0  1      OPC=nop             
  nop                             #  2     0x1267e1  1      OPC=nop             
  nop                             #  3     0x1267e2  1      OPC=nop             
  nop                             #  4     0x1267e3  1      OPC=nop             
  nop                             #  5     0x1267e4  1      OPC=nop             
  nop                             #  6     0x1267e5  1      OPC=nop             
  nop                             #  7     0x1267e6  1      OPC=nop             
  nop                             #  8     0x1267e7  1      OPC=nop             
  nop                             #  9     0x1267e8  1      OPC=nop             
  nop                             #  10    0x1267e9  1      OPC=nop             
  movq %rsi, %rdx                 #  11    0x1267ea  3      OPC=movq_r64_r64    
  movl %edi, %eax                 #  12    0x1267ed  2      OPC=movl_r32_r32    
  nop                             #  13    0x1267ef  1      OPC=nop             
  movq %rax, %rcx                 #  14    0x1267f0  3      OPC=movq_r64_r64    
  nop                             #  15    0x1267f3  1      OPC=nop             
  nop                             #  16    0x1267f4  1      OPC=nop             
  nop                             #  17    0x1267f5  1      OPC=nop             
  xorl %r15d, %edi                #  18    0x1267f6  3      OPC=xorl_r32_r32    
  jne .L_126860                   #  19    0x1267f9  6      OPC=jne_label_1     
  nop                             #  20    0x1267ff  1      OPC=nop             
  shrb %cl, %ah                   #  21    0x126800  2      OPC=shrb_rh_cl      
  andb $0xc0, %al                 #  22    0x126802  2      OPC=andb_al_imm8    
  jne .L_126860                   #  23    0x126804  6      OPC=jne_label_1     
  nop                             #  24    0x12680a  1      OPC=nop             
  nop                             #  25    0x12680b  1      OPC=nop             
  nop                             #  26    0x12680c  1      OPC=nop             
  nop                             #  27    0x12680d  1      OPC=nop             
  nop                             #  28    0x12680e  1      OPC=nop             
  nop                             #  29    0x12680f  1      OPC=nop             
  nop                             #  30    0x126810  1      OPC=nop             
  nop                             #  31    0x126811  1      OPC=nop             
  nop                             #  32    0x126812  1      OPC=nop             
  nop                             #  33    0x126813  1      OPC=nop             
  nop                             #  34    0x126814  1      OPC=nop             
  nop                             #  35    0x126815  1      OPC=nop             
  nop                             #  36    0x126816  1      OPC=nop             
  nop                             #  37    0x126817  1      OPC=nop             
  nop                             #  38    0x126818  1      OPC=nop             
  nop                             #  39    0x126819  1      OPC=nop             
  nop                             #  40    0x12681a  1      OPC=nop             
  sarb $0x80, %dh                 #  41    0x12681b  3      OPC=sarb_rh_imm8    
  nop                             #  42    0x12681e  1      OPC=nop             
  nop                             #  43    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  nop                             #  44    0x126820  1      OPC=nop             
  nop                             #  45    0x126821  1      OPC=nop             
  nop                             #  46    0x126822  1      OPC=nop             
  nop                             #  47    0x126823  1      OPC=nop             
  nop                             #  48    0x126824  1      OPC=nop             
  nop                             #  49    0x126825  1      OPC=nop             
  nopl %eax                       #  50    0x126826  3      OPC=nopl_r32        
  nop                             #  51    0x126829  1      OPC=nop             
  nop                             #  52    0x12682a  1      OPC=nop             
  nop                             #  53    0x12682b  1      OPC=nop             
  nop                             #  54    0x12682c  1      OPC=nop             
  nop                             #  55    0x12682d  1      OPC=nop             
  nop                             #  56    0x12682e  1      OPC=nop             
  nop                             #  57    0x12682f  1      OPC=nop             
  shrb $0x1, %ch                  #  58    0x126830  2      OPC=shrb_rh_one     
  nop                             #  59    0x126832  1      OPC=nop             
  nop                             #  60    0x126833  1      OPC=nop             
  nop                             #  61    0x126834  1      OPC=nop             
  nop                             #  62    0x126835  1      OPC=nop             
  nop                             #  63    0x126836  1      OPC=nop             
  nop                             #  64    0x126837  1      OPC=nop             
  nop                             #  65    0x126838  1      OPC=nop             
  nop                             #  66    0x126839  1      OPC=nop             
  nop                             #  67    0x12683a  1      OPC=nop             
  nop                             #  68    0x12683b  1      OPC=nop             
  nop                             #  69    0x12683c  1      OPC=nop             
  nop                             #  70    0x12683d  1      OPC=nop             
  nop                             #  71    0x12683e  1      OPC=nop             
  nop                             #  72    0x12683f  1      OPC=nop             
  nop                             #  73    0x126840  1      OPC=nop             
  nop                             #  74    0x126841  1      OPC=nop             
  incl %ecx                       #  75    0x126842  2      OPC=incl_r32        
  nop                             #  76    0x126844  1      OPC=nop             
  je .L_126820                    #  77    0x126845  6      OPC=je_label_1      
  nopl %eax                       #  78    0x12684b  3      OPC=nopl_r32        
  nop                             #  79    0x12684e  1      OPC=nop             
  nop                             #  80    0x12684f  1      OPC=nop             
  nop                             #  81    0x126850  1      OPC=nop             
  nop                             #  82    0x126851  1      OPC=nop             
  nop                             #  83    0x126852  1      OPC=nop             
  nop                             #  84    0x126853  1      OPC=nop             
  nop                             #  85    0x126854  1      OPC=nop             
  nop                             #  86    0x126855  1      OPC=nop             
  nop                             #  87    0x126856  1      OPC=nop             
  salb $0x2, %dh                  #  88    0x126857  3      OPC=salb_rh_imm8    
  nop                             #  89    0x12685a  1      OPC=nop             
  nop                             #  90    0x12685b  1      OPC=nop             
  nop                             #  91    0x12685c  1      OPC=nop             
  nop                             #  92    0x12685d  1      OPC=nop             
  nop                             #  93    0x12685e  1      OPC=nop             
  nop                             #  94    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  95    0x126860  6      OPC=addl_r32_imm32  
  movzbl -0x1(%r15,%rdx,1), %esi  #  96    0x126866  6      OPC=movzbl_r32_m8   
  addl $0x1, %ecx                 #  97    0x12686c  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)    #  98    0x126872  5      OPC=movb_m8_r8      
  testb %sil, %sil                #  99    0x126877  3      OPC=testb_r8_r8     
  jne .L_126860                   #  100   0x12687a  6      OPC=jne_label_1     
  nop                             #  101   0x126880  1      OPC=nop             
  nop                             #  102   0x126881  1      OPC=nop             
  nop                             #  103   0x126882  1      OPC=nop             
  nop                             #  104   0x126883  1      OPC=nop             
  nop                             #  105   0x126884  1      OPC=nop             
  nop                             #  106   0x126885  1      OPC=nop             
  nop                             #  107   0x126886  1      OPC=nop             
  nop                             #  108   0x126887  1      OPC=nop             
  nop                             #  109   0x126888  1      OPC=nop             
  nop                             #  110   0x126889  1      OPC=nop             
  nop                             #  111   0x12688a  1      OPC=nop             
  nop                             #  112   0x12688b  1      OPC=nop             
  nop                             #  113   0x12688c  1      OPC=nop             
  nop                             #  114   0x12688d  1      OPC=nop             
  retq

.size strcpy, -.strcpy

