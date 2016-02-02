  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                       #  Line  RIP       Bytes  Opcode              
.strcpy:                     #        0x1267e0  0      OPC=<label>         
  nop                        #  1     0x1267e0  1      OPC=nop             
  nop                        #  2     0x1267e1  1      OPC=nop             
  nop                        #  3     0x1267e2  1      OPC=nop             
  movl %edi, %eax            #  4     0x1267e3  2      OPC=movl_r32_r32    
  orl %esi, %edi             #  5     0x1267e5  2      OPC=orl_r32_r32_1   
  movq %rax, %rcx            #  6     0x1267e7  3      OPC=movq_r64_r64_1  
  andl $0x3, %edi            #  7     0x1267ea  3      OPC=andl_r32_imm8   
  nop                        #  8     0x1267ed  1      OPC=nop             
  nop                        #  9     0x1267ee  1      OPC=nop             
  nop                        #  10    0x1267ef  1      OPC=nop             
  nop                        #  11    0x1267f0  1      OPC=nop             
  nop                        #  12    0x1267f1  1      OPC=nop             
  movl %esi, %edx            #  13    0x1267f2  2      OPC=movl_r32_r32_1  
  jne .L_126860              #  14    0x1267f4  6      OPC=jne_label_1     
  movl %edx, %esi            #  15    0x1267fa  2      OPC=movl_r32_r32    
  movq (%r15,%rsi,1), %r8    #  16    0x1267fc  4      OPC=movq_r64_m64    
  nop                        #  17    0x126800  1      OPC=nop             
  nop                        #  18    0x126801  1      OPC=nop             
  nop                        #  19    0x126802  1      OPC=nop             
  nop                        #  20    0x126803  1      OPC=nop             
  nop                        #  21    0x126804  1      OPC=nop             
  nop                        #  22    0x126805  1      OPC=nop             
  nop                        #  23    0x126806  1      OPC=nop             
  nop                        #  24    0x126807  1      OPC=nop             
  nop                        #  25    0x126808  1      OPC=nop             
  nop                        #  26    0x126809  1      OPC=nop             
  nop                        #  27    0x12680a  1      OPC=nop             
  nop                        #  28    0x12680b  1      OPC=nop             
  nop                        #  29    0x12680c  1      OPC=nop             
  jne .L_126860              #  30    0x12680d  6      OPC=jne_label_1     
  nop                        #  31    0x126813  1      OPC=nop             
  nop                        #  32    0x126814  1      OPC=nop             
  nop                        #  33    0x126815  1      OPC=nop             
  nop                        #  34    0x126816  1      OPC=nop             
  nop                        #  35    0x126817  1      OPC=nop             
  nop                        #  36    0x126818  1      OPC=nop             
  nop                        #  37    0x126819  1      OPC=nop             
  nop                        #  38    0x12681a  1      OPC=nop             
  nop                        #  39    0x12681b  1      OPC=nop             
  nop                        #  40    0x12681c  1      OPC=nop             
  nop                        #  41    0x12681d  1      OPC=nop             
  nop                        #  42    0x12681e  1      OPC=nop             
  nop                        #  43    0x12681f  1      OPC=nop             
.L_126820:                   #        0x126820  0      OPC=<label>         
  orl %ecx, %ecx             #  44    0x126820  2      OPC=orl_r32_r32_1   
  movl %r8d, (%r15,%rcx,1)   #  45    0x126822  4      OPC=movl_m32_r32    
  nop                        #  46    0x126826  1      OPC=nop             
  nop                        #  47    0x126827  1      OPC=nop             
  nop                        #  48    0x126828  1      OPC=nop             
  addb $0x4, %cl             #  49    0x126829  3      OPC=addb_r8_imm8    
  nop                        #  50    0x12682c  1      OPC=nop             
  nop                        #  51    0x12682d  1      OPC=nop             
  nop                        #  52    0x12682e  1      OPC=nop             
  nop                        #  53    0x12682f  1      OPC=nop             
  nop                        #  54    0x126830  1      OPC=nop             
  nop                        #  55    0x126831  1      OPC=nop             
  nop                        #  56    0x126832  1      OPC=nop             
  nop                        #  57    0x126833  1      OPC=nop             
  nop                        #  58    0x126834  1      OPC=nop             
  nop                        #  59    0x126835  1      OPC=nop             
  nop                        #  60    0x126836  1      OPC=nop             
  nop                        #  61    0x126837  1      OPC=nop             
  addl $0x4, %edx            #  62    0x126838  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d   #  63    0x12683b  4      OPC=movl_r32_m32    
  nop                        #  64    0x12683f  1      OPC=nop             
  nop                        #  65    0x126840  1      OPC=nop             
  nop                        #  66    0x126841  1      OPC=nop             
  nop                        #  67    0x126842  1      OPC=nop             
  nop                        #  68    0x126843  1      OPC=nop             
  nop                        #  69    0x126844  1      OPC=nop             
  nop                        #  70    0x126845  1      OPC=nop             
  nop                        #  71    0x126846  1      OPC=nop             
  nop                        #  72    0x126847  1      OPC=nop             
  nop                        #  73    0x126848  1      OPC=nop             
  nop                        #  74    0x126849  1      OPC=nop             
  nop                        #  75    0x12684a  1      OPC=nop             
  nop                        #  76    0x12684b  1      OPC=nop             
  leaq -0x1010101(%r8), %r9  #  77    0x12684c  7      OPC=leaq_r64_m32    
  andl %esi, %r9d            #  78    0x126853  3      OPC=andl_r32_r32    
  nop                        #  79    0x126856  1      OPC=nop             
  je .L_126820               #  80    0x126857  6      OPC=je_label_1      
  nopl %eax                  #  81    0x12685d  3      OPC=nopl_r32        
.L_126860:                   #        0x126860  0      OPC=<label>         
  nop                        #  82    0x126860  1      OPC=nop             
  nop                        #  83    0x126861  1      OPC=nop             
  nop                        #  84    0x126862  1      OPC=nop             
  nop                        #  85    0x126863  1      OPC=nop             
  orl %edx, %edx             #  86    0x126864  2      OPC=orl_r32_r32     
  movzbw (%r15,%rdx,1), %si  #  87    0x126866  6      OPC=movzbw_r16_m8   
  nop                        #  88    0x12686c  1      OPC=nop             
  nop                        #  89    0x12686d  1      OPC=nop             
  nop                        #  90    0x12686e  1      OPC=nop             
  nop                        #  91    0x12686f  1      OPC=nop             
  nop                        #  92    0x126870  1      OPC=nop             
  nop                        #  93    0x126871  1      OPC=nop             
  nop                        #  94    0x126872  1      OPC=nop             
  xorq $0x7, %rdx            #  95    0x126873  7      OPC=xorq_r64_imm32  
  andl %ecx, %ecx            #  96    0x12687a  2      OPC=andl_r32_r32    
  movb %sil, (%r15,%rcx,1)   #  97    0x12687c  4      OPC=movb_m8_r8      
  addl $0x1, %ecx            #  98    0x126880  6      OPC=addl_r32_imm32  
  testb %r15b, %sil          #  99    0x126886  3      OPC=testb_r8_r8     
  jne .L_126860              #  100   0x126889  6      OPC=jne_label_1     
  popq %r11                  #  101   0x12688f  2      OPC=popq_r64_1      
  andl $0xe0, %r11d          #  102   0x126891  4      OPC=andl_r32_imm8   
  addq %r15, %r11            #  103   0x126895  3      OPC=addq_r64_r64    
  jmpq %r11                  #  104   0x126898  3      OPC=jmpq_r64        
                                                                           
.size strcpy, .-strcpy
