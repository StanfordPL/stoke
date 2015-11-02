  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %esi, %edx                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  nop                             #  2     0x1267e2  1      OPC=nop             
  nop                             #  3     0x1267e3  1      OPC=nop             
  nop                             #  4     0x1267e4  1      OPC=nop             
  nop                             #  5     0x1267e5  1      OPC=nop             
  nop                             #  6     0x1267e6  1      OPC=nop             
  andb $0x1, %sil                 #  7     0x1267e7  4      OPC=andb_r8_imm8    
  nop                             #  8     0x1267eb  1      OPC=nop             
  nop                             #  9     0x1267ec  1      OPC=nop             
  nop                             #  10    0x1267ed  1      OPC=nop             
  nop                             #  11    0x1267ee  1      OPC=nop             
  nop                             #  12    0x1267ef  1      OPC=nop             
  nop                             #  13    0x1267f0  1      OPC=nop             
  nop                             #  14    0x1267f1  1      OPC=nop             
  nop                             #  15    0x1267f2  1      OPC=nop             
  movq %rdi, %rcx                 #  16    0x1267f3  3      OPC=movq_r64_r64    
  jne .L_126860                   #  17    0x1267f6  6      OPC=jne_label_1     
  nop                             #  18    0x1267fc  1      OPC=nop             
  nop                             #  19    0x1267fd  1      OPC=nop             
  nop                             #  20    0x1267fe  1      OPC=nop             
  nop                             #  21    0x1267ff  1      OPC=nop             
  nop                             #  22    0x126800  1      OPC=nop             
  nop                             #  23    0x126801  1      OPC=nop             
  nop                             #  24    0x126802  1      OPC=nop             
  orl %edx, %esi                  #  25    0x126803  2      OPC=orl_r32_r32_1   
  movl (%r15,%rsi,1), %r8d        #  26    0x126805  4      OPC=movl_r32_m32    
  nop                             #  27    0x126809  1      OPC=nop             
  nop                             #  28    0x12680a  1      OPC=nop             
  nop                             #  29    0x12680b  1      OPC=nop             
  nop                             #  30    0x12680c  1      OPC=nop             
  nop                             #  31    0x12680d  1      OPC=nop             
  nop                             #  32    0x12680e  1      OPC=nop             
  nop                             #  33    0x12680f  1      OPC=nop             
  nop                             #  34    0x126810  1      OPC=nop             
  nop                             #  35    0x126811  1      OPC=nop             
  nop                             #  36    0x126812  1      OPC=nop             
  andl $0x80, %esi                #  37    0x126813  6      OPC=andl_r32_imm32  
  jne .L_126860                   #  38    0x126819  6      OPC=jne_label_1     
  nop                             #  39    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  40    0x126820  6      OPC=addl_r32_imm32  
  movl %r8d, -0x4(%r15,%rcx,1)    #  41    0x126826  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  42    0x12682b  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  43    0x12682e  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %rsi      #  44    0x126832  7      OPC=leaq_r64_m64    
  andq $0x80808080, %rsi          #  45    0x126839  7      OPC=andq_r64_imm32  
  movq %r8, %r9                   #  46    0x126840  3      OPC=movq_r64_r64_1  
  notl %r9d                       #  47    0x126843  3      OPC=notl_r32        
  andq %rsi, %r9                  #  48    0x126846  3      OPC=andq_r64_r64_1  
  je .L_126820                    #  49    0x126849  6      OPC=je_label_1      
  nop                             #  50    0x12684f  1      OPC=nop             
  nop                             #  51    0x126850  1      OPC=nop             
  nop                             #  52    0x126851  1      OPC=nop             
  nop                             #  53    0x126852  1      OPC=nop             
  nop                             #  54    0x126853  1      OPC=nop             
  nop                             #  55    0x126854  1      OPC=nop             
  nop                             #  56    0x126855  1      OPC=nop             
  nop                             #  57    0x126856  1      OPC=nop             
  nop                             #  58    0x126857  1      OPC=nop             
  nop                             #  59    0x126858  1      OPC=nop             
  nop                             #  60    0x126859  1      OPC=nop             
  nop                             #  61    0x12685a  1      OPC=nop             
  nop                             #  62    0x12685b  1      OPC=nop             
  nop                             #  63    0x12685c  1      OPC=nop             
  nop                             #  64    0x12685d  1      OPC=nop             
  nop                             #  65    0x12685e  1      OPC=nop             
  nop                             #  66    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  67    0x126860  6      OPC=addl_r32_imm32  
  movsbq -0x1(%r15,%rdx,1), %rsi  #  68    0x126866  6      OPC=movsbq_r64_m8   
  nop                             #  69    0x12686c  1      OPC=nop             
  nop                             #  70    0x12686d  1      OPC=nop             
  nop                             #  71    0x12686e  1      OPC=nop             
  addl $0x1, %ecx                 #  72    0x12686f  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  73    0x126872  5      OPC=movb_m8_r8      
  nop                             #  74    0x126877  1      OPC=nop             
  nop                             #  75    0x126878  1      OPC=nop             
  nop                             #  76    0x126879  1      OPC=nop             
  nop                             #  77    0x12687a  1      OPC=nop             
  nop                             #  78    0x12687b  1      OPC=nop             
  nop                             #  79    0x12687c  1      OPC=nop             
  nop                             #  80    0x12687d  1      OPC=nop             
  nop                             #  81    0x12687e  1      OPC=nop             
  nop                             #  82    0x12687f  1      OPC=nop             
  nop                             #  83    0x126880  1      OPC=nop             
  nop                             #  84    0x126881  1      OPC=nop             
  nop                             #  85    0x126882  1      OPC=nop             
  nop                             #  86    0x126883  1      OPC=nop             
  nop                             #  87    0x126884  1      OPC=nop             
  nop                             #  88    0x126885  1      OPC=nop             
  movl %edi, %eax                 #  89    0x126886  2      OPC=movl_r32_r32    
  nop                             #  90    0x126888  1      OPC=nop             
  nop                             #  91    0x126889  1      OPC=nop             
  nop                             #  92    0x12688a  1      OPC=nop             
  orb %bpl, %sil                  #  93    0x12688b  3      OPC=orb_r8_r8       
  nop                             #  94    0x12688e  1      OPC=nop             
  nop                             #  95    0x12688f  1      OPC=nop             
  nop                             #  96    0x126890  1      OPC=nop             
  nop                             #  97    0x126891  1      OPC=nop             
  nop                             #  98    0x126892  1      OPC=nop             
  nop                             #  99    0x126893  1      OPC=nop             
  nop                             #  100   0x126894  1      OPC=nop             
  nop                             #  101   0x126895  1      OPC=nop             
  nop                             #  102   0x126896  1      OPC=nop             
  nop                             #  103   0x126897  1      OPC=nop             
  nop                             #  104   0x126898  1      OPC=nop             
  nop                             #  105   0x126899  1      OPC=nop             
  jne .L_126860                   #  106   0x12689a  6      OPC=jne_label_1     
  retq

.size strcpy, -.strcpy

