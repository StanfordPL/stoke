  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  movq %rsi, %rdx             #  1     0x1267e0  3      OPC=movq_r64_r64    
  movl %edi, %eax             #  2     0x1267e3  2      OPC=movl_r32_r32    
  movq %rax, %rcx             #  3     0x1267e5  3      OPC=movq_r64_r64    
  nop                         #  4     0x1267e8  1      OPC=nop             
  nop                         #  5     0x1267e9  1      OPC=nop             
  nop                         #  6     0x1267ea  1      OPC=nop             
  nop                         #  7     0x1267eb  1      OPC=nop             
  nop                         #  8     0x1267ec  1      OPC=nop             
  movl %edx, %edi             #  9     0x1267ed  2      OPC=movl_r32_r32    
  andl $0x3, %edi             #  10    0x1267ef  3      OPC=andl_r32_imm8   
  nop                         #  11    0x1267f2  1      OPC=nop             
  nop                         #  12    0x1267f3  1      OPC=nop             
  jne .L_126860               #  13    0x1267f4  6      OPC=jne_label_1     
  subl %edi, %esi             #  14    0x1267fa  2      OPC=subl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  15    0x1267fc  4      OPC=movl_r32_m32    
  nop                         #  16    0x126800  1      OPC=nop             
  nop                         #  17    0x126801  1      OPC=nop             
  nop                         #  18    0x126802  1      OPC=nop             
  nop                         #  19    0x126803  1      OPC=nop             
  nop                         #  20    0x126804  1      OPC=nop             
  nop                         #  21    0x126805  1      OPC=nop             
  nop                         #  22    0x126806  1      OPC=nop             
  nop                         #  23    0x126807  1      OPC=nop             
  nop                         #  24    0x126808  1      OPC=nop             
  nop                         #  25    0x126809  1      OPC=nop             
  nop                         #  26    0x12680a  1      OPC=nop             
  nop                         #  27    0x12680b  1      OPC=nop             
  nop                         #  28    0x12680c  1      OPC=nop             
  orb %bpl, %dil              #  29    0x12680d  3      OPC=orb_r8_r8       
  nop                         #  30    0x126810  1      OPC=nop             
  nop                         #  31    0x126811  1      OPC=nop             
  nop                         #  32    0x126812  1      OPC=nop             
  nop                         #  33    0x126813  1      OPC=nop             
  jne .L_126860               #  34    0x126814  6      OPC=jne_label_1     
  nop                         #  35    0x12681a  1      OPC=nop             
  nop                         #  36    0x12681b  1      OPC=nop             
  nop                         #  37    0x12681c  1      OPC=nop             
  nop                         #  38    0x12681d  1      OPC=nop             
  nop                         #  39    0x12681e  1      OPC=nop             
  nop                         #  40    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  movl %ecx, %ecx             #  41    0x126820  2      OPC=movl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)    #  42    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  43    0x126826  3      OPC=addl_r32_imm8   
  addl $0x4, %edx             #  44    0x126829  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8     #  45    0x12682c  4      OPC=movq_r64_m64    
  movl %r8d, %r9d             #  46    0x126830  3      OPC=movl_r32_r32    
  nop                         #  47    0x126833  1      OPC=nop             
  nop                         #  48    0x126834  1      OPC=nop             
  nop                         #  49    0x126835  1      OPC=nop             
  leal -0x1010101(%r8), %esi  #  50    0x126836  7      OPC=leal_r32_m32    
  notq %r9                    #  51    0x12683d  3      OPC=notq_r64        
  andl $0x80808080, %r9d      #  52    0x126840  7      OPC=andl_r32_imm32  
  andq %rsi, %r9              #  53    0x126847  3      OPC=andq_r64_r64_1  
  je .L_126820                #  54    0x12684a  6      OPC=je_label_1      
  nop                         #  55    0x126850  1      OPC=nop             
  nop                         #  56    0x126851  1      OPC=nop             
  nop                         #  57    0x126852  1      OPC=nop             
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
  movl %edx, %edx             #  71    0x126860  2      OPC=movl_r32_r32_1  
  movsbl (%r15,%rdx,1), %esi  #  72    0x126862  5      OPC=movsbl_r32_m8   
  addq $0x1, %rdx             #  73    0x126867  4      OPC=addq_r64_imm8   
  andl %ecx, %ecx             #  74    0x12686b  2      OPC=andl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  75    0x12686d  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  76    0x126871  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  77    0x126874  3      OPC=testb_r8_r8     
  jne .L_126860               #  78    0x126877  6      OPC=jne_label_1     
  nop                         #  79    0x12687d  1      OPC=nop             
  nop                         #  80    0x12687e  1      OPC=nop             
  nop                         #  81    0x12687f  1      OPC=nop             
  nop                         #  82    0x126880  1      OPC=nop             
  nop                         #  83    0x126881  1      OPC=nop             
  retq

.size strcpy, -.strcpy

