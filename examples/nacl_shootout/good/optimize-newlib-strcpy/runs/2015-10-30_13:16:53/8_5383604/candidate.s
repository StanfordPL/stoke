  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movq %rsi, %rdx                 #  1     0x1267e0  3      OPC=movq_r64_r64_1  
  nop                             #  2     0x1267e3  1      OPC=nop             
  nop                             #  3     0x1267e4  1      OPC=nop             
  movl %edi, %eax                 #  4     0x1267e5  2      OPC=movl_r32_r32_1  
  andw $0xfe, %si                 #  5     0x1267e7  4      OPC=andw_r16_imm8   
  movq %rax, %rcx                 #  6     0x1267eb  3      OPC=movq_r64_r64    
  jne .L_126860                   #  7     0x1267ee  6      OPC=jne_label_1     
  nop                             #  8     0x1267f4  1      OPC=nop             
  notb %ch                        #  9     0x1267f5  2      OPC=notb_rh         
  nop                             #  10    0x1267f7  1      OPC=nop             
  nop                             #  11    0x1267f8  1      OPC=nop             
  nop                             #  12    0x1267f9  1      OPC=nop             
  nop                             #  13    0x1267fa  1      OPC=nop             
  nop                             #  14    0x1267fb  1      OPC=nop             
  addq $0x3, %rax                 #  15    0x1267fc  4      OPC=addq_r64_imm8   
  nop                             #  16    0x126800  1      OPC=nop             
  nop                             #  17    0x126801  1      OPC=nop             
  nop                             #  18    0x126802  1      OPC=nop             
  jne .L_126860                   #  19    0x126803  6      OPC=jne_label_1     
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
  xorb %cl, %dh                   #  36    0x126819  2      OPC=xorb_rh_r8      
  nop                             #  37    0x12681b  1      OPC=nop             
  nop                             #  38    0x12681c  1      OPC=nop             
  nop                             #  39    0x12681d  1      OPC=nop             
  nop                             #  40    0x12681e  1      OPC=nop             
  nop                             #  41    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  nop                             #  42    0x126820  1      OPC=nop             
  nop                             #  43    0x126821  1      OPC=nop             
  nop                             #  44    0x126822  1      OPC=nop             
  nop                             #  45    0x126823  1      OPC=nop             
  nop                             #  46    0x126824  1      OPC=nop             
  nop                             #  47    0x126825  1      OPC=nop             
  nop                             #  48    0x126826  1      OPC=nop             
  nop                             #  49    0x126827  1      OPC=nop             
  nop                             #  50    0x126828  1      OPC=nop             
  nop                             #  51    0x126829  1      OPC=nop             
  nop                             #  52    0x12682a  1      OPC=nop             
  nop                             #  53    0x12682b  1      OPC=nop             
  nop                             #  54    0x12682c  1      OPC=nop             
  nopl %eax                       #  55    0x12682d  3      OPC=nopl_r32        
  nop                             #  56    0x126830  1      OPC=nop             
  nop                             #  57    0x126831  1      OPC=nop             
  nop                             #  58    0x126832  1      OPC=nop             
  nop                             #  59    0x126833  1      OPC=nop             
  nop                             #  60    0x126834  1      OPC=nop             
  nop                             #  61    0x126835  1      OPC=nop             
  nop                             #  62    0x126836  1      OPC=nop             
  nop                             #  63    0x126837  1      OPC=nop             
  nop                             #  64    0x126838  1      OPC=nop             
  nop                             #  65    0x126839  1      OPC=nop             
  nop                             #  66    0x12683a  1      OPC=nop             
  shrb $0x1, %dh                  #  67    0x12683b  2      OPC=shrb_rh_one     
  nop                             #  68    0x12683d  1      OPC=nop             
  nop                             #  69    0x12683e  1      OPC=nop             
  nop                             #  70    0x12683f  1      OPC=nop             
  nop                             #  71    0x126840  1      OPC=nop             
  nop                             #  72    0x126841  1      OPC=nop             
  nop                             #  73    0x126842  1      OPC=nop             
  nop                             #  74    0x126843  1      OPC=nop             
  nop                             #  75    0x126844  1      OPC=nop             
  nop                             #  76    0x126845  1      OPC=nop             
  nop                             #  77    0x126846  1      OPC=nop             
  subb %dl, %cl                   #  78    0x126847  2      OPC=subb_r8_r8      
  nop                             #  79    0x126849  1      OPC=nop             
  nop                             #  80    0x12684a  1      OPC=nop             
  nop                             #  81    0x12684b  1      OPC=nop             
  nop                             #  82    0x12684c  1      OPC=nop             
  nop                             #  83    0x12684d  1      OPC=nop             
  nop                             #  84    0x12684e  1      OPC=nop             
  nop                             #  85    0x12684f  1      OPC=nop             
  je .L_126820                    #  86    0x126850  6      OPC=je_label_1      
  nop                             #  87    0x126856  1      OPC=nop             
  shlw $0x1, %dx                  #  88    0x126857  3      OPC=shlw_r16_one    
  nop                             #  89    0x12685a  1      OPC=nop             
  nop                             #  90    0x12685b  1      OPC=nop             
  nop                             #  91    0x12685c  1      OPC=nop             
  nop                             #  92    0x12685d  1      OPC=nop             
  nop                             #  93    0x12685e  1      OPC=nop             
  nop                             #  94    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  95    0x126860  3      OPC=addl_r32_imm8   
  movsbl -0x1(%r15,%rdx,1), %esi  #  96    0x126863  6      OPC=movsbl_r32_m8   
  incl %ecx                       #  97    0x126869  2      OPC=incl_r32        
  movb %sil, -0x1(%r15,%rcx,1)    #  98    0x12686b  5      OPC=movb_m8_r8      
  shlq $0x10, %rsi                #  99    0x126870  4      OPC=shlq_r64_imm8   
  jne .L_126860                   #  100   0x126874  6      OPC=jne_label_1     
  nop                             #  101   0x12687a  1      OPC=nop             
  nop                             #  102   0x12687b  1      OPC=nop             
  nop                             #  103   0x12687c  1      OPC=nop             
  nop                             #  104   0x12687d  1      OPC=nop             
  nop                             #  105   0x12687e  1      OPC=nop             
  nop                             #  106   0x12687f  1      OPC=nop             
  nop                             #  107   0x126880  1      OPC=nop             
  nop                             #  108   0x126881  1      OPC=nop             
  nop                             #  109   0x126882  1      OPC=nop             
  nop                             #  110   0x126883  1      OPC=nop             
  nop                             #  111   0x126884  1      OPC=nop             
  nop                             #  112   0x126885  1      OPC=nop             
  nop                             #  113   0x126886  1      OPC=nop             
  retq

.size strcpy, -.strcpy

