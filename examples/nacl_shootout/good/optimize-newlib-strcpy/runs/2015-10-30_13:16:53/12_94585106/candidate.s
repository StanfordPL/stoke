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
  movq %rdi, %rcx                 #  7     0x1267e6  3      OPC=movq_r64_r64_1  
  andl $0x3, %edi                 #  8     0x1267e9  3      OPC=andl_r32_imm8   
  nop                             #  9     0x1267ec  1      OPC=nop             
  nop                             #  10    0x1267ed  1      OPC=nop             
  nop                             #  11    0x1267ee  1      OPC=nop             
  movl %esi, %edx                 #  12    0x1267ef  2      OPC=movl_r32_r32_1  
  movl %ecx, %eax                 #  13    0x1267f1  2      OPC=movl_r32_r32    
  jne .L_126860                   #  14    0x1267f3  6      OPC=jne_label_1     
  movl %esi, %esi                 #  15    0x1267f9  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d        #  16    0x1267fb  4      OPC=movl_r32_m32    
  nop                             #  17    0x1267ff  1      OPC=nop             
  nop                             #  18    0x126800  1      OPC=nop             
  jne .L_126860                   #  19    0x126801  6      OPC=jne_label_1     
  nop                             #  20    0x126807  1      OPC=nop             
  nop                             #  21    0x126808  1      OPC=nop             
  nop                             #  22    0x126809  1      OPC=nop             
  nop                             #  23    0x12680a  1      OPC=nop             
  nop                             #  24    0x12680b  1      OPC=nop             
  nop                             #  25    0x12680c  1      OPC=nop             
  nop                             #  26    0x12680d  1      OPC=nop             
  nop                             #  27    0x12680e  1      OPC=nop             
  nop                             #  28    0x12680f  1      OPC=nop             
  nop                             #  29    0x126810  1      OPC=nop             
  nop                             #  30    0x126811  1      OPC=nop             
  nop                             #  31    0x126812  1      OPC=nop             
  nop                             #  32    0x126813  1      OPC=nop             
  nop                             #  33    0x126814  1      OPC=nop             
  nop                             #  34    0x126815  1      OPC=nop             
  sarb %cl, %cl                   #  35    0x126816  2      OPC=sarb_r8_cl      
  nop                             #  36    0x126818  1      OPC=nop             
  nop                             #  37    0x126819  1      OPC=nop             
  nop                             #  38    0x12681a  1      OPC=nop             
  nop                             #  39    0x12681b  1      OPC=nop             
  nop                             #  40    0x12681c  1      OPC=nop             
  nop                             #  41    0x12681d  1      OPC=nop             
  nop                             #  42    0x12681e  1      OPC=nop             
  nop                             #  43    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  44    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)    #  45    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  46    0x126828  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  47    0x12682b  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi      #  48    0x12682f  7      OPC=leal_r32_m16    
  movl %r8d, %r9d                 #  49    0x126836  3      OPC=movl_r32_r32_1  
  notq %r9                        #  50    0x126839  3      OPC=notq_r64        
  andl %esi, %r9d                 #  51    0x12683c  3      OPC=andl_r32_r32_1  
  nop                             #  52    0x12683f  1      OPC=nop             
  nop                             #  53    0x126840  1      OPC=nop             
  nop                             #  54    0x126841  1      OPC=nop             
  nop                             #  55    0x126842  1      OPC=nop             
  nop                             #  56    0x126843  1      OPC=nop             
  nop                             #  57    0x126844  1      OPC=nop             
  nop                             #  58    0x126845  1      OPC=nop             
  nop                             #  59    0x126846  1      OPC=nop             
  nop                             #  60    0x126847  1      OPC=nop             
  nop                             #  61    0x126848  1      OPC=nop             
  nop                             #  62    0x126849  1      OPC=nop             
  andq $0x80808080, %r9           #  63    0x12684a  7      OPC=andq_r64_imm32  
  je .L_126820                    #  64    0x126851  6      OPC=je_label_1      
  nop                             #  65    0x126857  1      OPC=nop             
  nop                             #  66    0x126858  1      OPC=nop             
  nop                             #  67    0x126859  1      OPC=nop             
  nop                             #  68    0x12685a  1      OPC=nop             
  nop                             #  69    0x12685b  1      OPC=nop             
  nop                             #  70    0x12685c  1      OPC=nop             
  nop                             #  71    0x12685d  1      OPC=nop             
  nop                             #  72    0x12685e  1      OPC=nop             
  nop                             #  73    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  74    0x126860  3      OPC=addl_r32_imm8   
  movzbl -0x1(%r15,%rdx,1), %esi  #  75    0x126863  6      OPC=movzbl_r32_m8   
  incl %ecx                       #  76    0x126869  2      OPC=incl_r32        
  movb %sil, -0x1(%r15,%rcx,1)    #  77    0x12686b  5      OPC=movb_m8_r8      
  testb %sil, %sil                #  78    0x126870  3      OPC=testb_r8_r8     
  jne .L_126860                   #  79    0x126873  6      OPC=jne_label_1     
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
  nop                             #  90    0x126883  1      OPC=nop             
  nop                             #  91    0x126884  1      OPC=nop             
  nop                             #  92    0x126885  1      OPC=nop             
  nop                             #  93    0x126886  1      OPC=nop             
  nop                             #  94    0x126887  1      OPC=nop             
  nop                             #  95    0x126888  1      OPC=nop             
  nop                             #  96    0x126889  1      OPC=nop             
  nop                             #  97    0x12688a  1      OPC=nop             
  nop                             #  98    0x12688b  1      OPC=nop             
  nop                             #  99    0x12688c  1      OPC=nop             
  nop                             #  100   0x12688d  1      OPC=nop             
  nop                             #  101   0x12688e  1      OPC=nop             
  nop                             #  102   0x12688f  1      OPC=nop             
  nop                             #  103   0x126890  1      OPC=nop             
  nop                             #  104   0x126891  1      OPC=nop             
  nop                             #  105   0x126892  1      OPC=nop             
  nop                             #  106   0x126893  1      OPC=nop             
  retq

.size strcpy, -.strcpy

