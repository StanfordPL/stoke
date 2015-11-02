  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strcpy:                         #        0x1267e0  0      OPC=<label>         
  movl %esi, %edx                #  1     0x1267e0  2      OPC=movl_r32_r32    
  movq %rdi, %rcx                #  2     0x1267e2  3      OPC=movq_r64_r64    
  nop                            #  3     0x1267e5  1      OPC=nop             
  nop                            #  4     0x1267e6  1      OPC=nop             
  nop                            #  5     0x1267e7  1      OPC=nop             
  nop                            #  6     0x1267e8  1      OPC=nop             
  nop                            #  7     0x1267e9  1      OPC=nop             
  nop                            #  8     0x1267ea  1      OPC=nop             
  nop                            #  9     0x1267eb  1      OPC=nop             
  movq %rdi, %rax                #  10    0x1267ec  3      OPC=movq_r64_r64    
  nop                            #  11    0x1267ef  1      OPC=nop             
  nop                            #  12    0x1267f0  1      OPC=nop             
  andl $0x2, %esi                #  13    0x1267f1  3      OPC=andl_r32_imm8   
  jne .L_126860                  #  14    0x1267f4  6      OPC=jne_label_1     
  nop                            #  15    0x1267fa  1      OPC=nop             
  nop                            #  16    0x1267fb  1      OPC=nop             
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
  nop                            #  31    0x12680a  1      OPC=nop             
  nop                            #  32    0x12680b  1      OPC=nop             
  nop                            #  33    0x12680c  1      OPC=nop             
  nop                            #  34    0x12680d  1      OPC=nop             
  nop                            #  35    0x12680e  1      OPC=nop             
  nop                            #  36    0x12680f  1      OPC=nop             
  nop                            #  37    0x126810  1      OPC=nop             
  nop                            #  38    0x126811  1      OPC=nop             
  movl %edx, %esi                #  39    0x126812  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d       #  40    0x126814  4      OPC=movl_r32_m32    
  nop                            #  41    0x126818  1      OPC=nop             
  nop                            #  42    0x126819  1      OPC=nop             
  jne .L_126860                  #  43    0x12681a  6      OPC=jne_label_1     
.L_126820:                       #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                #  44    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)   #  45    0x126823  5      OPC=movl_m32_r32    
  nop                            #  46    0x126828  1      OPC=nop             
  nop                            #  47    0x126829  1      OPC=nop             
  nop                            #  48    0x12682a  1      OPC=nop             
  nop                            #  49    0x12682b  1      OPC=nop             
  addl $0x4, %edx                #  50    0x12682c  6      OPC=addl_r32_imm32  
  movq (%r15,%rdx,1), %r8        #  51    0x126832  4      OPC=movq_r64_m64    
  leaq -0x1010101(%r8), %rsi     #  52    0x126836  7      OPC=leaq_r64_m64    
  movq %r8, %r9                  #  53    0x12683d  3      OPC=movq_r64_r64    
  notq %r9                       #  54    0x126840  3      OPC=notq_r64        
  andq $0x80808080, %rsi         #  55    0x126843  7      OPC=andq_r64_imm32  
  andq %rsi, %r9                 #  56    0x12684a  3      OPC=andq_r64_r64_1  
  je .L_126820                   #  57    0x12684d  6      OPC=je_label_1      
  nop                            #  58    0x126853  1      OPC=nop             
  nop                            #  59    0x126854  1      OPC=nop             
  nop                            #  60    0x126855  1      OPC=nop             
  nop                            #  61    0x126856  1      OPC=nop             
  nop                            #  62    0x126857  1      OPC=nop             
  nop                            #  63    0x126858  1      OPC=nop             
  nop                            #  64    0x126859  1      OPC=nop             
  nop                            #  65    0x12685a  1      OPC=nop             
  nop                            #  66    0x12685b  1      OPC=nop             
  nop                            #  67    0x12685c  1      OPC=nop             
  nop                            #  68    0x12685d  1      OPC=nop             
  nop                            #  69    0x12685e  1      OPC=nop             
  nop                            #  70    0x12685f  1      OPC=nop             
.L_126860:                       #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                #  71    0x126860  6      OPC=addl_r32_imm32  
  movsbw -0x1(%r15,%rdx,1), %si  #  72    0x126866  7      OPC=movsbw_r16_m8   
  movl %ecx, %ecx                #  73    0x12686d  2      OPC=movl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)       #  74    0x12686f  4      OPC=movb_m8_r8      
  addb $0x1, %cl                 #  75    0x126873  3      OPC=addb_r8_imm8    
  shlw $0x6, %si                 #  76    0x126876  4      OPC=shlw_r16_imm8   
  jne .L_126860                  #  77    0x12687a  6      OPC=jne_label_1     
  nop                            #  78    0x126880  1      OPC=nop             
  nop                            #  79    0x126881  1      OPC=nop             
  nop                            #  80    0x126882  1      OPC=nop             
  nop                            #  81    0x126883  1      OPC=nop             
  nop                            #  82    0x126884  1      OPC=nop             
  retq

.size strcpy, -.strcpy

