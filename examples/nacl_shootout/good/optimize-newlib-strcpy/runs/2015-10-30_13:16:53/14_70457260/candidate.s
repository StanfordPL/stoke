  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %edi, %ecx                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  nop                             #  2     0x1267e2  1      OPC=nop             
  movq %rcx, %rax                 #  3     0x1267e3  3      OPC=movq_r64_r64    
  nop                             #  4     0x1267e6  1      OPC=nop             
  movl %esi, %edx                 #  5     0x1267e7  2      OPC=movl_r32_r32_1  
  xorb %sil, %dil                 #  6     0x1267e9  3      OPC=xorb_r8_r8_1    
  andw $0x7, %di                  #  7     0x1267ec  4      OPC=andw_r16_imm8   
  jne .L_126860                   #  8     0x1267f0  6      OPC=jne_label_1     
  nop                             #  9     0x1267f6  1      OPC=nop             
  orl %esp, %esi                  #  10    0x1267f7  2      OPC=orl_r32_r32_1   
  movq (%r15,%rsi,1), %r8         #  11    0x1267f9  4      OPC=movq_r64_m64    
  nop                             #  12    0x1267fd  1      OPC=nop             
  nop                             #  13    0x1267fe  1      OPC=nop             
  nop                             #  14    0x1267ff  1      OPC=nop             
  nop                             #  15    0x126800  1      OPC=nop             
  nop                             #  16    0x126801  1      OPC=nop             
  nop                             #  17    0x126802  1      OPC=nop             
  andq $0x80808080, %rdi          #  18    0x126803  7      OPC=andq_r64_imm32  
  nop                             #  19    0x12680a  1      OPC=nop             
  shlb %cl, %ch                   #  20    0x12680b  2      OPC=shlb_rh_cl      
  nop                             #  21    0x12680d  1      OPC=nop             
  nop                             #  22    0x12680e  1      OPC=nop             
  nop                             #  23    0x12680f  1      OPC=nop             
  nop                             #  24    0x126810  1      OPC=nop             
  nop                             #  25    0x126811  1      OPC=nop             
  nop                             #  26    0x126812  1      OPC=nop             
  nop                             #  27    0x126813  1      OPC=nop             
  nop                             #  28    0x126814  1      OPC=nop             
  nop                             #  29    0x126815  1      OPC=nop             
  nop                             #  30    0x126816  1      OPC=nop             
  nop                             #  31    0x126817  1      OPC=nop             
  nop                             #  32    0x126818  1      OPC=nop             
  nop                             #  33    0x126819  1      OPC=nop             
  jne .L_126860                   #  34    0x12681a  6      OPC=jne_label_1     
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  35    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)    #  36    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  37    0x126828  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  38    0x12682b  4      OPC=movl_r32_m32    
  movq %r8, %r9                   #  39    0x12682f  3      OPC=movq_r64_r64_1  
  notq %r9                        #  40    0x126832  3      OPC=notq_r64        
  leaq -0x1010101(%r8), %rsi      #  41    0x126835  7      OPC=leaq_r64_m32    
  nop                             #  42    0x12683c  1      OPC=nop             
  andq %rsi, %r9                  #  43    0x12683d  3      OPC=andq_r64_r64    
  andl $0x80808080, %r9d          #  44    0x126840  7      OPC=andl_r32_imm32  
  je .L_126820                    #  45    0x126847  6      OPC=je_label_1      
  nop                             #  46    0x12684d  1      OPC=nop             
  nop                             #  47    0x12684e  1      OPC=nop             
  nop                             #  48    0x12684f  1      OPC=nop             
  nop                             #  49    0x126850  1      OPC=nop             
  nop                             #  50    0x126851  1      OPC=nop             
  nop                             #  51    0x126852  1      OPC=nop             
  nop                             #  52    0x126853  1      OPC=nop             
  nop                             #  53    0x126854  1      OPC=nop             
  nop                             #  54    0x126855  1      OPC=nop             
  nop                             #  55    0x126856  1      OPC=nop             
  nop                             #  56    0x126857  1      OPC=nop             
  nop                             #  57    0x126858  1      OPC=nop             
  nop                             #  58    0x126859  1      OPC=nop             
  nop                             #  59    0x12685a  1      OPC=nop             
  nop                             #  60    0x12685b  1      OPC=nop             
  nop                             #  61    0x12685c  1      OPC=nop             
  nop                             #  62    0x12685d  1      OPC=nop             
  nop                             #  63    0x12685e  1      OPC=nop             
  nop                             #  64    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  65    0x126860  6      OPC=addl_r32_imm32  
  movzbq -0x1(%r15,%rdx,1), %rsi  #  66    0x126866  6      OPC=movzbq_r64_m8   
  incl %ecx                       #  67    0x12686c  2      OPC=incl_r32        
  movb %sil, -0x1(%r15,%rcx,1)    #  68    0x12686e  5      OPC=movb_m8_r8      
  subw %sp, %si                   #  69    0x126873  3      OPC=subw_r16_r16    
  jne .L_126860                   #  70    0x126876  6      OPC=jne_label_1     
  nop                             #  71    0x12687c  1      OPC=nop             
  nop                             #  72    0x12687d  1      OPC=nop             
  nop                             #  73    0x12687e  1      OPC=nop             
  nop                             #  74    0x12687f  1      OPC=nop             
  nop                             #  75    0x126880  1      OPC=nop             
  nop                             #  76    0x126881  1      OPC=nop             
  nop                             #  77    0x126882  1      OPC=nop             
  nop                             #  78    0x126883  1      OPC=nop             
  nop                             #  79    0x126884  1      OPC=nop             
  nop                             #  80    0x126885  1      OPC=nop             
  nop                             #  81    0x126886  1      OPC=nop             
  nop                             #  82    0x126887  1      OPC=nop             
  nop                             #  83    0x126888  1      OPC=nop             
  nop                             #  84    0x126889  1      OPC=nop             
  nop                             #  85    0x12688a  1      OPC=nop             
  nop                             #  86    0x12688b  1      OPC=nop             
  nop                             #  87    0x12688c  1      OPC=nop             
  nop                             #  88    0x12688d  1      OPC=nop             
  nop                             #  89    0x12688e  1      OPC=nop             
  nop                             #  90    0x12688f  1      OPC=nop             
  nop                             #  91    0x126890  1      OPC=nop             
  nop                             #  92    0x126891  1      OPC=nop             
  nop                             #  93    0x126892  1      OPC=nop             
  nop                             #  94    0x126893  1      OPC=nop             
  nop                             #  95    0x126894  1      OPC=nop             
  nop                             #  96    0x126895  1      OPC=nop             
  nop                             #  97    0x126896  1      OPC=nop             
  nop                             #  98    0x126897  1      OPC=nop             
  nop                             #  99    0x126898  1      OPC=nop             
  nop                             #  100   0x126899  1      OPC=nop             
  nop                             #  101   0x12689a  1      OPC=nop             
  nop                             #  102   0x12689b  1      OPC=nop             
  nop                             #  103   0x12689c  1      OPC=nop             
  nop                             #  104   0x12689d  1      OPC=nop             
  nop                             #  105   0x12689e  1      OPC=nop             
  nop                             #  106   0x12689f  1      OPC=nop             
  nop                             #  107   0x1268a0  1      OPC=nop             
  nop                             #  108   0x1268a1  1      OPC=nop             
  nop                             #  109   0x1268a2  1      OPC=nop             
  nop                             #  110   0x1268a3  1      OPC=nop             
  nop                             #  111   0x1268a4  1      OPC=nop             
  nop                             #  112   0x1268a5  1      OPC=nop             
  nop                             #  113   0x1268a6  1      OPC=nop             
  nop                             #  114   0x1268a7  1      OPC=nop             
  nop                             #  115   0x1268a8  1      OPC=nop             
  nop                             #  116   0x1268a9  1      OPC=nop             
  nop                             #  117   0x1268aa  1      OPC=nop             
  nop                             #  118   0x1268ab  1      OPC=nop             
  nop                             #  119   0x1268ac  1      OPC=nop             
  nop                             #  120   0x1268ad  1      OPC=nop             
  retq

.size strcpy, -.strcpy

