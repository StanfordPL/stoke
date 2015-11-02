  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movq %rsi, %rdx                 #  1     0x1267e0  3      OPC=movq_r64_r64_1  
  andb %dh, %dh                   #  2     0x1267e3  2      OPC=andb_rh_rh      
  nop                             #  3     0x1267e5  1      OPC=nop             
  nop                             #  4     0x1267e6  1      OPC=nop             
  nop                             #  5     0x1267e7  1      OPC=nop             
  nop                             #  6     0x1267e8  1      OPC=nop             
  movq %rdi, %rcx                 #  7     0x1267e9  3      OPC=movq_r64_r64_1  
  jne .L_126860                   #  8     0x1267ec  6      OPC=jne_label_1     
  notb %ch                        #  9     0x1267f2  2      OPC=notb_rh         
  nop                             #  10    0x1267f4  1      OPC=nop             
  nop                             #  11    0x1267f5  1      OPC=nop             
  nop                             #  12    0x1267f6  1      OPC=nop             
  nop                             #  13    0x1267f7  1      OPC=nop             
  sarl $0x1, %edx                 #  14    0x1267f8  2      OPC=sarl_r32_one    
  nop                             #  15    0x1267fa  1      OPC=nop             
  nop                             #  16    0x1267fb  1      OPC=nop             
  nop                             #  17    0x1267fc  1      OPC=nop             
  nop                             #  18    0x1267fd  1      OPC=nop             
  nop                             #  19    0x1267fe  1      OPC=nop             
  nop                             #  20    0x1267ff  1      OPC=nop             
  nop                             #  21    0x126800  1      OPC=nop             
  nop                             #  22    0x126801  1      OPC=nop             
  nop                             #  23    0x126802  1      OPC=nop             
  nop                             #  24    0x126803  1      OPC=nop             
  nop                             #  25    0x126804  1      OPC=nop             
  jne .L_126860                   #  26    0x126805  6      OPC=jne_label_1     
  nop                             #  27    0x12680b  1      OPC=nop             
  nop                             #  28    0x12680c  1      OPC=nop             
  nop                             #  29    0x12680d  1      OPC=nop             
  nop                             #  30    0x12680e  1      OPC=nop             
  nop                             #  31    0x12680f  1      OPC=nop             
  nop                             #  32    0x126810  1      OPC=nop             
  shrb $0x1, %dh                  #  33    0x126811  2      OPC=shrb_rh_one     
  nop                             #  34    0x126813  1      OPC=nop             
  nop                             #  35    0x126814  1      OPC=nop             
  nop                             #  36    0x126815  1      OPC=nop             
  subb $0x1, %ch                  #  37    0x126816  3      OPC=subb_rh_imm8    
  nop                             #  38    0x126819  1      OPC=nop             
  nop                             #  39    0x12681a  1      OPC=nop             
  nop                             #  40    0x12681b  1      OPC=nop             
  nop                             #  41    0x12681c  1      OPC=nop             
  nop                             #  42    0x12681d  1      OPC=nop             
  nop                             #  43    0x12681e  1      OPC=nop             
  nop                             #  44    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  nop                             #  45    0x126820  1      OPC=nop             
  nop                             #  46    0x126821  1      OPC=nop             
  nop                             #  47    0x126822  1      OPC=nop             
  nop                             #  48    0x126823  1      OPC=nop             
  nop                             #  49    0x126824  1      OPC=nop             
  nop                             #  50    0x126825  1      OPC=nop             
  nop                             #  51    0x126826  1      OPC=nop             
  nop                             #  52    0x126827  1      OPC=nop             
  nop                             #  53    0x126828  1      OPC=nop             
  nop                             #  54    0x126829  1      OPC=nop             
  nop                             #  55    0x12682a  1      OPC=nop             
  nop                             #  56    0x12682b  1      OPC=nop             
  nop                             #  57    0x12682c  1      OPC=nop             
  nop                             #  58    0x12682d  1      OPC=nop             
  nop                             #  59    0x12682e  1      OPC=nop             
  nop                             #  60    0x12682f  1      OPC=nop             
  nop                             #  61    0x126830  1      OPC=nop             
  nop                             #  62    0x126831  1      OPC=nop             
  nop                             #  63    0x126832  1      OPC=nop             
  nop                             #  64    0x126833  1      OPC=nop             
  negb %ch                        #  65    0x126834  2      OPC=negb_rh         
  nop                             #  66    0x126836  1      OPC=nop             
  nop                             #  67    0x126837  1      OPC=nop             
  nop                             #  68    0x126838  1      OPC=nop             
  nop                             #  69    0x126839  1      OPC=nop             
  nop                             #  70    0x12683a  1      OPC=nop             
  nop                             #  71    0x12683b  1      OPC=nop             
  nop                             #  72    0x12683c  1      OPC=nop             
  nop                             #  73    0x12683d  1      OPC=nop             
  nop                             #  74    0x12683e  1      OPC=nop             
  nop                             #  75    0x12683f  1      OPC=nop             
  je .L_126820                    #  76    0x126840  6      OPC=je_label_1      
  nop                             #  77    0x126846  1      OPC=nop             
  nop                             #  78    0x126847  1      OPC=nop             
  andb $0x10, %ch                 #  79    0x126848  3      OPC=andb_rh_imm8    
  nop                             #  80    0x12684b  1      OPC=nop             
  nop                             #  81    0x12684c  1      OPC=nop             
  nop                             #  82    0x12684d  1      OPC=nop             
  nop                             #  83    0x12684e  1      OPC=nop             
  nop                             #  84    0x12684f  1      OPC=nop             
  nop                             #  85    0x126850  1      OPC=nop             
  nop                             #  86    0x126851  1      OPC=nop             
  nopl %eax                       #  87    0x126852  3      OPC=nopl_r32        
  nop                             #  88    0x126855  1      OPC=nop             
  nop                             #  89    0x126856  1      OPC=nop             
  nop                             #  90    0x126857  1      OPC=nop             
  nopl %eax                       #  91    0x126858  3      OPC=nopl_r32        
  xorw $0x20, %cx                 #  92    0x12685b  5      OPC=xorw_r16_imm16  
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  93    0x126860  3      OPC=addl_r32_imm8   
  movsbq -0x1(%r15,%rdx,1), %rsi  #  94    0x126863  6      OPC=movsbq_r64_m8   
  addl $0x1, %ecx                 #  95    0x126869  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  96    0x12686c  5      OPC=movb_m8_r8      
  addb %bpl, %sil                 #  97    0x126871  3      OPC=addb_r8_r8_1    
  jne .L_126860                   #  98    0x126874  6      OPC=jne_label_1     
  movq %rdi, %rax                 #  99    0x12687a  3      OPC=movq_r64_r64_1  
  nop                             #  100   0x12687d  1      OPC=nop             
  nop                             #  101   0x12687e  1      OPC=nop             
  nop                             #  102   0x12687f  1      OPC=nop             
  nop                             #  103   0x126880  1      OPC=nop             
  nop                             #  104   0x126881  1      OPC=nop             
  nop                             #  105   0x126882  1      OPC=nop             
  nop                             #  106   0x126883  1      OPC=nop             
  nop                             #  107   0x126884  1      OPC=nop             
  retq

.size strcpy, -.strcpy

