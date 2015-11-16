  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strcpy:                        #        0x1267e0  0      OPC=<label>         
  movl %edi, %ecx               #  1     0x1267e0  2      OPC=movl_r32_r32    
  nop                           #  2     0x1267e2  1      OPC=nop             
  nop                           #  3     0x1267e3  1      OPC=nop             
  nop                           #  4     0x1267e4  1      OPC=nop             
  nop                           #  5     0x1267e5  1      OPC=nop             
  nop                           #  6     0x1267e6  1      OPC=nop             
  nop                           #  7     0x1267e7  1      OPC=nop             
  nop                           #  8     0x1267e8  1      OPC=nop             
  nop                           #  9     0x1267e9  1      OPC=nop             
  movq %rsi, %rdx               #  10    0x1267ea  3      OPC=movq_r64_r64    
  nop                           #  11    0x1267ed  1      OPC=nop             
  nop                           #  12    0x1267ee  1      OPC=nop             
  andl $0x3, %esi               #  13    0x1267ef  6      OPC=andl_r32_imm32  
  movl %ecx, %eax               #  14    0x1267f5  2      OPC=movl_r32_r32    
  jne .L_126860                 #  15    0x1267f7  6      OPC=jne_label_1     
  nop                           #  16    0x1267fd  1      OPC=nop             
  nop                           #  17    0x1267fe  1      OPC=nop             
  nop                           #  18    0x1267ff  1      OPC=nop             
  movl %edx, %esi               #  19    0x126800  2      OPC=movl_r32_r32    
  movq (%r15,%rsi,1), %r8       #  20    0x126802  4      OPC=movq_r64_m64    
  nop                           #  21    0x126806  1      OPC=nop             
  nop                           #  22    0x126807  1      OPC=nop             
  nop                           #  23    0x126808  1      OPC=nop             
  nop                           #  24    0x126809  1      OPC=nop             
  nop                           #  25    0x12680a  1      OPC=nop             
  nop                           #  26    0x12680b  1      OPC=nop             
  nop                           #  27    0x12680c  1      OPC=nop             
  nop                           #  28    0x12680d  1      OPC=nop             
  nop                           #  29    0x12680e  1      OPC=nop             
  nop                           #  30    0x12680f  1      OPC=nop             
  nop                           #  31    0x126810  1      OPC=nop             
  nop                           #  32    0x126811  1      OPC=nop             
  nop                           #  33    0x126812  1      OPC=nop             
  nop                           #  34    0x126813  1      OPC=nop             
  nop                           #  35    0x126814  1      OPC=nop             
  nop                           #  36    0x126815  1      OPC=nop             
  nop                           #  37    0x126816  1      OPC=nop             
  nop                           #  38    0x126817  1      OPC=nop             
  nop                           #  39    0x126818  1      OPC=nop             
  nop                           #  40    0x126819  1      OPC=nop             
  jne .L_126860                 #  41    0x12681a  6      OPC=jne_label_1     
.L_126820:                      #        0x126820  0      OPC=<label>         
  nop                           #  42    0x126820  1      OPC=nop             
  nop                           #  43    0x126821  1      OPC=nop             
  nop                           #  44    0x126822  1      OPC=nop             
  nop                           #  45    0x126823  1      OPC=nop             
  nop                           #  46    0x126824  1      OPC=nop             
  nop                           #  47    0x126825  1      OPC=nop             
  nop                           #  48    0x126826  1      OPC=nop             
  addl $0x4, %ecx               #  49    0x126827  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)  #  50    0x12682a  5      OPC=movl_m32_r32    
  addl $0x4, %edx               #  51    0x12682f  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d      #  52    0x126832  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi    #  53    0x126836  7      OPC=leal_r32_m16    
  movq %r8, %r9                 #  54    0x12683d  3      OPC=movq_r64_r64    
  xorl $0x80, %r9d              #  55    0x126840  4      OPC=xorl_r32_imm8   
  andl $0x80808080, %esi        #  56    0x126844  6      OPC=andl_r32_imm32  
  andl %esi, %r9d               #  57    0x12684a  3      OPC=andl_r32_r32    
  je .L_126820                  #  58    0x12684d  6      OPC=je_label_1      
  nop                           #  59    0x126853  1      OPC=nop             
  nop                           #  60    0x126854  1      OPC=nop             
  nop                           #  61    0x126855  1      OPC=nop             
  nop                           #  62    0x126856  1      OPC=nop             
  nop                           #  63    0x126857  1      OPC=nop             
  nop                           #  64    0x126858  1      OPC=nop             
  nop                           #  65    0x126859  1      OPC=nop             
  nop                           #  66    0x12685a  1      OPC=nop             
  nop                           #  67    0x12685b  1      OPC=nop             
  nop                           #  68    0x12685c  1      OPC=nop             
  nop                           #  69    0x12685d  1      OPC=nop             
  nop                           #  70    0x12685e  1      OPC=nop             
  nop                           #  71    0x12685f  1      OPC=nop             
.L_126860:                      #        0x126860  0      OPC=<label>         
  orl %ebp, %edx                #  72    0x126860  2      OPC=orl_r32_r32     
  movzbl (%r15,%rdx,1), %esi    #  73    0x126862  5      OPC=movzbl_r32_m8   
  addl $0x1, %ecx               #  74    0x126867  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)  #  75    0x12686a  5      OPC=movb_m8_r8      
  addq $0x1, %rdx               #  76    0x12686f  4      OPC=addq_r64_imm8   
  testb %sil, %sil              #  77    0x126873  3      OPC=testb_r8_r8     
  jne .L_126860                 #  78    0x126876  6      OPC=jne_label_1     
  nop                           #  79    0x12687c  1      OPC=nop             
  nop                           #  80    0x12687d  1      OPC=nop             
  nop                           #  81    0x12687e  1      OPC=nop             
  nop                           #  82    0x12687f  1      OPC=nop             
  nop                           #  83    0x126880  1      OPC=nop             
  nop                           #  84    0x126881  1      OPC=nop             
  nop                           #  85    0x126882  1      OPC=nop             
  nop                           #  86    0x126883  1      OPC=nop             
  nop                           #  87    0x126884  1      OPC=nop             
  nop                           #  88    0x126885  1      OPC=nop             
  nop                           #  89    0x126886  1      OPC=nop             
  nop                           #  90    0x126887  1      OPC=nop             
  nop                           #  91    0x126888  1      OPC=nop             
  nop                           #  92    0x126889  1      OPC=nop             
  nop                           #  93    0x12688a  1      OPC=nop             
  nop                           #  94    0x12688b  1      OPC=nop             
  nop                           #  95    0x12688c  1      OPC=nop             
  nop                           #  96    0x12688d  1      OPC=nop             
  nop                           #  97    0x12688e  1      OPC=nop             
  retq

.size strcpy, -.strcpy

