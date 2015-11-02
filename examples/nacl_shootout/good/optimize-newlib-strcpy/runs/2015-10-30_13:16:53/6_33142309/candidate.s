  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  andl $0x20, %edi                #  2     0x1267e2  3      OPC=andl_r32_imm8   
  nop                             #  3     0x1267e5  1      OPC=nop             
  nop                             #  4     0x1267e6  1      OPC=nop             
  nop                             #  5     0x1267e7  1      OPC=nop             
  nop                             #  6     0x1267e8  1      OPC=nop             
  nop                             #  7     0x1267e9  1      OPC=nop             
  nop                             #  8     0x1267ea  1      OPC=nop             
  nop                             #  9     0x1267eb  1      OPC=nop             
  nop                             #  10    0x1267ec  1      OPC=nop             
  movl %eax, %ecx                 #  11    0x1267ed  2      OPC=movl_r32_r32    
  movl %esi, %edx                 #  12    0x1267ef  2      OPC=movl_r32_r32    
  jne .L_126860                   #  13    0x1267f1  6      OPC=jne_label_1     
  movl %edx, %esi                 #  14    0x1267f7  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d        #  15    0x1267f9  4      OPC=movl_r32_m32    
  nop                             #  16    0x1267fd  1      OPC=nop             
  nop                             #  17    0x1267fe  1      OPC=nop             
  nop                             #  18    0x1267ff  1      OPC=nop             
  nop                             #  19    0x126800  1      OPC=nop             
  nop                             #  20    0x126801  1      OPC=nop             
  nop                             #  21    0x126802  1      OPC=nop             
  nop                             #  22    0x126803  1      OPC=nop             
  nop                             #  23    0x126804  1      OPC=nop             
  nop                             #  24    0x126805  1      OPC=nop             
  nop                             #  25    0x126806  1      OPC=nop             
  nop                             #  26    0x126807  1      OPC=nop             
  nop                             #  27    0x126808  1      OPC=nop             
  jne .L_126860                   #  28    0x126809  6      OPC=jne_label_1     
  nopl %eax                       #  29    0x12680f  3      OPC=nopl_r32        
  nop                             #  30    0x126812  1      OPC=nop             
  nop                             #  31    0x126813  1      OPC=nop             
  nop                             #  32    0x126814  1      OPC=nop             
  nop                             #  33    0x126815  1      OPC=nop             
  nop                             #  34    0x126816  1      OPC=nop             
  nop                             #  35    0x126817  1      OPC=nop             
  nop                             #  36    0x126818  1      OPC=nop             
  nop                             #  37    0x126819  1      OPC=nop             
  nop                             #  38    0x12681a  1      OPC=nop             
  orb %r15b, %cl                  #  39    0x12681b  3      OPC=orb_r8_r8       
  nop                             #  40    0x12681e  1      OPC=nop             
  nop                             #  41    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  subl %edi, %ecx                 #  42    0x126820  2      OPC=subl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)        #  43    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  44    0x126826  6      OPC=addl_r32_imm32  
  movq (%r15,%rdx,1), %r8         #  45    0x12682c  4      OPC=movq_r64_m64    
  addl $0x4, %ecx                 #  46    0x126830  3      OPC=addl_r32_imm8   
  movl %r8d, %r9d                 #  47    0x126833  3      OPC=movl_r32_r32    
  notl %r9d                       #  48    0x126836  3      OPC=notl_r32        
  leaq -0x1010101(%r8), %rsi      #  49    0x126839  7      OPC=leaq_r64_m64    
  andq %rsi, %r9                  #  50    0x126840  3      OPC=andq_r64_r64    
  andq $0x80808080, %r9           #  51    0x126843  7      OPC=andq_r64_imm32  
  je .L_126820                    #  52    0x12684a  6      OPC=je_label_1      
  nop                             #  53    0x126850  1      OPC=nop             
  nop                             #  54    0x126851  1      OPC=nop             
  nop                             #  55    0x126852  1      OPC=nop             
  nop                             #  56    0x126853  1      OPC=nop             
  nop                             #  57    0x126854  1      OPC=nop             
  nop                             #  58    0x126855  1      OPC=nop             
  nop                             #  59    0x126856  1      OPC=nop             
  nop                             #  60    0x126857  1      OPC=nop             
  nop                             #  61    0x126858  1      OPC=nop             
  nop                             #  62    0x126859  1      OPC=nop             
  nop                             #  63    0x12685a  1      OPC=nop             
  nop                             #  64    0x12685b  1      OPC=nop             
  nop                             #  65    0x12685c  1      OPC=nop             
  nop                             #  66    0x12685d  1      OPC=nop             
  nop                             #  67    0x12685e  1      OPC=nop             
  nop                             #  68    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  69    0x126860  6      OPC=addl_r32_imm32  
  movsbl -0x1(%r15,%rdx,1), %esi  #  70    0x126866  6      OPC=movsbl_r32_m8   
  addl $0x1, %ecx                 #  71    0x12686c  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  72    0x12686f  5      OPC=movb_m8_r8      
  addl %esi, %esi                 #  73    0x126874  2      OPC=addl_r32_r32_1  
  jne .L_126860                   #  74    0x126876  6      OPC=jne_label_1     
  nop                             #  75    0x12687c  1      OPC=nop             
  nop                             #  76    0x12687d  1      OPC=nop             
  nop                             #  77    0x12687e  1      OPC=nop             
  nop                             #  78    0x12687f  1      OPC=nop             
  nop                             #  79    0x126880  1      OPC=nop             
  nop                             #  80    0x126881  1      OPC=nop             
  nop                             #  81    0x126882  1      OPC=nop             
  nop                             #  82    0x126883  1      OPC=nop             
  nop                             #  83    0x126884  1      OPC=nop             
  nop                             #  84    0x126885  1      OPC=nop             
  nop                             #  85    0x126886  1      OPC=nop             
  nop                             #  86    0x126887  1      OPC=nop             
  retq

.size strcpy, -.strcpy

