  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  nop                         #  1     0x1267e0  1      OPC=nop             
  nop                         #  2     0x1267e1  1      OPC=nop             
  movq %rsi, %rdx             #  3     0x1267e2  3      OPC=movq_r64_r64    
  movl %edi, %eax             #  4     0x1267e5  2      OPC=movl_r32_r32    
  nop                         #  5     0x1267e7  1      OPC=nop             
  nop                         #  6     0x1267e8  1      OPC=nop             
  addl %esi, %edi             #  7     0x1267e9  2      OPC=addl_r32_r32    
  movq %rax, %rcx             #  8     0x1267eb  3      OPC=movq_r64_r64_1  
  nop                         #  9     0x1267ee  1      OPC=nop             
  nop                         #  10    0x1267ef  1      OPC=nop             
  nop                         #  11    0x1267f0  1      OPC=nop             
  andl $0x3, %edi             #  12    0x1267f1  3      OPC=andl_r32_imm8   
  jne .L_126860               #  13    0x1267f4  6      OPC=jne_label_1     
  movl %esi, %esi             #  14    0x1267fa  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d    #  15    0x1267fc  4      OPC=movl_r32_m32    
  nop                         #  16    0x126800  1      OPC=nop             
  movl %r8d, %esi             #  17    0x126801  3      OPC=movl_r32_r32_1  
  leaq -0x1010101(%r8), %rdi  #  18    0x126804  7      OPC=leaq_r64_m32    
  notl %esi                   #  19    0x12680b  2      OPC=notl_r32        
  andl %edi, %esi             #  20    0x12680d  2      OPC=andl_r32_r32    
  andl $0x80808080, %esi      #  21    0x12680f  6      OPC=andl_r32_imm32  
  nop                         #  22    0x126815  1      OPC=nop             
  jne .L_126860               #  23    0x126816  6      OPC=jne_label_1     
  nop                         #  24    0x12681c  1      OPC=nop             
  nop                         #  25    0x12681d  1      OPC=nop             
  nop                         #  26    0x12681e  1      OPC=nop             
  nop                         #  27    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  addl $0x4, %edx             #  28    0x126820  3      OPC=addl_r32_imm8   
  orl %ecx, %ecx              #  29    0x126823  2      OPC=orl_r32_r32     
  movl %r8d, (%r15,%rcx,1)    #  30    0x126825  4      OPC=movl_m32_r32    
  addw $0x4, %cx              #  31    0x126829  4      OPC=addw_r16_imm8   
  andl %edx, %edx             #  32    0x12682d  2      OPC=andl_r32_r32    
  movl (%r15,%rdx,1), %r8d    #  33    0x12682f  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %rsi  #  34    0x126833  7      OPC=leaq_r64_m64    
  movl %r8d, %r9d             #  35    0x12683a  3      OPC=movl_r32_r32_1  
  notq %r9                    #  36    0x12683d  3      OPC=notq_r64        
  andl %esi, %r9d             #  37    0x126840  3      OPC=andl_r32_r32_1  
  andq $0x80808080, %r9       #  38    0x126843  7      OPC=andq_r64_imm32  
  je .L_126820                #  39    0x12684a  6      OPC=je_label_1      
  nop                         #  40    0x126850  1      OPC=nop             
  nop                         #  41    0x126851  1      OPC=nop             
  nop                         #  42    0x126852  1      OPC=nop             
  nop                         #  43    0x126853  1      OPC=nop             
  nop                         #  44    0x126854  1      OPC=nop             
  nop                         #  45    0x126855  1      OPC=nop             
  nop                         #  46    0x126856  1      OPC=nop             
  nop                         #  47    0x126857  1      OPC=nop             
  nop                         #  48    0x126858  1      OPC=nop             
  nop                         #  49    0x126859  1      OPC=nop             
  nop                         #  50    0x12685a  1      OPC=nop             
  nop                         #  51    0x12685b  1      OPC=nop             
  nop                         #  52    0x12685c  1      OPC=nop             
  nop                         #  53    0x12685d  1      OPC=nop             
  nop                         #  54    0x12685e  1      OPC=nop             
  nop                         #  55    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  orl %edx, %edx              #  56    0x126860  2      OPC=orl_r32_r32     
  movsbw (%r15,%rdx,1), %si   #  57    0x126862  6      OPC=movsbw_r16_m8   
  addl $0x1, %edx             #  58    0x126868  3      OPC=addl_r32_imm8   
  andl %ecx, %ecx             #  59    0x12686b  2      OPC=andl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  60    0x12686d  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  61    0x126871  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  62    0x126874  3      OPC=testb_r8_r8     
  jne .L_126860               #  63    0x126877  6      OPC=jne_label_1     
  nop                         #  64    0x12687d  1      OPC=nop             
  nop                         #  65    0x12687e  1      OPC=nop             
  nop                         #  66    0x12687f  1      OPC=nop             
  nop                         #  67    0x126880  1      OPC=nop             
  nop                         #  68    0x126881  1      OPC=nop             
  nop                         #  69    0x126882  1      OPC=nop             
  nop                         #  70    0x126883  1      OPC=nop             
  nop                         #  71    0x126884  1      OPC=nop             
  nop                         #  72    0x126885  1      OPC=nop             
  nop                         #  73    0x126886  1      OPC=nop             
  nop                         #  74    0x126887  1      OPC=nop             
  nop                         #  75    0x126888  1      OPC=nop             
  nop                         #  76    0x126889  1      OPC=nop             
  nop                         #  77    0x12688a  1      OPC=nop             
  retq

.size strcpy, -.strcpy

