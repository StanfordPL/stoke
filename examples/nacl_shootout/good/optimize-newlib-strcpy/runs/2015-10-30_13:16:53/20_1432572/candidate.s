  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strcpy:                         #        0x1267e0  0      OPC=<label>         
  movl %esi, %edx                #  1     0x1267e0  2      OPC=movl_r32_r32    
  nop                            #  2     0x1267e2  1      OPC=nop             
  nop                            #  3     0x1267e3  1      OPC=nop             
  nop                            #  4     0x1267e4  1      OPC=nop             
  nop                            #  5     0x1267e5  1      OPC=nop             
  nop                            #  6     0x1267e6  1      OPC=nop             
  nop                            #  7     0x1267e7  1      OPC=nop             
  nop                            #  8     0x1267e8  1      OPC=nop             
  nop                            #  9     0x1267e9  1      OPC=nop             
  nop                            #  10    0x1267ea  1      OPC=nop             
  movl %edi, %eax                #  11    0x1267eb  2      OPC=movl_r32_r32_1  
  nop                            #  12    0x1267ed  1      OPC=nop             
  nop                            #  13    0x1267ee  1      OPC=nop             
  andb $0x5, %dil                #  14    0x1267ef  4      OPC=andb_r8_imm8    
  movq %rax, %rcx                #  15    0x1267f3  3      OPC=movq_r64_r64    
  jne .L_126860                  #  16    0x1267f6  6      OPC=jne_label_1     
  nop                            #  17    0x1267fc  1      OPC=nop             
  nop                            #  18    0x1267fd  1      OPC=nop             
  nop                            #  19    0x1267fe  1      OPC=nop             
  nop                            #  20    0x1267ff  1      OPC=nop             
  nop                            #  21    0x126800  1      OPC=nop             
  nop                            #  22    0x126801  1      OPC=nop             
  nop                            #  23    0x126802  1      OPC=nop             
  nop                            #  24    0x126803  1      OPC=nop             
  nop                            #  25    0x126804  1      OPC=nop             
  nop                            #  26    0x126805  1      OPC=nop             
  nop                            #  27    0x126806  1      OPC=nop             
  nop                            #  28    0x126807  1      OPC=nop             
  nop                            #  29    0x126808  1      OPC=nop             
  nop                            #  30    0x126809  1      OPC=nop             
  movl %esi, %esi                #  31    0x12680a  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d       #  32    0x12680c  4      OPC=movl_r32_m32    
  nop                            #  33    0x126810  1      OPC=nop             
  nop                            #  34    0x126811  1      OPC=nop             
  nop                            #  35    0x126812  1      OPC=nop             
  nop                            #  36    0x126813  1      OPC=nop             
  nop                            #  37    0x126814  1      OPC=nop             
  nop                            #  38    0x126815  1      OPC=nop             
  nop                            #  39    0x126816  1      OPC=nop             
  nop                            #  40    0x126817  1      OPC=nop             
  nop                            #  41    0x126818  1      OPC=nop             
  nop                            #  42    0x126819  1      OPC=nop             
  jne .L_126860                  #  43    0x12681a  6      OPC=jne_label_1     
.L_126820:                       #        0x126820  0      OPC=<label>         
  orl %ebp, %ecx                 #  44    0x126820  2      OPC=orl_r32_r32_1   
  movl %r8d, (%r15,%rcx,1)       #  45    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %ecx                #  46    0x126826  3      OPC=addl_r32_imm8   
  nop                            #  47    0x126829  1      OPC=nop             
  nop                            #  48    0x12682a  1      OPC=nop             
  nop                            #  49    0x12682b  1      OPC=nop             
  addl $0x4, %edx                #  50    0x12682c  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d       #  51    0x12682f  4      OPC=movl_r32_m32    
  movl %r8d, %r9d                #  52    0x126833  3      OPC=movl_r32_r32    
  leaq -0x1010101(%r8), %rsi     #  53    0x126836  7      OPC=leaq_r64_m16    
  notq %r9                       #  54    0x12683d  3      OPC=notq_r64        
  andl $0x80808080, %r9d         #  55    0x126840  7      OPC=andl_r32_imm32  
  andl %esi, %r9d                #  56    0x126847  3      OPC=andl_r32_r32    
  je .L_126820                   #  57    0x12684a  6      OPC=je_label_1      
  nop                            #  58    0x126850  1      OPC=nop             
  nop                            #  59    0x126851  1      OPC=nop             
  nop                            #  60    0x126852  1      OPC=nop             
  nop                            #  61    0x126853  1      OPC=nop             
  nop                            #  62    0x126854  1      OPC=nop             
  nop                            #  63    0x126855  1      OPC=nop             
  nop                            #  64    0x126856  1      OPC=nop             
  nop                            #  65    0x126857  1      OPC=nop             
  nop                            #  66    0x126858  1      OPC=nop             
  nop                            #  67    0x126859  1      OPC=nop             
  nop                            #  68    0x12685a  1      OPC=nop             
  nop                            #  69    0x12685b  1      OPC=nop             
  nop                            #  70    0x12685c  1      OPC=nop             
  nop                            #  71    0x12685d  1      OPC=nop             
  nop                            #  72    0x12685e  1      OPC=nop             
  nop                            #  73    0x12685f  1      OPC=nop             
.L_126860:                       #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                #  74    0x126860  3      OPC=addl_r32_imm8   
  movzbw -0x1(%r15,%rdx,1), %si  #  75    0x126863  7      OPC=movzbw_r16_m8   
  addl $0x1, %ecx                #  76    0x12686a  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)   #  77    0x126870  5      OPC=movb_m8_r8      
  testb %sil, %sil               #  78    0x126875  3      OPC=testb_r8_r8     
  jne .L_126860                  #  79    0x126878  6      OPC=jne_label_1     
  nop                            #  80    0x12687e  1      OPC=nop             
  nop                            #  81    0x12687f  1      OPC=nop             
  nop                            #  82    0x126880  1      OPC=nop             
  nop                            #  83    0x126881  1      OPC=nop             
  nop                            #  84    0x126882  1      OPC=nop             
  nop                            #  85    0x126883  1      OPC=nop             
  nop                            #  86    0x126884  1      OPC=nop             
  nop                            #  87    0x126885  1      OPC=nop             
  nop                            #  88    0x126886  1      OPC=nop             
  nop                            #  89    0x126887  1      OPC=nop             
  nop                            #  90    0x126888  1      OPC=nop             
  nop                            #  91    0x126889  1      OPC=nop             
  nop                            #  92    0x12688a  1      OPC=nop             
  nop                            #  93    0x12688b  1      OPC=nop             
  nop                            #  94    0x12688c  1      OPC=nop             
  retq

.size strcpy, -.strcpy

