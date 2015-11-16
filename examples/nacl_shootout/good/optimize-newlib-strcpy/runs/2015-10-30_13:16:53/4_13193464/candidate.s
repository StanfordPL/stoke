  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strcpy:                         #        0x1267e0  0      OPC=<label>         
  nop                            #  1     0x1267e0  1      OPC=nop             
  nop                            #  2     0x1267e1  1      OPC=nop             
  nop                            #  3     0x1267e2  1      OPC=nop             
  nop                            #  4     0x1267e3  1      OPC=nop             
  nop                            #  5     0x1267e4  1      OPC=nop             
  movq %rdi, %rax                #  6     0x1267e5  3      OPC=movq_r64_r64    
  nop                            #  7     0x1267e8  1      OPC=nop             
  movq %rsi, %rdx                #  8     0x1267e9  3      OPC=movq_r64_r64_1  
  orb %dh, %dh                   #  9     0x1267ec  2      OPC=orb_rh_rh       
  movq %rdi, %rcx                #  10    0x1267ee  3      OPC=movq_r64_r64_1  
  nop                            #  11    0x1267f1  1      OPC=nop             
  jne .L_126860                  #  12    0x1267f2  6      OPC=jne_label_1     
  nop                            #  13    0x1267f8  1      OPC=nop             
  nop                            #  14    0x1267f9  1      OPC=nop             
  nop                            #  15    0x1267fa  1      OPC=nop             
  nop                            #  16    0x1267fb  1      OPC=nop             
  nop                            #  17    0x1267fc  1      OPC=nop             
  nop                            #  18    0x1267fd  1      OPC=nop             
  nop                            #  19    0x1267fe  1      OPC=nop             
  nop                            #  20    0x1267ff  1      OPC=nop             
  nop                            #  21    0x126800  1      OPC=nop             
  nop                            #  22    0x126801  1      OPC=nop             
  nop                            #  23    0x126802  1      OPC=nop             
  nop                            #  24    0x126803  1      OPC=nop             
  nop                            #  25    0x126804  1      OPC=nop             
  nop                            #  26    0x126805  1      OPC=nop             
  nop                            #  27    0x126806  1      OPC=nop             
  andb %ch, %cl                  #  28    0x126807  2      OPC=andb_r8_rh      
  nop                            #  29    0x126809  1      OPC=nop             
  nop                            #  30    0x12680a  1      OPC=nop             
  movq %rbp, %rdx                #  31    0x12680b  3      OPC=movq_r64_r64    
  nop                            #  32    0x12680e  1      OPC=nop             
  nop                            #  33    0x12680f  1      OPC=nop             
  salb $0x1, %ah                 #  34    0x126810  2      OPC=salb_rh_one     
  nop                            #  35    0x126812  1      OPC=nop             
  nop                            #  36    0x126813  1      OPC=nop             
  nop                            #  37    0x126814  1      OPC=nop             
  jne .L_126860                  #  38    0x126815  6      OPC=jne_label_1     
  nop                            #  39    0x12681b  1      OPC=nop             
  nop                            #  40    0x12681c  1      OPC=nop             
  nop                            #  41    0x12681d  1      OPC=nop             
  nop                            #  42    0x12681e  1      OPC=nop             
  nop                            #  43    0x12681f  1      OPC=nop             
.L_126820:                       #        0x126820  0      OPC=<label>         
  nop                            #  44    0x126820  1      OPC=nop             
  nop                            #  45    0x126821  1      OPC=nop             
  nop                            #  46    0x126822  1      OPC=nop             
  nop                            #  47    0x126823  1      OPC=nop             
  nop                            #  48    0x126824  1      OPC=nop             
  nop                            #  49    0x126825  1      OPC=nop             
  nop                            #  50    0x126826  1      OPC=nop             
  nop                            #  51    0x126827  1      OPC=nop             
  nop                            #  52    0x126828  1      OPC=nop             
  nop                            #  53    0x126829  1      OPC=nop             
  nop                            #  54    0x12682a  1      OPC=nop             
  nop                            #  55    0x12682b  1      OPC=nop             
  nop                            #  56    0x12682c  1      OPC=nop             
  nop                            #  57    0x12682d  1      OPC=nop             
  nop                            #  58    0x12682e  1      OPC=nop             
  movzbw %ah, %dx                #  59    0x12682f  4      OPC=movzbw_r16_rh   
  nop                            #  60    0x126833  1      OPC=nop             
  nop                            #  61    0x126834  1      OPC=nop             
  nop                            #  62    0x126835  1      OPC=nop             
  nop                            #  63    0x126836  1      OPC=nop             
  nop                            #  64    0x126837  1      OPC=nop             
  nop                            #  65    0x126838  1      OPC=nop             
  nop                            #  66    0x126839  1      OPC=nop             
  nop                            #  67    0x12683a  1      OPC=nop             
  nop                            #  68    0x12683b  1      OPC=nop             
  nop                            #  69    0x12683c  1      OPC=nop             
  nop                            #  70    0x12683d  1      OPC=nop             
  nop                            #  71    0x12683e  1      OPC=nop             
  nop                            #  72    0x12683f  1      OPC=nop             
  nop                            #  73    0x126840  1      OPC=nop             
  nop                            #  74    0x126841  1      OPC=nop             
  xorb %al, %ah                  #  75    0x126842  2      OPC=xorb_rh_r8      
  nop                            #  76    0x126844  1      OPC=nop             
  nop                            #  77    0x126845  1      OPC=nop             
  nop                            #  78    0x126846  1      OPC=nop             
  nop                            #  79    0x126847  1      OPC=nop             
  nop                            #  80    0x126848  1      OPC=nop             
  nop                            #  81    0x126849  1      OPC=nop             
  nop                            #  82    0x12684a  1      OPC=nop             
  nop                            #  83    0x12684b  1      OPC=nop             
  nop                            #  84    0x12684c  1      OPC=nop             
  je .L_126820                   #  85    0x12684d  6      OPC=je_label_1      
  nop                            #  86    0x126853  1      OPC=nop             
  nop                            #  87    0x126854  1      OPC=nop             
  nop                            #  88    0x126855  1      OPC=nop             
  shll %cl, %edx                 #  89    0x126856  2      OPC=shll_r32_cl     
  nop                            #  90    0x126858  1      OPC=nop             
  nop                            #  91    0x126859  1      OPC=nop             
  nop                            #  92    0x12685a  1      OPC=nop             
  nop                            #  93    0x12685b  1      OPC=nop             
  nop                            #  94    0x12685c  1      OPC=nop             
  nop                            #  95    0x12685d  1      OPC=nop             
  nop                            #  96    0x12685e  1      OPC=nop             
  nop                            #  97    0x12685f  1      OPC=nop             
.L_126860:                       #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                #  98    0x126860  3      OPC=addl_r32_imm8   
  movsbw -0x1(%r15,%rdx,1), %si  #  99    0x126863  7      OPC=movsbw_r16_m8   
  addl $0x1, %ecx                #  100   0x12686a  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)   #  101   0x12686d  5      OPC=movb_m8_r8      
  testb %sil, %sil               #  102   0x126872  3      OPC=testb_r8_r8     
  jne .L_126860                  #  103   0x126875  6      OPC=jne_label_1     
  nop                            #  104   0x12687b  1      OPC=nop             
  nop                            #  105   0x12687c  1      OPC=nop             
  nop                            #  106   0x12687d  1      OPC=nop             
  nop                            #  107   0x12687e  1      OPC=nop             
  nop                            #  108   0x12687f  1      OPC=nop             
  nop                            #  109   0x126880  1      OPC=nop             
  nop                            #  110   0x126881  1      OPC=nop             
  nop                            #  111   0x126882  1      OPC=nop             
  nop                            #  112   0x126883  1      OPC=nop             
  nop                            #  113   0x126884  1      OPC=nop             
  nop                            #  114   0x126885  1      OPC=nop             
  nop                            #  115   0x126886  1      OPC=nop             
  nop                            #  116   0x126887  1      OPC=nop             
  nop                            #  117   0x126888  1      OPC=nop             
  nop                            #  118   0x126889  1      OPC=nop             
  nop                            #  119   0x12688a  1      OPC=nop             
  nop                            #  120   0x12688b  1      OPC=nop             
  nop                            #  121   0x12688c  1      OPC=nop             
  nop                            #  122   0x12688d  1      OPC=nop             
  retq

.size strcpy, -.strcpy

