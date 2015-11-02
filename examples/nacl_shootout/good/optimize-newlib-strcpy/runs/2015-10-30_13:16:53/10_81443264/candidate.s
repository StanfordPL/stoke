  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  nop                         #  1     0x1267e0  1      OPC=nop             
  movl %edi, %eax             #  2     0x1267e1  2      OPC=movl_r32_r32    
  nop                         #  3     0x1267e3  1      OPC=nop             
  nop                         #  4     0x1267e4  1      OPC=nop             
  movq %rax, %rcx             #  5     0x1267e5  3      OPC=movq_r64_r64_1  
  nop                         #  6     0x1267e8  1      OPC=nop             
  nop                         #  7     0x1267e9  1      OPC=nop             
  addl %esi, %edi             #  8     0x1267ea  2      OPC=addl_r32_r32_1  
  movq %rsi, %rdx             #  9     0x1267ec  3      OPC=movq_r64_r64_1  
  andl $0x3, %edi             #  10    0x1267ef  3      OPC=andl_r32_imm8   
  nop                         #  11    0x1267f2  1      OPC=nop             
  jne .L_126860               #  12    0x1267f3  6      OPC=jne_label_1     
  andl %esi, %esi             #  13    0x1267f9  2      OPC=andl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  14    0x1267fb  4      OPC=movl_r32_m32    
  nop                         #  15    0x1267ff  1      OPC=nop             
  nop                         #  16    0x126800  1      OPC=nop             
  nop                         #  17    0x126801  1      OPC=nop             
  nop                         #  18    0x126802  1      OPC=nop             
  nop                         #  19    0x126803  1      OPC=nop             
  nop                         #  20    0x126804  1      OPC=nop             
  nop                         #  21    0x126805  1      OPC=nop             
  nop                         #  22    0x126806  1      OPC=nop             
  nop                         #  23    0x126807  1      OPC=nop             
  andl %edi, %edi             #  24    0x126808  2      OPC=andl_r32_r32_1  
  nop                         #  25    0x12680a  1      OPC=nop             
  nop                         #  26    0x12680b  1      OPC=nop             
  nop                         #  27    0x12680c  1      OPC=nop             
  nop                         #  28    0x12680d  1      OPC=nop             
  nop                         #  29    0x12680e  1      OPC=nop             
  nop                         #  30    0x12680f  1      OPC=nop             
  nop                         #  31    0x126810  1      OPC=nop             
  nop                         #  32    0x126811  1      OPC=nop             
  nop                         #  33    0x126812  1      OPC=nop             
  jne .L_126860               #  34    0x126813  6      OPC=jne_label_1     
  nop                         #  35    0x126819  1      OPC=nop             
  nop                         #  36    0x12681a  1      OPC=nop             
  nop                         #  37    0x12681b  1      OPC=nop             
  nop                         #  38    0x12681c  1      OPC=nop             
  nop                         #  39    0x12681d  1      OPC=nop             
  nop                         #  40    0x12681e  1      OPC=nop             
  nop                         #  41    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  nop                         #  42    0x126820  1      OPC=nop             
  nop                         #  43    0x126821  1      OPC=nop             
  nop                         #  44    0x126822  1      OPC=nop             
  nop                         #  45    0x126823  1      OPC=nop             
  nop                         #  46    0x126824  1      OPC=nop             
  andl %ecx, %ecx             #  47    0x126825  2      OPC=andl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  48    0x126827  4      OPC=movl_m32_r32    
  addq $0x4, %rcx             #  49    0x12682b  4      OPC=addq_r64_imm8   
  addl $0x4, %edx             #  50    0x12682f  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  51    0x126832  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  52    0x126836  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi  #  53    0x126839  7      OPC=leal_r32_m64    
  notl %r9d                   #  54    0x126840  3      OPC=notl_r32        
  andl %esi, %r9d             #  55    0x126843  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  56    0x126846  7      OPC=andl_r32_imm32  
  je .L_126820                #  57    0x12684d  6      OPC=je_label_1      
  nop                         #  58    0x126853  1      OPC=nop             
  nop                         #  59    0x126854  1      OPC=nop             
  nop                         #  60    0x126855  1      OPC=nop             
  nop                         #  61    0x126856  1      OPC=nop             
  nop                         #  62    0x126857  1      OPC=nop             
  nop                         #  63    0x126858  1      OPC=nop             
  nop                         #  64    0x126859  1      OPC=nop             
  nop                         #  65    0x12685a  1      OPC=nop             
  nop                         #  66    0x12685b  1      OPC=nop             
  nop                         #  67    0x12685c  1      OPC=nop             
  nop                         #  68    0x12685d  1      OPC=nop             
  nop                         #  69    0x12685e  1      OPC=nop             
  nop                         #  70    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  xorl %esp, %edx             #  71    0x126860  2      OPC=xorl_r32_r32    
  movzbq (%r15,%rdx,1), %rsi  #  72    0x126862  5      OPC=movzbq_r64_m8   
  andl %ecx, %ecx             #  73    0x126867  2      OPC=andl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  74    0x126869  4      OPC=movb_m8_r8      
  addq $0x1, %rcx             #  75    0x12686d  4      OPC=addq_r64_imm8   
  addl $0x1, %edx             #  76    0x126871  6      OPC=addl_r32_imm32  
  testb %sil, %sil            #  77    0x126877  3      OPC=testb_r8_r8     
  jne .L_126860               #  78    0x12687a  6      OPC=jne_label_1     
  nop                         #  79    0x126880  1      OPC=nop             
  nop                         #  80    0x126881  1      OPC=nop             
  nop                         #  81    0x126882  1      OPC=nop             
  nop                         #  82    0x126883  1      OPC=nop             
  nop                         #  83    0x126884  1      OPC=nop             
  nop                         #  84    0x126885  1      OPC=nop             
  retq

.size strcpy, -.strcpy

