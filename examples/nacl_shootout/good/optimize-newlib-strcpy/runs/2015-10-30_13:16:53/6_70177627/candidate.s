  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  movl %eax, %ecx                 #  2     0x1267e2  2      OPC=movl_r32_r32    
  nop                             #  3     0x1267e4  1      OPC=nop             
  nop                             #  4     0x1267e5  1      OPC=nop             
  nop                             #  5     0x1267e6  1      OPC=nop             
  nop                             #  6     0x1267e7  1      OPC=nop             
  nop                             #  7     0x1267e8  1      OPC=nop             
  movl %esi, %edx                 #  8     0x1267e9  2      OPC=movl_r32_r32    
  nop                             #  9     0x1267eb  1      OPC=nop             
  andl $0x8, %edi                 #  10    0x1267ec  3      OPC=andl_r32_imm8   
  nop                             #  11    0x1267ef  1      OPC=nop             
  nop                             #  12    0x1267f0  1      OPC=nop             
  jne .L_126860                   #  13    0x1267f1  6      OPC=jne_label_1     
  nop                             #  14    0x1267f7  1      OPC=nop             
  nop                             #  15    0x1267f8  1      OPC=nop             
  movl %edx, %esi                 #  16    0x1267f9  2      OPC=movl_r32_r32_1  
  movq (%r15,%rsi,1), %r8         #  17    0x1267fb  4      OPC=movq_r64_m64    
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
  nop                             #  28    0x126809  1      OPC=nop             
  nop                             #  29    0x12680a  1      OPC=nop             
  nop                             #  30    0x12680b  1      OPC=nop             
  nop                             #  31    0x12680c  1      OPC=nop             
  nop                             #  32    0x12680d  1      OPC=nop             
  nop                             #  33    0x12680e  1      OPC=nop             
  nop                             #  34    0x12680f  1      OPC=nop             
  nop                             #  35    0x126810  1      OPC=nop             
  nop                             #  36    0x126811  1      OPC=nop             
  nop                             #  37    0x126812  1      OPC=nop             
  nop                             #  38    0x126813  1      OPC=nop             
  nop                             #  39    0x126814  1      OPC=nop             
  nop                             #  40    0x126815  1      OPC=nop             
  jne .L_126860                   #  41    0x126816  6      OPC=jne_label_1     
  nop                             #  42    0x12681c  1      OPC=nop             
  nop                             #  43    0x12681d  1      OPC=nop             
  nop                             #  44    0x12681e  1      OPC=nop             
  nop                             #  45    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl %ebp, %ecx                 #  46    0x126820  2      OPC=addl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)        #  47    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  48    0x126826  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8         #  49    0x126829  4      OPC=movq_r64_m64    
  addl $0x4, %ecx                 #  50    0x12682d  3      OPC=addl_r32_imm8   
  movl %r8d, %r9d                 #  51    0x126830  3      OPC=movl_r32_r32_1  
  leaq -0x1010101(%r8), %rsi      #  52    0x126833  7      OPC=leaq_r64_m64    
  negq %r9                        #  53    0x12683a  3      OPC=negq_r64        
  andl %esi, %r9d                 #  54    0x12683d  3      OPC=andl_r32_r32    
  andq $0x80808080, %r9           #  55    0x126840  7      OPC=andq_r64_imm32  
  je .L_126820                    #  56    0x126847  6      OPC=je_label_1      
  nop                             #  57    0x12684d  1      OPC=nop             
  nop                             #  58    0x12684e  1      OPC=nop             
  nop                             #  59    0x12684f  1      OPC=nop             
  nop                             #  60    0x126850  1      OPC=nop             
  nop                             #  61    0x126851  1      OPC=nop             
  nop                             #  62    0x126852  1      OPC=nop             
  nop                             #  63    0x126853  1      OPC=nop             
  nop                             #  64    0x126854  1      OPC=nop             
  nop                             #  65    0x126855  1      OPC=nop             
  nop                             #  66    0x126856  1      OPC=nop             
  nop                             #  67    0x126857  1      OPC=nop             
  nop                             #  68    0x126858  1      OPC=nop             
  nop                             #  69    0x126859  1      OPC=nop             
  nop                             #  70    0x12685a  1      OPC=nop             
  nop                             #  71    0x12685b  1      OPC=nop             
  nop                             #  72    0x12685c  1      OPC=nop             
  nop                             #  73    0x12685d  1      OPC=nop             
  nop                             #  74    0x12685e  1      OPC=nop             
  nop                             #  75    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  76    0x126860  3      OPC=addl_r32_imm8   
  movzbl -0x1(%r15,%rdx,1), %esi  #  77    0x126863  6      OPC=movzbl_r32_m8   
  addl $0x1, %ecx                 #  78    0x126869  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  79    0x12686c  5      OPC=movb_m8_r8      
  nop                             #  80    0x126871  1      OPC=nop             
  nop                             #  81    0x126872  1      OPC=nop             
  nop                             #  82    0x126873  1      OPC=nop             
  nop                             #  83    0x126874  1      OPC=nop             
  nop                             #  84    0x126875  1      OPC=nop             
  nop                             #  85    0x126876  1      OPC=nop             
  nop                             #  86    0x126877  1      OPC=nop             
  nop                             #  87    0x126878  1      OPC=nop             
  nop                             #  88    0x126879  1      OPC=nop             
  nop                             #  89    0x12687a  1      OPC=nop             
  nop                             #  90    0x12687b  1      OPC=nop             
  nop                             #  91    0x12687c  1      OPC=nop             
  testb %sil, %sil                #  92    0x12687d  3      OPC=testb_r8_r8     
  jne .L_126860                   #  93    0x126880  6      OPC=jne_label_1     
  retq

.size strcpy, -.strcpy

