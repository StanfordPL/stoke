  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movq %rsi, %rdx                 #  1     0x1267e0  3      OPC=movq_r64_r64    
  movq %rdi, %rax                 #  2     0x1267e3  3      OPC=movq_r64_r64_1  
  movl %edi, %ecx                 #  3     0x1267e6  2      OPC=movl_r32_r32_1  
  nop                             #  4     0x1267e8  1      OPC=nop             
  nop                             #  5     0x1267e9  1      OPC=nop             
  nop                             #  6     0x1267ea  1      OPC=nop             
  nop                             #  7     0x1267eb  1      OPC=nop             
  andq $0x20, %rdi                #  8     0x1267ec  4      OPC=andq_r64_imm8   
  nop                             #  9     0x1267f0  1      OPC=nop             
  nop                             #  10    0x1267f1  1      OPC=nop             
  nop                             #  11    0x1267f2  1      OPC=nop             
  nop                             #  12    0x1267f3  1      OPC=nop             
  jne .L_126860                   #  13    0x1267f4  6      OPC=jne_label_1     
  movl %esi, %esi                 #  14    0x1267fa  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d        #  15    0x1267fc  4      OPC=movl_r32_m32    
  nop                             #  16    0x126800  1      OPC=nop             
  nop                             #  17    0x126801  1      OPC=nop             
  nop                             #  18    0x126802  1      OPC=nop             
  nop                             #  19    0x126803  1      OPC=nop             
  nop                             #  20    0x126804  1      OPC=nop             
  nop                             #  21    0x126805  1      OPC=nop             
  nop                             #  22    0x126806  1      OPC=nop             
  nop                             #  23    0x126807  1      OPC=nop             
  nop                             #  24    0x126808  1      OPC=nop             
  nop                             #  25    0x126809  1      OPC=nop             
  nop                             #  26    0x12680a  1      OPC=nop             
  nop                             #  27    0x12680b  1      OPC=nop             
  nop                             #  28    0x12680c  1      OPC=nop             
  nop                             #  29    0x12680d  1      OPC=nop             
  jne .L_126860                   #  30    0x12680e  6      OPC=jne_label_1     
  orb $0x3, %r8b                  #  31    0x126814  4      OPC=orb_r8_imm8     
  nop                             #  32    0x126818  1      OPC=nop             
  nop                             #  33    0x126819  1      OPC=nop             
  nop                             #  34    0x12681a  1      OPC=nop             
  nop                             #  35    0x12681b  1      OPC=nop             
  nop                             #  36    0x12681c  1      OPC=nop             
  nop                             #  37    0x12681d  1      OPC=nop             
  nop                             #  38    0x12681e  1      OPC=nop             
  nop                             #  39    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  movl %ecx, %ecx                 #  40    0x126820  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)        #  41    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %ecx                 #  42    0x126826  3      OPC=addl_r32_imm8   
  addl $0x4, %edx                 #  43    0x126829  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8         #  44    0x12682c  4      OPC=movq_r64_m64    
  movl %r8d, %r9d                 #  45    0x126830  3      OPC=movl_r32_r32    
  notl %r9d                       #  46    0x126833  3      OPC=notl_r32        
  leal -0x1010101(%r8), %esi      #  47    0x126836  7      OPC=leal_r32_m64    
  andq %rsi, %r9                  #  48    0x12683d  3      OPC=andq_r64_r64    
  andl $0x80808080, %r9d          #  49    0x126840  7      OPC=andl_r32_imm32  
  je .L_126820                    #  50    0x126847  6      OPC=je_label_1      
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
  movzbl -0x1(%r15,%rdx,1), %esi  #  71    0x126863  6      OPC=movzbl_r32_m8   
  addl $0x1, %ecx                 #  72    0x126869  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  73    0x12686c  5      OPC=movb_m8_r8      
  testb %cl, %sil                 #  74    0x126871  3      OPC=testb_r8_r8     
  nop                             #  75    0x126874  1      OPC=nop             
  nop                             #  76    0x126875  1      OPC=nop             
  nop                             #  77    0x126876  1      OPC=nop             
  nop                             #  78    0x126877  1      OPC=nop             
  nop                             #  79    0x126878  1      OPC=nop             
  nop                             #  80    0x126879  1      OPC=nop             
  nop                             #  81    0x12687a  1      OPC=nop             
  nop                             #  82    0x12687b  1      OPC=nop             
  nop                             #  83    0x12687c  1      OPC=nop             
  nop                             #  84    0x12687d  1      OPC=nop             
  nop                             #  85    0x12687e  1      OPC=nop             
  nop                             #  86    0x12687f  1      OPC=nop             
  nop                             #  87    0x126880  1      OPC=nop             
  nop                             #  88    0x126881  1      OPC=nop             
  nop                             #  89    0x126882  1      OPC=nop             
  jne .L_126860                   #  90    0x126883  6      OPC=jne_label_1     
  nop                             #  91    0x126889  1      OPC=nop             
  nop                             #  92    0x12688a  1      OPC=nop             
  nop                             #  93    0x12688b  1      OPC=nop             
  nop                             #  94    0x12688c  1      OPC=nop             
  nop                             #  95    0x12688d  1      OPC=nop             
  nop                             #  96    0x12688e  1      OPC=nop             
  nop                             #  97    0x12688f  1      OPC=nop             
  nop                             #  98    0x126890  1      OPC=nop             
  nop                             #  99    0x126891  1      OPC=nop             
  retq

.size strcpy, -.strcpy

