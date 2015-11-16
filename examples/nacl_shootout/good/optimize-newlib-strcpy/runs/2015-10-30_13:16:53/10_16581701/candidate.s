  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax             #  1     0x1267e0  2      OPC=movl_r32_r32    
  movl %esi, %edi             #  2     0x1267e2  2      OPC=movl_r32_r32    
  movq %rsi, %rdx             #  3     0x1267e4  3      OPC=movq_r64_r64    
  orl %eax, %edi              #  4     0x1267e7  2      OPC=orl_r32_r32     
  movslq %eax, %rcx           #  5     0x1267e9  3      OPC=movslq_r64_r32  
  andl $0x3, %edi             #  6     0x1267ec  3      OPC=andl_r32_imm8   
  jne .L_126860               #  7     0x1267ef  6      OPC=jne_label_1     
  movl %esi, %esi             #  8     0x1267f5  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  9     0x1267f7  4      OPC=movl_r32_m32    
  nop                         #  10    0x1267fb  1      OPC=nop             
  nop                         #  11    0x1267fc  1      OPC=nop             
  nop                         #  12    0x1267fd  1      OPC=nop             
  nop                         #  13    0x1267fe  1      OPC=nop             
  nop                         #  14    0x1267ff  1      OPC=nop             
  nop                         #  15    0x126800  1      OPC=nop             
  nop                         #  16    0x126801  1      OPC=nop             
  nop                         #  17    0x126802  1      OPC=nop             
  nop                         #  18    0x126803  1      OPC=nop             
  movw %si, %dx               #  19    0x126804  3      OPC=movw_r16_r16    
  nop                         #  20    0x126807  1      OPC=nop             
  nop                         #  21    0x126808  1      OPC=nop             
  andl %edi, %esi             #  22    0x126809  2      OPC=andl_r32_r32    
  andl $0x80808080, %esi      #  23    0x12680b  6      OPC=andl_r32_imm32  
  jne .L_126860               #  24    0x126811  6      OPC=jne_label_1     
  nop                         #  25    0x126817  1      OPC=nop             
  nop                         #  26    0x126818  1      OPC=nop             
  nop                         #  27    0x126819  1      OPC=nop             
  nop                         #  28    0x12681a  1      OPC=nop             
  nop                         #  29    0x12681b  1      OPC=nop             
  nop                         #  30    0x12681c  1      OPC=nop             
  nop                         #  31    0x12681d  1      OPC=nop             
  nop                         #  32    0x12681e  1      OPC=nop             
  nop                         #  33    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  addl $0x4, %edx             #  34    0x126820  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  35    0x126823  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  36    0x126825  4      OPC=movl_m32_r32    
  movl %edx, %edx             #  37    0x126829  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d    #  38    0x12682b  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  39    0x12682f  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi  #  40    0x126832  7      OPC=leal_r32_m16    
  notl %r9d                   #  41    0x126839  3      OPC=notl_r32        
  addq $0x4, %rcx             #  42    0x12683c  4      OPC=addq_r64_imm8   
  andl %esi, %r9d             #  43    0x126840  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  44    0x126843  7      OPC=andl_r32_imm32  
  je .L_126820                #  45    0x12684a  6      OPC=je_label_1      
  nop                         #  46    0x126850  1      OPC=nop             
  nop                         #  47    0x126851  1      OPC=nop             
  nop                         #  48    0x126852  1      OPC=nop             
  nop                         #  49    0x126853  1      OPC=nop             
  nop                         #  50    0x126854  1      OPC=nop             
  nop                         #  51    0x126855  1      OPC=nop             
  nop                         #  52    0x126856  1      OPC=nop             
  nop                         #  53    0x126857  1      OPC=nop             
  nop                         #  54    0x126858  1      OPC=nop             
  nop                         #  55    0x126859  1      OPC=nop             
  nop                         #  56    0x12685a  1      OPC=nop             
  nop                         #  57    0x12685b  1      OPC=nop             
  nop                         #  58    0x12685c  1      OPC=nop             
  nop                         #  59    0x12685d  1      OPC=nop             
  nop                         #  60    0x12685e  1      OPC=nop             
  nop                         #  61    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  movl %edx, %edx             #  62    0x126860  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  63    0x126862  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  64    0x126867  3      OPC=addl_r32_imm8   
  orl %ecx, %ecx              #  65    0x12686a  2      OPC=orl_r32_r32     
  movb %sil, (%r15,%rcx,1)    #  66    0x12686c  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  67    0x126870  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  68    0x126873  3      OPC=testb_r8_r8     
  jne .L_126860               #  69    0x126876  6      OPC=jne_label_1     
  nop                         #  70    0x12687c  1      OPC=nop             
  nop                         #  71    0x12687d  1      OPC=nop             
  nop                         #  72    0x12687e  1      OPC=nop             
  nop                         #  73    0x12687f  1      OPC=nop             
  nop                         #  74    0x126880  1      OPC=nop             
  retq

.size strcpy, -.strcpy

