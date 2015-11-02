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
  movl %edi, %ecx                 #  4     0x1267e3  2      OPC=movl_r32_r32_1  
  movl %esi, %edx                 #  5     0x1267e5  2      OPC=movl_r32_r32_1  
  movl %edi, %eax                 #  6     0x1267e7  2      OPC=movl_r32_r32_1  
  andq $0xf0, %rdi                #  7     0x1267e9  7      OPC=andq_r64_imm32  
  nop                             #  8     0x1267f0  1      OPC=nop             
  jne .L_126860                   #  9     0x1267f1  6      OPC=jne_label_1     
  movl %esi, %esi                 #  10    0x1267f7  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d        #  11    0x1267f9  4      OPC=movl_r32_m32    
  nop                             #  12    0x1267fd  1      OPC=nop             
  nop                             #  13    0x1267fe  1      OPC=nop             
  nop                             #  14    0x1267ff  1      OPC=nop             
  nop                             #  15    0x126800  1      OPC=nop             
  nop                             #  16    0x126801  1      OPC=nop             
  nop                             #  17    0x126802  1      OPC=nop             
  nop                             #  18    0x126803  1      OPC=nop             
  nop                             #  19    0x126804  1      OPC=nop             
  nop                             #  20    0x126805  1      OPC=nop             
  nop                             #  21    0x126806  1      OPC=nop             
  nop                             #  22    0x126807  1      OPC=nop             
  nop                             #  23    0x126808  1      OPC=nop             
  nop                             #  24    0x126809  1      OPC=nop             
  nop                             #  25    0x12680a  1      OPC=nop             
  nop                             #  26    0x12680b  1      OPC=nop             
  nop                             #  27    0x12680c  1      OPC=nop             
  jne .L_126860                   #  28    0x12680d  6      OPC=jne_label_1     
  nop                             #  29    0x126813  1      OPC=nop             
  nop                             #  30    0x126814  1      OPC=nop             
  nop                             #  31    0x126815  1      OPC=nop             
  nop                             #  32    0x126816  1      OPC=nop             
  nop                             #  33    0x126817  1      OPC=nop             
  nop                             #  34    0x126818  1      OPC=nop             
  nop                             #  35    0x126819  1      OPC=nop             
  nop                             #  36    0x12681a  1      OPC=nop             
  nop                             #  37    0x12681b  1      OPC=nop             
  nop                             #  38    0x12681c  1      OPC=nop             
  nop                             #  39    0x12681d  1      OPC=nop             
  nop                             #  40    0x12681e  1      OPC=nop             
  nop                             #  41    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  42    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)    #  43    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  44    0x126828  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  45    0x12682b  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi      #  46    0x12682f  7      OPC=leal_r32_m16    
  andq $0x80808080, %rsi          #  47    0x126836  7      OPC=andq_r64_imm32  
  movl %r8d, %r9d                 #  48    0x12683d  3      OPC=movl_r32_r32_1  
  notl %r9d                       #  49    0x126840  3      OPC=notl_r32        
  andq %rsi, %r9                  #  50    0x126843  3      OPC=andq_r64_r64_1  
  je .L_126820                    #  51    0x126846  6      OPC=je_label_1      
  nop                             #  52    0x12684c  1      OPC=nop             
  nop                             #  53    0x12684d  1      OPC=nop             
  nop                             #  54    0x12684e  1      OPC=nop             
  nop                             #  55    0x12684f  1      OPC=nop             
  nop                             #  56    0x126850  1      OPC=nop             
  nop                             #  57    0x126851  1      OPC=nop             
  nop                             #  58    0x126852  1      OPC=nop             
  nop                             #  59    0x126853  1      OPC=nop             
  nop                             #  60    0x126854  1      OPC=nop             
  nop                             #  61    0x126855  1      OPC=nop             
  nop                             #  62    0x126856  1      OPC=nop             
  nop                             #  63    0x126857  1      OPC=nop             
  nop                             #  64    0x126858  1      OPC=nop             
  nop                             #  65    0x126859  1      OPC=nop             
  addb $0x0, %al                  #  66    0x12685a  2      OPC=addb_al_imm8    
  nop                             #  67    0x12685c  1      OPC=nop             
  nop                             #  68    0x12685d  1      OPC=nop             
  nop                             #  69    0x12685e  1      OPC=nop             
  nop                             #  70    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  71    0x126860  3      OPC=addl_r32_imm8   
  movzbl -0x1(%r15,%rdx,1), %esi  #  72    0x126863  6      OPC=movzbl_r32_m8   
  xorl %esp, %ecx                 #  73    0x126869  2      OPC=xorl_r32_r32    
  movb %sil, (%r15,%rcx,1)        #  74    0x12686b  4      OPC=movb_m8_r8      
  addb $0x1, %cl                  #  75    0x12686f  3      OPC=addb_r8_imm8    
  sall $0x2, %esi                 #  76    0x126872  3      OPC=sall_r32_imm8   
  jne .L_126860                   #  77    0x126875  6      OPC=jne_label_1     
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
  nop                             #  89    0x126886  1      OPC=nop             
  nop                             #  90    0x126887  1      OPC=nop             
  nop                             #  91    0x126888  1      OPC=nop             
  nop                             #  92    0x126889  1      OPC=nop             
  nop                             #  93    0x12688a  1      OPC=nop             
  nop                             #  94    0x12688b  1      OPC=nop             
  retq

.size strcpy, -.strcpy

