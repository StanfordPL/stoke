  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movq %rdi, %rax                 #  1     0x1267e0  3      OPC=movq_r64_r64_1  
  movl %esi, %edx                 #  2     0x1267e3  2      OPC=movl_r32_r32    
  nop                             #  3     0x1267e5  1      OPC=nop             
  xorw $0x6, %si                  #  4     0x1267e6  4      OPC=xorw_r16_imm8   
  nop                             #  5     0x1267ea  1      OPC=nop             
  nop                             #  6     0x1267eb  1      OPC=nop             
  nop                             #  7     0x1267ec  1      OPC=nop             
  nop                             #  8     0x1267ed  1      OPC=nop             
  nop                             #  9     0x1267ee  1      OPC=nop             
  nop                             #  10    0x1267ef  1      OPC=nop             
  movq %rdi, %rcx                 #  11    0x1267f0  3      OPC=movq_r64_r64    
  nop                             #  12    0x1267f3  1      OPC=nop             
  nop                             #  13    0x1267f4  1      OPC=nop             
  jne .L_126860                   #  14    0x1267f5  6      OPC=jne_label_1     
  nop                             #  15    0x1267fb  1      OPC=nop             
  nop                             #  16    0x1267fc  1      OPC=nop             
  notw %si                        #  17    0x1267fd  3      OPC=notw_r16        
  nop                             #  18    0x126800  1      OPC=nop             
  nop                             #  19    0x126801  1      OPC=nop             
  nop                             #  20    0x126802  1      OPC=nop             
  nop                             #  21    0x126803  1      OPC=nop             
  nop                             #  22    0x126804  1      OPC=nop             
  nop                             #  23    0x126805  1      OPC=nop             
  nop                             #  24    0x126806  1      OPC=nop             
  nop                             #  25    0x126807  1      OPC=nop             
  jne .L_126860                   #  26    0x126808  6      OPC=jne_label_1     
  shrl %cl, %esi                  #  27    0x12680e  2      OPC=shrl_r32_cl     
  orb %ah, %cl                    #  28    0x126810  2      OPC=orb_r8_rh_1     
  nop                             #  29    0x126812  1      OPC=nop             
  shlb $0x1, %sil                 #  30    0x126813  3      OPC=shlb_r8_one     
  nop                             #  31    0x126816  1      OPC=nop             
  nop                             #  32    0x126817  1      OPC=nop             
  nop                             #  33    0x126818  1      OPC=nop             
  nop                             #  34    0x126819  1      OPC=nop             
  nop                             #  35    0x12681a  1      OPC=nop             
  nop                             #  36    0x12681b  1      OPC=nop             
  nop                             #  37    0x12681c  1      OPC=nop             
  nop                             #  38    0x12681d  1      OPC=nop             
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
  nop                             #  49    0x126828  1      OPC=nop             
  nop                             #  50    0x126829  1      OPC=nop             
  nop                             #  51    0x12682a  1      OPC=nop             
  nop                             #  52    0x12682b  1      OPC=nop             
  nop                             #  53    0x12682c  1      OPC=nop             
  nop                             #  54    0x12682d  1      OPC=nop             
  nop                             #  55    0x12682e  1      OPC=nop             
  nop                             #  56    0x12682f  1      OPC=nop             
  nop                             #  57    0x126830  1      OPC=nop             
  nop                             #  58    0x126831  1      OPC=nop             
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
  je .L_126820                    #  73    0x126840  6      OPC=je_label_1      
  nop                             #  74    0x126846  1      OPC=nop             
  nopl %eax                       #  75    0x126847  3      OPC=nopl_r32        
  nop                             #  76    0x12684a  1      OPC=nop             
  nop                             #  77    0x12684b  1      OPC=nop             
  nop                             #  78    0x12684c  1      OPC=nop             
  nop                             #  79    0x12684d  1      OPC=nop             
  nop                             #  80    0x12684e  1      OPC=nop             
  nop                             #  81    0x12684f  1      OPC=nop             
  nop                             #  82    0x126850  1      OPC=nop             
  nop                             #  83    0x126851  1      OPC=nop             
  nop                             #  84    0x126852  1      OPC=nop             
  nop                             #  85    0x126853  1      OPC=nop             
  nop                             #  86    0x126854  1      OPC=nop             
  andb %ch, %cl                   #  87    0x126855  2      OPC=andb_r8_rh_1    
  nop                             #  88    0x126857  1      OPC=nop             
  nop                             #  89    0x126858  1      OPC=nop             
  nop                             #  90    0x126859  1      OPC=nop             
  nop                             #  91    0x12685a  1      OPC=nop             
  nop                             #  92    0x12685b  1      OPC=nop             
  nop                             #  93    0x12685c  1      OPC=nop             
  nop                             #  94    0x12685d  1      OPC=nop             
  nop                             #  95    0x12685e  1      OPC=nop             
  nop                             #  96    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  97    0x126860  3      OPC=addl_r32_imm8   
  movsbl -0x1(%r15,%rdx,1), %esi  #  98    0x126863  6      OPC=movsbl_r32_m8   
  incl %ecx                       #  99    0x126869  2      OPC=incl_r32        
  movb %sil, -0x1(%r15,%rcx,1)    #  100   0x12686b  5      OPC=movb_m8_r8      
  testb %sil, %sil                #  101   0x126870  3      OPC=testb_r8_r8     
  jne .L_126860                   #  102   0x126873  6      OPC=jne_label_1     
  nop                             #  103   0x126879  1      OPC=nop             
  nop                             #  104   0x12687a  1      OPC=nop             
  nop                             #  105   0x12687b  1      OPC=nop             
  nop                             #  106   0x12687c  1      OPC=nop             
  nop                             #  107   0x12687d  1      OPC=nop             
  nop                             #  108   0x12687e  1      OPC=nop             
  nop                             #  109   0x12687f  1      OPC=nop             
  nop                             #  110   0x126880  1      OPC=nop             
  nop                             #  111   0x126881  1      OPC=nop             
  nopl %eax                       #  112   0x126882  3      OPC=nopl_r32        
  retq

.size strcpy, -.strcpy

