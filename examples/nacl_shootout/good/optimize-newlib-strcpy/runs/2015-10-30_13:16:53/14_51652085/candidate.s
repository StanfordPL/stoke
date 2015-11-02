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
  nop                             #  11    0x1267ea  1      OPC=nop             
  nop                             #  12    0x1267eb  1      OPC=nop             
  nop                             #  13    0x1267ec  1      OPC=nop             
  nop                             #  14    0x1267ed  1      OPC=nop             
  nop                             #  15    0x1267ee  1      OPC=nop             
  movzwq %si, %r9                 #  16    0x1267ef  4      OPC=movzwq_r64_r16  
  nop                             #  17    0x1267f3  1      OPC=nop             
  nop                             #  18    0x1267f4  1      OPC=nop             
  nop                             #  19    0x1267f5  1      OPC=nop             
  nop                             #  20    0x1267f6  1      OPC=nop             
  movl %edi, %ecx                 #  21    0x1267f7  2      OPC=movl_r32_r32    
  andw $0x1, %r9w                 #  22    0x1267f9  5      OPC=andw_r16_imm8   
  movl %esi, %edx                 #  23    0x1267fe  2      OPC=movl_r32_r32    
  movl %edi, %eax                 #  24    0x126800  2      OPC=movl_r32_r32    
  nop                             #  25    0x126802  1      OPC=nop             
  nop                             #  26    0x126803  1      OPC=nop             
  jne .L_126860                   #  27    0x126804  6      OPC=jne_label_1     
  nop                             #  28    0x12680a  1      OPC=nop             
  nop                             #  29    0x12680b  1      OPC=nop             
  nop                             #  30    0x12680c  1      OPC=nop             
  nop                             #  31    0x12680d  1      OPC=nop             
  nop                             #  32    0x12680e  1      OPC=nop             
  nop                             #  33    0x12680f  1      OPC=nop             
  nop                             #  34    0x126810  1      OPC=nop             
  nop                             #  35    0x126811  1      OPC=nop             
  movl %esi, %esi                 #  36    0x126812  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d        #  37    0x126814  4      OPC=movl_r32_m32    
  nop                             #  38    0x126818  1      OPC=nop             
  jne .L_126860                   #  39    0x126819  6      OPC=jne_label_1     
  nop                             #  40    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  41    0x126820  6      OPC=addl_r32_imm32  
  movl %r8d, -0x4(%r15,%rcx,1)    #  42    0x126826  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  43    0x12682b  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  44    0x12682e  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %rsi      #  45    0x126832  7      OPC=leaq_r64_m32    
  andq $0x80808080, %rsi          #  46    0x126839  7      OPC=andq_r64_imm32  
  subq %r8, %r9                   #  47    0x126840  3      OPC=subq_r64_r64    
  andl %esi, %r9d                 #  48    0x126843  3      OPC=andl_r32_r32_1  
  je .L_126820                    #  49    0x126846  6      OPC=je_label_1      
  nop                             #  50    0x12684c  1      OPC=nop             
  nop                             #  51    0x12684d  1      OPC=nop             
  nop                             #  52    0x12684e  1      OPC=nop             
  nop                             #  53    0x12684f  1      OPC=nop             
  nop                             #  54    0x126850  1      OPC=nop             
  nop                             #  55    0x126851  1      OPC=nop             
  nop                             #  56    0x126852  1      OPC=nop             
  nop                             #  57    0x126853  1      OPC=nop             
  nop                             #  58    0x126854  1      OPC=nop             
  nop                             #  59    0x126855  1      OPC=nop             
  nop                             #  60    0x126856  1      OPC=nop             
  nop                             #  61    0x126857  1      OPC=nop             
  nop                             #  62    0x126858  1      OPC=nop             
  nop                             #  63    0x126859  1      OPC=nop             
  nop                             #  64    0x12685a  1      OPC=nop             
  nop                             #  65    0x12685b  1      OPC=nop             
  nop                             #  66    0x12685c  1      OPC=nop             
  nop                             #  67    0x12685d  1      OPC=nop             
  nop                             #  68    0x12685e  1      OPC=nop             
  nop                             #  69    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  70    0x126860  3      OPC=addl_r32_imm8   
  movsbq -0x1(%r15,%rdx,1), %rsi  #  71    0x126863  6      OPC=movsbq_r64_m8   
  incl %ecx                       #  72    0x126869  2      OPC=incl_r32        
  movb %sil, -0x1(%r15,%rcx,1)    #  73    0x12686b  5      OPC=movb_m8_r8      
  andl %esi, %esi                 #  74    0x126870  2      OPC=andl_r32_r32    
  jne .L_126860                   #  75    0x126872  6      OPC=jne_label_1     
  nop                             #  76    0x126878  1      OPC=nop             
  nop                             #  77    0x126879  1      OPC=nop             
  nop                             #  78    0x12687a  1      OPC=nop             
  nop                             #  79    0x12687b  1      OPC=nop             
  nop                             #  80    0x12687c  1      OPC=nop             
  nop                             #  81    0x12687d  1      OPC=nop             
  nop                             #  82    0x12687e  1      OPC=nop             
  nop                             #  83    0x12687f  1      OPC=nop             
  nop                             #  84    0x126880  1      OPC=nop             
  nop                             #  85    0x126881  1      OPC=nop             
  nop                             #  86    0x126882  1      OPC=nop             
  nop                             #  87    0x126883  1      OPC=nop             
  nop                             #  88    0x126884  1      OPC=nop             
  nop                             #  89    0x126885  1      OPC=nop             
  nop                             #  90    0x126886  1      OPC=nop             
  retq

.size strcpy, -.strcpy

