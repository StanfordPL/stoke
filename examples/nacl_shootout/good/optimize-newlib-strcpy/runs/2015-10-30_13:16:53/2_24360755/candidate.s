  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movq %rdi, %rcx                 #  1     0x1267e0  3      OPC=movq_r64_r64_1  
  nop                             #  2     0x1267e3  1      OPC=nop             
  nop                             #  3     0x1267e4  1      OPC=nop             
  nop                             #  4     0x1267e5  1      OPC=nop             
  nop                             #  5     0x1267e6  1      OPC=nop             
  nop                             #  6     0x1267e7  1      OPC=nop             
  nop                             #  7     0x1267e8  1      OPC=nop             
  movq %rsi, %rdx                 #  8     0x1267e9  3      OPC=movq_r64_r64    
  shlw $0x1, %di                  #  9     0x1267ec  3      OPC=shlw_r16_one    
  nop                             #  10    0x1267ef  1      OPC=nop             
  nop                             #  11    0x1267f0  1      OPC=nop             
  nop                             #  12    0x1267f1  1      OPC=nop             
  movl %ecx, %eax                 #  13    0x1267f2  2      OPC=movl_r32_r32    
  jne .L_126860                   #  14    0x1267f4  6      OPC=jne_label_1     
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
  nop                             #  26    0x126805  1      OPC=nop             
  nop                             #  27    0x126806  1      OPC=nop             
  nop                             #  28    0x126807  1      OPC=nop             
  jne .L_126860                   #  29    0x126808  6      OPC=jne_label_1     
  nop                             #  30    0x12680e  1      OPC=nop             
  nop                             #  31    0x12680f  1      OPC=nop             
  nop                             #  32    0x126810  1      OPC=nop             
  nop                             #  33    0x126811  1      OPC=nop             
  nop                             #  34    0x126812  1      OPC=nop             
  nop                             #  35    0x126813  1      OPC=nop             
  nop                             #  36    0x126814  1      OPC=nop             
  nop                             #  37    0x126815  1      OPC=nop             
  nop                             #  38    0x126816  1      OPC=nop             
  nop                             #  39    0x126817  1      OPC=nop             
  nop                             #  40    0x126818  1      OPC=nop             
  nop                             #  41    0x126819  1      OPC=nop             
  nop                             #  42    0x12681a  1      OPC=nop             
  nop                             #  43    0x12681b  1      OPC=nop             
  nop                             #  44    0x12681c  1      OPC=nop             
  nop                             #  45    0x12681d  1      OPC=nop             
  nop                             #  46    0x12681e  1      OPC=nop             
  nop                             #  47    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  nop                             #  48    0x126820  1      OPC=nop             
  nop                             #  49    0x126821  1      OPC=nop             
  nop                             #  50    0x126822  1      OPC=nop             
  andl $0x80, %edx                #  51    0x126823  3      OPC=andl_r32_imm8   
  nop                             #  52    0x126826  1      OPC=nop             
  movb %dh, %ah                   #  53    0x126827  2      OPC=movb_rh_rh      
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
  nop                             #  65    0x126834  1      OPC=nop             
  nop                             #  66    0x126835  1      OPC=nop             
  nop                             #  67    0x126836  1      OPC=nop             
  nop                             #  68    0x126837  1      OPC=nop             
  nop                             #  69    0x126838  1      OPC=nop             
  movb $0xfc, %dh                 #  70    0x126839  2      OPC=movb_rh_imm8    
  nop                             #  71    0x12683b  1      OPC=nop             
  subb %dh, %dh                   #  72    0x12683c  2      OPC=subb_rh_rh_1    
  nop                             #  73    0x12683e  1      OPC=nop             
  nop                             #  74    0x12683f  1      OPC=nop             
  nop                             #  75    0x126840  1      OPC=nop             
  je .L_126820                    #  76    0x126841  6      OPC=je_label_1      
  nop                             #  77    0x126847  1      OPC=nop             
  nop                             #  78    0x126848  1      OPC=nop             
  andq $0x20, %rdx                #  79    0x126849  4      OPC=andq_r64_imm8   
  nop                             #  80    0x12684d  1      OPC=nop             
  nop                             #  81    0x12684e  1      OPC=nop             
  nopl %eax                       #  82    0x12684f  3      OPC=nopl_r32        
  nop                             #  83    0x126852  1      OPC=nop             
  nop                             #  84    0x126853  1      OPC=nop             
  nop                             #  85    0x126854  1      OPC=nop             
  nop                             #  86    0x126855  1      OPC=nop             
  nop                             #  87    0x126856  1      OPC=nop             
  nop                             #  88    0x126857  1      OPC=nop             
  nop                             #  89    0x126858  1      OPC=nop             
  nopl %eax                       #  90    0x126859  3      OPC=nopl_r32        
  nop                             #  91    0x12685c  1      OPC=nop             
  nop                             #  92    0x12685d  1      OPC=nop             
  nop                             #  93    0x12685e  1      OPC=nop             
  nop                             #  94    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  95    0x126860  3      OPC=addl_r32_imm8   
  movzbl -0x1(%r15,%rdx,1), %esi  #  96    0x126863  6      OPC=movzbl_r32_m8   
  addl $0x1, %ecx                 #  97    0x126869  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  98    0x12686c  5      OPC=movb_m8_r8      
  negl %esi                       #  99    0x126871  2      OPC=negl_r32        
  jne .L_126860                   #  100   0x126873  6      OPC=jne_label_1     
  nop                             #  101   0x126879  1      OPC=nop             
  nop                             #  102   0x12687a  1      OPC=nop             
  nop                             #  103   0x12687b  1      OPC=nop             
  nop                             #  104   0x12687c  1      OPC=nop             
  nop                             #  105   0x12687d  1      OPC=nop             
  nop                             #  106   0x12687e  1      OPC=nop             
  nop                             #  107   0x12687f  1      OPC=nop             
  nop                             #  108   0x126880  1      OPC=nop             
  nop                             #  109   0x126881  1      OPC=nop             
  nop                             #  110   0x126882  1      OPC=nop             
  nop                             #  111   0x126883  1      OPC=nop             
  nop                             #  112   0x126884  1      OPC=nop             
  nop                             #  113   0x126885  1      OPC=nop             
  nop                             #  114   0x126886  1      OPC=nop             
  retq

.size strcpy, -.strcpy

