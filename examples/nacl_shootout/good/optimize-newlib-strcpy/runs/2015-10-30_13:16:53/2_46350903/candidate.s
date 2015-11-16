  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strcpy:                        #        0x1267e0  0      OPC=<label>         
  nop                           #  1     0x1267e0  1      OPC=nop             
  nop                           #  2     0x1267e1  1      OPC=nop             
  movl %edi, %eax               #  3     0x1267e2  2      OPC=movl_r32_r32_1  
  nop                           #  4     0x1267e4  1      OPC=nop             
  andq $0x8, %rdi               #  5     0x1267e5  4      OPC=andq_r64_imm8   
  movq %rsi, %rdx               #  6     0x1267e9  3      OPC=movq_r64_r64    
  movq %rax, %rcx               #  7     0x1267ec  3      OPC=movq_r64_r64    
  nop                           #  8     0x1267ef  1      OPC=nop             
  nop                           #  9     0x1267f0  1      OPC=nop             
  nop                           #  10    0x1267f1  1      OPC=nop             
  nop                           #  11    0x1267f2  1      OPC=nop             
  jne .L_126860                 #  12    0x1267f3  6      OPC=jne_label_1     
  nop                           #  13    0x1267f9  1      OPC=nop             
  xorl %esp, %esi               #  14    0x1267fa  2      OPC=xorl_r32_r32_1  
  movq (%r15,%rsi,1), %r8       #  15    0x1267fc  4      OPC=movq_r64_m64    
  nop                           #  16    0x126800  1      OPC=nop             
  nop                           #  17    0x126801  1      OPC=nop             
  nop                           #  18    0x126802  1      OPC=nop             
  nop                           #  19    0x126803  1      OPC=nop             
  nop                           #  20    0x126804  1      OPC=nop             
  nop                           #  21    0x126805  1      OPC=nop             
  nop                           #  22    0x126806  1      OPC=nop             
  nop                           #  23    0x126807  1      OPC=nop             
  nop                           #  24    0x126808  1      OPC=nop             
  nop                           #  25    0x126809  1      OPC=nop             
  nop                           #  26    0x12680a  1      OPC=nop             
  andl %esp, %esi               #  27    0x12680b  2      OPC=andl_r32_r32    
  jne .L_126860                 #  28    0x12680d  6      OPC=jne_label_1     
  nop                           #  29    0x126813  1      OPC=nop             
  nop                           #  30    0x126814  1      OPC=nop             
  nop                           #  31    0x126815  1      OPC=nop             
  nop                           #  32    0x126816  1      OPC=nop             
  nop                           #  33    0x126817  1      OPC=nop             
  nop                           #  34    0x126818  1      OPC=nop             
  nop                           #  35    0x126819  1      OPC=nop             
  nop                           #  36    0x12681a  1      OPC=nop             
  nop                           #  37    0x12681b  1      OPC=nop             
  nop                           #  38    0x12681c  1      OPC=nop             
  nop                           #  39    0x12681d  1      OPC=nop             
  nop                           #  40    0x12681e  1      OPC=nop             
  nop                           #  41    0x12681f  1      OPC=nop             
.L_126820:                      #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx               #  42    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)  #  43    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx               #  44    0x126828  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d      #  45    0x12682b  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi    #  46    0x12682f  7      OPC=leal_r32_m64    
  movl %r8d, %r9d               #  47    0x126836  3      OPC=movl_r32_r32_1  
  nop                           #  48    0x126839  1      OPC=nop             
  nop                           #  49    0x12683a  1      OPC=nop             
  nop                           #  50    0x12683b  1      OPC=nop             
  nop                           #  51    0x12683c  1      OPC=nop             
  nop                           #  52    0x12683d  1      OPC=nop             
  nop                           #  53    0x12683e  1      OPC=nop             
  nop                           #  54    0x12683f  1      OPC=nop             
  nop                           #  55    0x126840  1      OPC=nop             
  nop                           #  56    0x126841  1      OPC=nop             
  nop                           #  57    0x126842  1      OPC=nop             
  nop                           #  58    0x126843  1      OPC=nop             
  notq %r9                      #  59    0x126844  3      OPC=notq_r64        
  andl %esi, %r9d               #  60    0x126847  3      OPC=andl_r32_r32_1  
  andl $0x80808080, %r9d        #  61    0x12684a  7      OPC=andl_r32_imm32  
  je .L_126820                  #  62    0x126851  6      OPC=je_label_1      
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
  nop                           #  72    0x126860  1      OPC=nop             
  nop                           #  73    0x126861  1      OPC=nop             
  orl %edx, %edx                #  74    0x126862  2      OPC=orl_r32_r32     
  movsbq (%r15,%rdx,1), %rsi    #  75    0x126864  5      OPC=movsbq_r64_m8   
  nop                           #  76    0x126869  1      OPC=nop             
  nop                           #  77    0x12686a  1      OPC=nop             
  nop                           #  78    0x12686b  1      OPC=nop             
  nop                           #  79    0x12686c  1      OPC=nop             
  nop                           #  80    0x12686d  1      OPC=nop             
  orl %edi, %ecx                #  81    0x12686e  2      OPC=orl_r32_r32_1   
  movb %sil, (%r15,%rcx,1)      #  82    0x126870  4      OPC=movb_m8_r8      
  addl $0x1, %ecx               #  83    0x126874  3      OPC=addl_r32_imm8   
  addq $0x1, %rdx               #  84    0x126877  4      OPC=addq_r64_imm8   
  testb %dl, %sil               #  85    0x12687b  3      OPC=testb_r8_r8     
  nop                           #  86    0x12687e  1      OPC=nop             
  nop                           #  87    0x12687f  1      OPC=nop             
  nop                           #  88    0x126880  1      OPC=nop             
  nop                           #  89    0x126881  1      OPC=nop             
  nop                           #  90    0x126882  1      OPC=nop             
  jne .L_126860                 #  91    0x126883  6      OPC=jne_label_1     
  nop                           #  92    0x126889  1      OPC=nop             
  nop                           #  93    0x12688a  1      OPC=nop             
  nop                           #  94    0x12688b  1      OPC=nop             
  nop                           #  95    0x12688c  1      OPC=nop             
  nop                           #  96    0x12688d  1      OPC=nop             
  nop                           #  97    0x12688e  1      OPC=nop             
  nop                           #  98    0x12688f  1      OPC=nop             
  nop                           #  99    0x126890  1      OPC=nop             
  nop                           #  100   0x126891  1      OPC=nop             
  nop                           #  101   0x126892  1      OPC=nop             
  retq

.size strcpy, -.strcpy

