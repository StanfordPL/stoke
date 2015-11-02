  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  movq %rdi, %rcx                 #  2     0x1267e2  3      OPC=movq_r64_r64    
  movl %esi, %edx                 #  3     0x1267e5  2      OPC=movl_r32_r32    
  nop                             #  4     0x1267e7  1      OPC=nop             
  andb $0x10, %dil                #  5     0x1267e8  4      OPC=andb_r8_imm8    
  jne .L_126860                   #  6     0x1267ec  6      OPC=jne_label_1     
  orl %edx, %esi                  #  7     0x1267f2  2      OPC=orl_r32_r32_1   
  movl (%r15,%rsi,1), %r8d        #  8     0x1267f4  4      OPC=movl_r32_m32    
  nop                             #  9     0x1267f8  1      OPC=nop             
  nop                             #  10    0x1267f9  1      OPC=nop             
  nop                             #  11    0x1267fa  1      OPC=nop             
  nop                             #  12    0x1267fb  1      OPC=nop             
  nop                             #  13    0x1267fc  1      OPC=nop             
  movq %r8, %rsi                  #  14    0x1267fd  3      OPC=movq_r64_r64_1  
  nop                             #  15    0x126800  1      OPC=nop             
  nop                             #  16    0x126801  1      OPC=nop             
  notl %esi                       #  17    0x126802  2      OPC=notl_r32        
  leaq -0x1010101(%r8), %rdi      #  18    0x126804  7      OPC=leaq_r64_m16    
  andl %esi, %edi                 #  19    0x12680b  2      OPC=andl_r32_r32_1  
  nop                             #  20    0x12680d  1      OPC=nop             
  nop                             #  21    0x12680e  1      OPC=nop             
  nop                             #  22    0x12680f  1      OPC=nop             
  andl $0x80808080, %edi          #  23    0x126810  6      OPC=andl_r32_imm32  
  nop                             #  24    0x126816  1      OPC=nop             
  jne .L_126860                   #  25    0x126817  6      OPC=jne_label_1     
  nop                             #  26    0x12681d  1      OPC=nop             
  nop                             #  27    0x12681e  1      OPC=nop             
  nop                             #  28    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  nop                             #  29    0x126820  1      OPC=nop             
  nop                             #  30    0x126821  1      OPC=nop             
  nop                             #  31    0x126822  1      OPC=nop             
  nop                             #  32    0x126823  1      OPC=nop             
  addl $0x4, %ecx                 #  33    0x126824  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)    #  34    0x126827  5      OPC=movl_m32_r32    
  subl $0xfc, %edx                #  35    0x12682c  3      OPC=subl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  36    0x12682f  4      OPC=movl_r32_m32    
  nop                             #  37    0x126833  1      OPC=nop             
  nop                             #  38    0x126834  1      OPC=nop             
  nop                             #  39    0x126835  1      OPC=nop             
  nop                             #  40    0x126836  1      OPC=nop             
  nop                             #  41    0x126837  1      OPC=nop             
  nop                             #  42    0x126838  1      OPC=nop             
  nop                             #  43    0x126839  1      OPC=nop             
  nop                             #  44    0x12683a  1      OPC=nop             
  nop                             #  45    0x12683b  1      OPC=nop             
  nop                             #  46    0x12683c  1      OPC=nop             
  nop                             #  47    0x12683d  1      OPC=nop             
  nop                             #  48    0x12683e  1      OPC=nop             
  nop                             #  49    0x12683f  1      OPC=nop             
  movq %r8, %r9                   #  50    0x126840  3      OPC=movq_r64_r64    
  notq %r9                        #  51    0x126843  3      OPC=notq_r64        
  leaq -0x1010101(%r8), %rsi      #  52    0x126846  7      OPC=leaq_r64_m32    
  andq $0x80808080, %rsi          #  53    0x12684d  7      OPC=andq_r64_imm32  
  andl %esi, %r9d                 #  54    0x126854  3      OPC=andl_r32_r32    
  je .L_126820                    #  55    0x126857  6      OPC=je_label_1      
  nop                             #  56    0x12685d  1      OPC=nop             
  nop                             #  57    0x12685e  1      OPC=nop             
  nop                             #  58    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  59    0x126860  3      OPC=addl_r32_imm8   
  movzbl -0x1(%r15,%rdx,1), %esi  #  60    0x126863  6      OPC=movzbl_r32_m8   
  incl %ecx                       #  61    0x126869  2      OPC=incl_r32        
  movb %sil, -0x1(%r15,%rcx,1)    #  62    0x12686b  5      OPC=movb_m8_r8      
  orl %esp, %esi                  #  63    0x126870  2      OPC=orl_r32_r32     
  jne .L_126860                   #  64    0x126872  6      OPC=jne_label_1     
  nop                             #  65    0x126878  1      OPC=nop             
  nop                             #  66    0x126879  1      OPC=nop             
  nop                             #  67    0x12687a  1      OPC=nop             
  nop                             #  68    0x12687b  1      OPC=nop             
  nop                             #  69    0x12687c  1      OPC=nop             
  nop                             #  70    0x12687d  1      OPC=nop             
  nop                             #  71    0x12687e  1      OPC=nop             
  nop                             #  72    0x12687f  1      OPC=nop             
  nop                             #  73    0x126880  1      OPC=nop             
  nop                             #  74    0x126881  1      OPC=nop             
  nop                             #  75    0x126882  1      OPC=nop             
  nop                             #  76    0x126883  1      OPC=nop             
  nop                             #  77    0x126884  1      OPC=nop             
  nop                             #  78    0x126885  1      OPC=nop             
  nop                             #  79    0x126886  1      OPC=nop             
  nop                             #  80    0x126887  1      OPC=nop             
  nop                             #  81    0x126888  1      OPC=nop             
  nop                             #  82    0x126889  1      OPC=nop             
  nop                             #  83    0x12688a  1      OPC=nop             
  nop                             #  84    0x12688b  1      OPC=nop             
  nop                             #  85    0x12688c  1      OPC=nop             
  nop                             #  86    0x12688d  1      OPC=nop             
  nop                             #  87    0x12688e  1      OPC=nop             
  nop                             #  88    0x12688f  1      OPC=nop             
  nop                             #  89    0x126890  1      OPC=nop             
  nop                             #  90    0x126891  1      OPC=nop             
  nop                             #  91    0x126892  1      OPC=nop             
  nop                             #  92    0x126893  1      OPC=nop             
  nop                             #  93    0x126894  1      OPC=nop             
  nop                             #  94    0x126895  1      OPC=nop             
  nop                             #  95    0x126896  1      OPC=nop             
  nop                             #  96    0x126897  1      OPC=nop             
  nop                             #  97    0x126898  1      OPC=nop             
  nop                             #  98    0x126899  1      OPC=nop             
  nop                             #  99    0x12689a  1      OPC=nop             
  nop                             #  100   0x12689b  1      OPC=nop             
  nop                             #  101   0x12689c  1      OPC=nop             
  nop                             #  102   0x12689d  1      OPC=nop             
  nop                             #  103   0x12689e  1      OPC=nop             
  nop                             #  104   0x12689f  1      OPC=nop             
  nop                             #  105   0x1268a0  1      OPC=nop             
  nop                             #  106   0x1268a1  1      OPC=nop             
  nop                             #  107   0x1268a2  1      OPC=nop             
  nop                             #  108   0x1268a3  1      OPC=nop             
  nop                             #  109   0x1268a4  1      OPC=nop             
  nop                             #  110   0x1268a5  1      OPC=nop             
  nop                             #  111   0x1268a6  1      OPC=nop             
  nop                             #  112   0x1268a7  1      OPC=nop             
  nop                             #  113   0x1268a8  1      OPC=nop             
  nop                             #  114   0x1268a9  1      OPC=nop             
  nop                             #  115   0x1268aa  1      OPC=nop             
  nop                             #  116   0x1268ab  1      OPC=nop             
  nop                             #  117   0x1268ac  1      OPC=nop             
  retq

.size strcpy, -.strcpy

