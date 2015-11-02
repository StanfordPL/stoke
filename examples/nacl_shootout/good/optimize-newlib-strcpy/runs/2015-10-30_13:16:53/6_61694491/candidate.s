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
  movl %edi, %eax                 #  12    0x1267eb  2      OPC=movl_r32_r32    
  nop                             #  13    0x1267ed  1      OPC=nop             
  nop                             #  14    0x1267ee  1      OPC=nop             
  nop                             #  15    0x1267ef  1      OPC=nop             
  nop                             #  16    0x1267f0  1      OPC=nop             
  nop                             #  17    0x1267f1  1      OPC=nop             
  nop                             #  18    0x1267f2  1      OPC=nop             
  nop                             #  19    0x1267f3  1      OPC=nop             
  movl %eax, %ecx                 #  20    0x1267f4  2      OPC=movl_r32_r32_1  
  nop                             #  21    0x1267f6  1      OPC=nop             
  andl $0x8, %edi                 #  22    0x1267f7  6      OPC=andl_r32_imm32  
  movl %esi, %edx                 #  23    0x1267fd  2      OPC=movl_r32_r32_1  
  nop                             #  24    0x1267ff  1      OPC=nop             
  jne .L_126860                   #  25    0x126800  6      OPC=jne_label_1     
  nop                             #  26    0x126806  1      OPC=nop             
  nop                             #  27    0x126807  1      OPC=nop             
  nop                             #  28    0x126808  1      OPC=nop             
  nop                             #  29    0x126809  1      OPC=nop             
  nop                             #  30    0x12680a  1      OPC=nop             
  nop                             #  31    0x12680b  1      OPC=nop             
  nop                             #  32    0x12680c  1      OPC=nop             
  shll $0x10, %edi                #  33    0x12680d  3      OPC=shll_r32_imm8   
  movl %esi, %esi                 #  34    0x126810  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d        #  35    0x126812  4      OPC=movl_r32_m32    
  nop                             #  36    0x126816  1      OPC=nop             
  nop                             #  37    0x126817  1      OPC=nop             
  nop                             #  38    0x126818  1      OPC=nop             
  nop                             #  39    0x126819  1      OPC=nop             
  jne .L_126860                   #  40    0x12681a  6      OPC=jne_label_1     
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  41    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)    #  42    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  43    0x126828  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8         #  44    0x12682b  4      OPC=movq_r64_m64    
  leaw -0x1010101(%r8), %r9w      #  45    0x12682f  8      OPC=leaw_r16_m16    
  xorw %r8w, %r9w                 #  46    0x126837  4      OPC=xorw_r16_r16    
  andw $0x40, %r9w                #  47    0x12683b  5      OPC=andw_r16_imm8   
  je .L_126820                    #  48    0x126840  6      OPC=je_label_1      
  nop                             #  49    0x126846  1      OPC=nop             
  nop                             #  50    0x126847  1      OPC=nop             
  nop                             #  51    0x126848  1      OPC=nop             
  nop                             #  52    0x126849  1      OPC=nop             
  nopl %eax                       #  53    0x12684a  3      OPC=nopl_r32        
  nop                             #  54    0x12684d  1      OPC=nop             
  nop                             #  55    0x12684e  1      OPC=nop             
  nop                             #  56    0x12684f  1      OPC=nop             
  nop                             #  57    0x126850  1      OPC=nop             
  nop                             #  58    0x126851  1      OPC=nop             
  nop                             #  59    0x126852  1      OPC=nop             
  nop                             #  60    0x126853  1      OPC=nop             
  nop                             #  61    0x126854  1      OPC=nop             
  nop                             #  62    0x126855  1      OPC=nop             
  nop                             #  63    0x126856  1      OPC=nop             
  nop                             #  64    0x126857  1      OPC=nop             
  nop                             #  65    0x126858  1      OPC=nop             
  nop                             #  66    0x126859  1      OPC=nop             
  nop                             #  67    0x12685a  1      OPC=nop             
  nop                             #  68    0x12685b  1      OPC=nop             
  nop                             #  69    0x12685c  1      OPC=nop             
  nop                             #  70    0x12685d  1      OPC=nop             
  nop                             #  71    0x12685e  1      OPC=nop             
  nop                             #  72    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  incl %edx                       #  73    0x126860  2      OPC=incl_r32        
  movsbl -0x1(%r15,%rdx,1), %esi  #  74    0x126862  6      OPC=movsbl_r32_m8   
  incl %ecx                       #  75    0x126868  2      OPC=incl_r32        
  movb %sil, -0x1(%r15,%rcx,1)    #  76    0x12686a  5      OPC=movb_m8_r8      
  shlw $0x7, %si                  #  77    0x12686f  4      OPC=shlw_r16_imm8   
  jne .L_126860                   #  78    0x126873  6      OPC=jne_label_1     
  nop                             #  79    0x126879  1      OPC=nop             
  nop                             #  80    0x12687a  1      OPC=nop             
  nop                             #  81    0x12687b  1      OPC=nop             
  nop                             #  82    0x12687c  1      OPC=nop             
  nop                             #  83    0x12687d  1      OPC=nop             
  nop                             #  84    0x12687e  1      OPC=nop             
  nop                             #  85    0x12687f  1      OPC=nop             
  nop                             #  86    0x126880  1      OPC=nop             
  nop                             #  87    0x126881  1      OPC=nop             
  nop                             #  88    0x126882  1      OPC=nop             
  nop                             #  89    0x126883  1      OPC=nop             
  nop                             #  90    0x126884  1      OPC=nop             
  nop                             #  91    0x126885  1      OPC=nop             
  nop                             #  92    0x126886  1      OPC=nop             
  nop                             #  93    0x126887  1      OPC=nop             
  nop                             #  94    0x126888  1      OPC=nop             
  nop                             #  95    0x126889  1      OPC=nop             
  nop                             #  96    0x12688a  1      OPC=nop             
  nop                             #  97    0x12688b  1      OPC=nop             
  nop                             #  98    0x12688c  1      OPC=nop             
  nop                             #  99    0x12688d  1      OPC=nop             
  nop                             #  100   0x12688e  1      OPC=nop             
  nop                             #  101   0x12688f  1      OPC=nop             
  retq

.size strcpy, -.strcpy

