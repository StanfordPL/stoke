  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax             #  1     0x1267e0  2      OPC=movl_r32_r32    
  nop                         #  2     0x1267e2  1      OPC=nop             
  nop                         #  3     0x1267e3  1      OPC=nop             
  movq %rax, %rcx             #  4     0x1267e4  3      OPC=movq_r64_r64    
  movq %rsi, %rdx             #  5     0x1267e7  3      OPC=movq_r64_r64_1  
  nop                         #  6     0x1267ea  1      OPC=nop             
  nop                         #  7     0x1267eb  1      OPC=nop             
  nop                         #  8     0x1267ec  1      OPC=nop             
  nop                         #  9     0x1267ed  1      OPC=nop             
  nop                         #  10    0x1267ee  1      OPC=nop             
  nop                         #  11    0x1267ef  1      OPC=nop             
  nop                         #  12    0x1267f0  1      OPC=nop             
  andl $0x2, %edi             #  13    0x1267f1  3      OPC=andl_r32_imm8   
  jne .L_126860               #  14    0x1267f4  6      OPC=jne_label_1     
  movl %esi, %esi             #  15    0x1267fa  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  16    0x1267fc  4      OPC=movl_r32_m32    
  nop                         #  17    0x126800  1      OPC=nop             
  nop                         #  18    0x126801  1      OPC=nop             
  nop                         #  19    0x126802  1      OPC=nop             
  nop                         #  20    0x126803  1      OPC=nop             
  nop                         #  21    0x126804  1      OPC=nop             
  nop                         #  22    0x126805  1      OPC=nop             
  nop                         #  23    0x126806  1      OPC=nop             
  nop                         #  24    0x126807  1      OPC=nop             
  nop                         #  25    0x126808  1      OPC=nop             
  nop                         #  26    0x126809  1      OPC=nop             
  nop                         #  27    0x12680a  1      OPC=nop             
  nop                         #  28    0x12680b  1      OPC=nop             
  nop                         #  29    0x12680c  1      OPC=nop             
  nop                         #  30    0x12680d  1      OPC=nop             
  jne .L_126860               #  31    0x12680e  6      OPC=jne_label_1     
  nopl %eax                   #  32    0x126814  3      OPC=nopl_r32        
  nop                         #  33    0x126817  1      OPC=nop             
  nop                         #  34    0x126818  1      OPC=nop             
  nop                         #  35    0x126819  1      OPC=nop             
  nop                         #  36    0x12681a  1      OPC=nop             
  nop                         #  37    0x12681b  1      OPC=nop             
  nop                         #  38    0x12681c  1      OPC=nop             
  nop                         #  39    0x12681d  1      OPC=nop             
  nop                         #  40    0x12681e  1      OPC=nop             
  nop                         #  41    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  addl $0x4, %edx             #  42    0x126820  3      OPC=addl_r32_imm8   
  andl %ecx, %ecx             #  43    0x126823  2      OPC=andl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)    #  44    0x126825  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  45    0x126829  3      OPC=addl_r32_imm8   
  orl %edx, %edx              #  46    0x12682c  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdx,1), %r8d    #  47    0x12682e  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  48    0x126832  3      OPC=movl_r32_r32    
  notq %r9                    #  49    0x126835  3      OPC=notq_r64        
  leal -0x1010101(%r8), %esi  #  50    0x126838  7      OPC=leal_r32_m16    
  nop                         #  51    0x12683f  1      OPC=nop             
  nop                         #  52    0x126840  1      OPC=nop             
  nop                         #  53    0x126841  1      OPC=nop             
  nop                         #  54    0x126842  1      OPC=nop             
  andl $0x80808080, %r9d      #  55    0x126843  7      OPC=andl_r32_imm32  
  andl %esi, %r9d             #  56    0x12684a  3      OPC=andl_r32_r32    
  je .L_126820                #  57    0x12684d  6      OPC=je_label_1      
  nop                         #  58    0x126853  1      OPC=nop             
  nop                         #  59    0x126854  1      OPC=nop             
  nop                         #  60    0x126855  1      OPC=nop             
  nop                         #  61    0x126856  1      OPC=nop             
  nop                         #  62    0x126857  1      OPC=nop             
  nop                         #  63    0x126858  1      OPC=nop             
  nop                         #  64    0x126859  1      OPC=nop             
  nop                         #  65    0x12685a  1      OPC=nop             
  nop                         #  66    0x12685b  1      OPC=nop             
  nop                         #  67    0x12685c  1      OPC=nop             
  nop                         #  68    0x12685d  1      OPC=nop             
  nop                         #  69    0x12685e  1      OPC=nop             
  nop                         #  70    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  movl %edx, %edx             #  71    0x126860  2      OPC=movl_r32_r32    
  movsbw (%r15,%rdx,1), %si   #  72    0x126862  6      OPC=movsbw_r16_m8   
  addw $0x1, %dx              #  73    0x126868  4      OPC=addw_r16_imm8   
  andl %ecx, %ecx             #  74    0x12686c  2      OPC=andl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  75    0x12686e  4      OPC=movb_m8_r8      
  addw $0x1, %cx              #  76    0x126872  4      OPC=addw_r16_imm8   
  testb %sil, %sil            #  77    0x126876  3      OPC=testb_r8_r8     
  jne .L_126860               #  78    0x126879  6      OPC=jne_label_1     
  nop                         #  79    0x12687f  1      OPC=nop             
  nop                         #  80    0x126880  1      OPC=nop             
  nop                         #  81    0x126881  1      OPC=nop             
  nop                         #  82    0x126882  1      OPC=nop             
  retq

.size strcpy, -.strcpy

