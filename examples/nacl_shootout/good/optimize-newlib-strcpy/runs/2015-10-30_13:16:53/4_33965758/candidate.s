  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  movq %rdi, %rcx                 #  2     0x1267e2  3      OPC=movq_r64_r64    
  subb $0xfc, %dil                #  3     0x1267e5  4      OPC=subb_r8_imm8    
  movl %esi, %edx                 #  4     0x1267e9  2      OPC=movl_r32_r32_1  
  subl %esi, %edi                 #  5     0x1267eb  2      OPC=subl_r32_r32_1  
  nop                             #  6     0x1267ed  1      OPC=nop             
  nop                             #  7     0x1267ee  1      OPC=nop             
  nop                             #  8     0x1267ef  1      OPC=nop             
  andl $0x1, %edi                 #  9     0x1267f0  3      OPC=andl_r32_imm8   
  jne .L_126860                   #  10    0x1267f3  6      OPC=jne_label_1     
  movl %esi, %esi                 #  11    0x1267f9  2      OPC=movl_r32_r32_1  
  movq (%r15,%rsi,1), %r8         #  12    0x1267fb  4      OPC=movq_r64_m64    
  nop                             #  13    0x1267ff  1      OPC=nop             
  nop                             #  14    0x126800  1      OPC=nop             
  nop                             #  15    0x126801  1      OPC=nop             
  nop                             #  16    0x126802  1      OPC=nop             
  nop                             #  17    0x126803  1      OPC=nop             
  nop                             #  18    0x126804  1      OPC=nop             
  nop                             #  19    0x126805  1      OPC=nop             
  nop                             #  20    0x126806  1      OPC=nop             
  nop                             #  21    0x126807  1      OPC=nop             
  nop                             #  22    0x126808  1      OPC=nop             
  nop                             #  23    0x126809  1      OPC=nop             
  nop                             #  24    0x12680a  1      OPC=nop             
  nop                             #  25    0x12680b  1      OPC=nop             
  nop                             #  26    0x12680c  1      OPC=nop             
  nop                             #  27    0x12680d  1      OPC=nop             
  nop                             #  28    0x12680e  1      OPC=nop             
  nop                             #  29    0x12680f  1      OPC=nop             
  nop                             #  30    0x126810  1      OPC=nop             
  nop                             #  31    0x126811  1      OPC=nop             
  nop                             #  32    0x126812  1      OPC=nop             
  nop                             #  33    0x126813  1      OPC=nop             
  nop                             #  34    0x126814  1      OPC=nop             
  nop                             #  35    0x126815  1      OPC=nop             
  jne .L_126860                   #  36    0x126816  6      OPC=jne_label_1     
  nop                             #  37    0x12681c  1      OPC=nop             
  nop                             #  38    0x12681d  1      OPC=nop             
  nop                             #  39    0x12681e  1      OPC=nop             
  nop                             #  40    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  orl %ecx, %ecx                  #  41    0x126820  2      OPC=orl_r32_r32     
  movl %r8d, (%r15,%rcx,1)        #  42    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  43    0x126826  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8         #  44    0x126829  4      OPC=movq_r64_m64    
  movl %r8d, %r9d                 #  45    0x12682d  3      OPC=movl_r32_r32_1  
  notq %r9                        #  46    0x126830  3      OPC=notq_r64        
  leal -0x1010101(%r8), %esi      #  47    0x126833  7      OPC=leal_r32_m16    
  andl %esi, %r9d                 #  48    0x12683a  3      OPC=andl_r32_r32_1  
  addl $0x4, %ecx                 #  49    0x12683d  3      OPC=addl_r32_imm8   
  andq $0x80808080, %r9           #  50    0x126840  7      OPC=andq_r64_imm32  
  je .L_126820                    #  51    0x126847  6      OPC=je_label_1      
  nop                             #  52    0x12684d  1      OPC=nop             
  nop                             #  53    0x12684e  1      OPC=nop             
  nop                             #  54    0x12684f  1      OPC=nop             
  nop                             #  55    0x126850  1      OPC=nop             
  nop                             #  56    0x126851  1      OPC=nop             
  nop                             #  57    0x126852  1      OPC=nop             
  nop                             #  58    0x126853  1      OPC=nop             
  nopl %eax                       #  59    0x126854  3      OPC=nopl_r32        
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
  addl $0x1, %edx                 #  69    0x126860  3      OPC=addl_r32_imm8   
  movzbq -0x1(%r15,%rdx,1), %rsi  #  70    0x126863  6      OPC=movzbq_r64_m8   
  addl $0x1, %ecx                 #  71    0x126869  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)    #  72    0x12686f  5      OPC=movb_m8_r8      
  salw $0x3, %si                  #  73    0x126874  4      OPC=salw_r16_imm8   
  nop                             #  74    0x126878  1      OPC=nop             
  nop                             #  75    0x126879  1      OPC=nop             
  nop                             #  76    0x12687a  1      OPC=nop             
  nop                             #  77    0x12687b  1      OPC=nop             
  nop                             #  78    0x12687c  1      OPC=nop             
  nop                             #  79    0x12687d  1      OPC=nop             
  nop                             #  80    0x12687e  1      OPC=nop             
  nop                             #  81    0x12687f  1      OPC=nop             
  nop                             #  82    0x126880  1      OPC=nop             
  nop                             #  83    0x126881  1      OPC=nop             
  nop                             #  84    0x126882  1      OPC=nop             
  nop                             #  85    0x126883  1      OPC=nop             
  nop                             #  86    0x126884  1      OPC=nop             
  jne .L_126860                   #  87    0x126885  6      OPC=jne_label_1     
  nop                             #  88    0x12688b  1      OPC=nop             
  nop                             #  89    0x12688c  1      OPC=nop             
  nop                             #  90    0x12688d  1      OPC=nop             
  nop                             #  91    0x12688e  1      OPC=nop             
  nop                             #  92    0x12688f  1      OPC=nop             
  nop                             #  93    0x126890  1      OPC=nop             
  retq

.size strcpy, -.strcpy

