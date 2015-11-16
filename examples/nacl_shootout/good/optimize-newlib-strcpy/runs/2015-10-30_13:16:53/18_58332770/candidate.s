  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strcpy:                         #        0x1267e0  0      OPC=<label>         
  nop                            #  1     0x1267e0  1      OPC=nop             
  nop                            #  2     0x1267e1  1      OPC=nop             
  movl %edi, %ecx                #  3     0x1267e2  2      OPC=movl_r32_r32_1  
  nop                            #  4     0x1267e4  1      OPC=nop             
  nop                            #  5     0x1267e5  1      OPC=nop             
  movq %rsi, %rdx                #  6     0x1267e6  3      OPC=movq_r64_r64    
  movq %rcx, %rax                #  7     0x1267e9  3      OPC=movq_r64_r64_1  
  nop                            #  8     0x1267ec  1      OPC=nop             
  andq $0x1, %rdi                #  9     0x1267ed  4      OPC=andq_r64_imm8   
  jne .L_126860                  #  10    0x1267f1  6      OPC=jne_label_1     
  nop                            #  11    0x1267f7  1      OPC=nop             
  orl %ebp, %esi                 #  12    0x1267f8  2      OPC=orl_r32_r32_1   
  movq (%r15,%rsi,1), %r8        #  13    0x1267fa  4      OPC=movq_r64_m64    
  nop                            #  14    0x1267fe  1      OPC=nop             
  nop                            #  15    0x1267ff  1      OPC=nop             
  nop                            #  16    0x126800  1      OPC=nop             
  nop                            #  17    0x126801  1      OPC=nop             
  nop                            #  18    0x126802  1      OPC=nop             
  nop                            #  19    0x126803  1      OPC=nop             
  nop                            #  20    0x126804  1      OPC=nop             
  nop                            #  21    0x126805  1      OPC=nop             
  nop                            #  22    0x126806  1      OPC=nop             
  nop                            #  23    0x126807  1      OPC=nop             
  nop                            #  24    0x126808  1      OPC=nop             
  nop                            #  25    0x126809  1      OPC=nop             
  nop                            #  26    0x12680a  1      OPC=nop             
  nop                            #  27    0x12680b  1      OPC=nop             
  andl $0x20, %esi               #  28    0x12680c  6      OPC=andl_r32_imm32  
  jne .L_126860                  #  29    0x126812  6      OPC=jne_label_1     
  nop                            #  30    0x126818  1      OPC=nop             
  nop                            #  31    0x126819  1      OPC=nop             
  nop                            #  32    0x12681a  1      OPC=nop             
  nop                            #  33    0x12681b  1      OPC=nop             
  nop                            #  34    0x12681c  1      OPC=nop             
  nop                            #  35    0x12681d  1      OPC=nop             
  nop                            #  36    0x12681e  1      OPC=nop             
  nop                            #  37    0x12681f  1      OPC=nop             
.L_126820:                       #        0x126820  0      OPC=<label>         
  nop                            #  38    0x126820  1      OPC=nop             
  nop                            #  39    0x126821  1      OPC=nop             
  nop                            #  40    0x126822  1      OPC=nop             
  nop                            #  41    0x126823  1      OPC=nop             
  nop                            #  42    0x126824  1      OPC=nop             
  nop                            #  43    0x126825  1      OPC=nop             
  nop                            #  44    0x126826  1      OPC=nop             
  nop                            #  45    0x126827  1      OPC=nop             
  nop                            #  46    0x126828  1      OPC=nop             
  nop                            #  47    0x126829  1      OPC=nop             
  nop                            #  48    0x12682a  1      OPC=nop             
  nop                            #  49    0x12682b  1      OPC=nop             
  nop                            #  50    0x12682c  1      OPC=nop             
  nop                            #  51    0x12682d  1      OPC=nop             
  addl $0x4, %ecx                #  52    0x12682e  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)   #  53    0x126831  5      OPC=movl_m32_r32    
  addl $0x4, %edx                #  54    0x126836  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d       #  55    0x126839  4      OPC=movl_r32_m32    
  movq %r8, %r9                  #  56    0x12683d  3      OPC=movq_r64_r64    
  notq %r9                       #  57    0x126840  3      OPC=notq_r64        
  leaq -0x1010101(%r8), %rsi     #  58    0x126843  7      OPC=leaq_r64_m32    
  andl $0x80808080, %r9d         #  59    0x12684a  7      OPC=andl_r32_imm32  
  andq %rsi, %r9                 #  60    0x126851  3      OPC=andq_r64_r64    
  je .L_126820                   #  61    0x126854  6      OPC=je_label_1      
  nop                            #  62    0x12685a  1      OPC=nop             
  nop                            #  63    0x12685b  1      OPC=nop             
  nop                            #  64    0x12685c  1      OPC=nop             
  nop                            #  65    0x12685d  1      OPC=nop             
  nop                            #  66    0x12685e  1      OPC=nop             
  nop                            #  67    0x12685f  1      OPC=nop             
.L_126860:                       #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                #  68    0x126860  3      OPC=addl_r32_imm8   
  movzbw -0x1(%r15,%rdx,1), %si  #  69    0x126863  7      OPC=movzbw_r16_m8   
  addl $0x1, %ecx                #  70    0x12686a  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)   #  71    0x126870  5      OPC=movb_m8_r8      
  shlb $0x1, %sil                #  72    0x126875  3      OPC=shlb_r8_one     
  jne .L_126860                  #  73    0x126878  6      OPC=jne_label_1     
  nop                            #  74    0x12687e  1      OPC=nop             
  nop                            #  75    0x12687f  1      OPC=nop             
  nop                            #  76    0x126880  1      OPC=nop             
  nop                            #  77    0x126881  1      OPC=nop             
  nop                            #  78    0x126882  1      OPC=nop             
  nop                            #  79    0x126883  1      OPC=nop             
  nop                            #  80    0x126884  1      OPC=nop             
  nop                            #  81    0x126885  1      OPC=nop             
  nop                            #  82    0x126886  1      OPC=nop             
  nop                            #  83    0x126887  1      OPC=nop             
  nop                            #  84    0x126888  1      OPC=nop             
  nop                            #  85    0x126889  1      OPC=nop             
  nop                            #  86    0x12688a  1      OPC=nop             
  nop                            #  87    0x12688b  1      OPC=nop             
  nop                            #  88    0x12688c  1      OPC=nop             
  nop                            #  89    0x12688d  1      OPC=nop             
  nop                            #  90    0x12688e  1      OPC=nop             
  nop                            #  91    0x12688f  1      OPC=nop             
  nop                            #  92    0x126890  1      OPC=nop             
  nop                            #  93    0x126891  1      OPC=nop             
  retq

.size strcpy, -.strcpy

