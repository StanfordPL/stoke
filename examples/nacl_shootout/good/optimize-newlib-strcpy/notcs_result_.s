  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  nop                         #  1     0x1267e0  1      OPC=nop             
  movl %esi, %edx             #  2     0x1267e1  2      OPC=movl_r32_r32    
  movl %edi, %eax             #  3     0x1267e3  2      OPC=movl_r32_r32    
  orl %esi, %edi              #  4     0x1267e5  2      OPC=orl_r32_r32     
  andl $0x1, %edi             #  5     0x1267e7  3      OPC=andl_r32_imm8   
  movq %rax, %rcx             #  6     0x1267ea  3      OPC=movq_r64_r64_1  
  jne .L_126860               #  7     0x1267ed  6      OPC=jne_label_1     
  nop                         #  8     0x1267f3  1      OPC=nop             
  nop                         #  9     0x1267f4  1      OPC=nop             
  nop                         #  10    0x1267f5  1      OPC=nop             
  nop                         #  11    0x1267f6  1      OPC=nop             
  nop                         #  12    0x1267f7  1      OPC=nop             
  nop                         #  13    0x1267f8  1      OPC=nop             
  movl %esi, %esi             #  14    0x1267f9  2      OPC=movl_r32_r32_1  
  movq (%r15,%rsi,1), %r8     #  15    0x1267fb  4      OPC=movq_r64_m64    
  nop                         #  16    0x1267ff  1      OPC=nop             
  nop                         #  17    0x126800  1      OPC=nop             
  nop                         #  18    0x126801  1      OPC=nop             
  nop                         #  19    0x126802  1      OPC=nop             
  nop                         #  20    0x126803  1      OPC=nop             
  nop                         #  21    0x126804  1      OPC=nop             
  nop                         #  22    0x126805  1      OPC=nop             
  nop                         #  23    0x126806  1      OPC=nop             
  nop                         #  24    0x126807  1      OPC=nop             
  nop                         #  25    0x126808  1      OPC=nop             
  nop                         #  26    0x126809  1      OPC=nop             
  nop                         #  27    0x12680a  1      OPC=nop             
  nop                         #  28    0x12680b  1      OPC=nop             
  nop                         #  29    0x12680c  1      OPC=nop             
  nop                         #  30    0x12680d  1      OPC=nop             
  nop                         #  31    0x12680e  1      OPC=nop             
  nop                         #  32    0x12680f  1      OPC=nop             
  nop                         #  33    0x126810  1      OPC=nop             
  nop                         #  34    0x126811  1      OPC=nop             
  jne .L_126860               #  35    0x126812  6      OPC=jne_label_1     
  nop                         #  36    0x126818  1      OPC=nop             
  nop                         #  37    0x126819  1      OPC=nop             
  nop                         #  38    0x12681a  1      OPC=nop             
  nop                         #  39    0x12681b  1      OPC=nop             
  nop                         #  40    0x12681c  1      OPC=nop             
  nop                         #  41    0x12681d  1      OPC=nop             
  nop                         #  42    0x12681e  1      OPC=nop             
  nop                         #  43    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  movl %ecx, %ecx             #  44    0x126820  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  45    0x126822  4      OPC=movl_m32_r32    
  nop                         #  46    0x126826  1      OPC=nop             
  nop                         #  47    0x126827  1      OPC=nop             
  nop                         #  48    0x126828  1      OPC=nop             
  addq $0x4, %rcx             #  49    0x126829  7      OPC=addq_r64_imm32  
  addl $0x4, %edx             #  50    0x126830  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  51    0x126833  4      OPC=movl_r32_m32    
  nop                         #  52    0x126837  1      OPC=nop             
  movl $0xfffffff8, %r9d      #  53    0x126838  6      OPC=movl_r32_imm32  
  nop                         #  54    0x12683e  1      OPC=nop             
  nop                         #  55    0x12683f  1      OPC=nop             
  nop                         #  56    0x126840  1      OPC=nop             
  nop                         #  57    0x126841  1      OPC=nop             
  leal -0x1010101(%r8), %esi  #  58    0x126842  7      OPC=leal_r32_m16    
  andb %sil, %r9b             #  59    0x126849  3      OPC=andb_r8_r8      
  je .L_126820                #  60    0x12684c  6      OPC=je_label_1      
  nop                         #  61    0x126852  1      OPC=nop             
  nop                         #  62    0x126853  1      OPC=nop             
  nop                         #  63    0x126854  1      OPC=nop             
  nop                         #  64    0x126855  1      OPC=nop             
  nop                         #  65    0x126856  1      OPC=nop             
  nop                         #  66    0x126857  1      OPC=nop             
  nop                         #  67    0x126858  1      OPC=nop             
  nop                         #  68    0x126859  1      OPC=nop             
  nop                         #  69    0x12685a  1      OPC=nop             
  nop                         #  70    0x12685b  1      OPC=nop             
  nop                         #  71    0x12685c  1      OPC=nop             
  nop                         #  72    0x12685d  1      OPC=nop             
  nop                         #  73    0x12685e  1      OPC=nop             
  nop                         #  74    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  nop                         #  75    0x126860  1      OPC=nop             
  nop                         #  76    0x126861  1      OPC=nop             
  nop                         #  77    0x126862  1      OPC=nop             
  nop                         #  78    0x126863  1      OPC=nop             
  nop                         #  79    0x126864  1      OPC=nop             
  nop                         #  80    0x126865  1      OPC=nop             
  nop                         #  81    0x126866  1      OPC=nop             
  addl %edi, %edx             #  82    0x126867  2      OPC=addl_r32_r32    
  movsbl (%r15,%rdx,1), %esi  #  83    0x126869  5      OPC=movsbl_r32_m8   
  andl %ecx, %ecx             #  84    0x12686e  2      OPC=andl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)    #  85    0x126870  4      OPC=movb_m8_r8      
  nop                         #  86    0x126874  1      OPC=nop             
  nop                         #  87    0x126875  1      OPC=nop             
  nop                         #  88    0x126876  1      OPC=nop             
  nop                         #  89    0x126877  1      OPC=nop             
  nop                         #  90    0x126878  1      OPC=nop             
  nop                         #  91    0x126879  1      OPC=nop             
  nop                         #  92    0x12687a  1      OPC=nop             
  nop                         #  93    0x12687b  1      OPC=nop             
  nop                         #  94    0x12687c  1      OPC=nop             
  nop                         #  95    0x12687d  1      OPC=nop             
  nop                         #  96    0x12687e  1      OPC=nop             
  nop                         #  97    0x12687f  1      OPC=nop             
  andq $0xfffffffe, %rdi      #  98    0x126880  7      OPC=andq_r64_imm32  
  jne .L_126860               #  99    0x126887  6      OPC=jne_label_1     
  popq %r11                   #  100   0x12688d  2      OPC=popq_r64_1      
  andl $0xe0, %r11d           #  101   0x12688f  4      OPC=andl_r32_imm8   
  addq %r15, %r11             #  102   0x126893  3      OPC=addq_r64_r64    
  jmpq %r11                   #  103   0x126896  3      OPC=jmpq_r64        
                                                                            
.size strcpy, .-strcpy
