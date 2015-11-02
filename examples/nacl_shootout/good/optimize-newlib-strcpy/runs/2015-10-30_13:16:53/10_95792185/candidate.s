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
  subl %esi, %edi             #  3     0x1267e3  2      OPC=subl_r32_r32_1  
  movq %rsi, %rdx             #  4     0x1267e5  3      OPC=movq_r64_r64_1  
  movq %rax, %rcx             #  5     0x1267e8  3      OPC=movq_r64_r64    
  andl $0x3, %edi             #  6     0x1267eb  3      OPC=andl_r32_imm8   
  jne .L_126860               #  7     0x1267ee  6      OPC=jne_label_1     
  movl %esi, %esi             #  8     0x1267f4  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  9     0x1267f6  4      OPC=movl_r32_m32    
  nop                         #  10    0x1267fa  1      OPC=nop             
  movl %r8d, %esi             #  11    0x1267fb  3      OPC=movl_r32_r32    
  nop                         #  12    0x1267fe  1      OPC=nop             
  nop                         #  13    0x1267ff  1      OPC=nop             
  nop                         #  14    0x126800  1      OPC=nop             
  nop                         #  15    0x126801  1      OPC=nop             
  nop                         #  16    0x126802  1      OPC=nop             
  nop                         #  17    0x126803  1      OPC=nop             
  nop                         #  18    0x126804  1      OPC=nop             
  nop                         #  19    0x126805  1      OPC=nop             
  notl %esi                   #  20    0x126806  2      OPC=notl_r32        
  andl %edi, %esi             #  21    0x126808  2      OPC=andl_r32_r32    
  andl $0x80808080, %esi      #  22    0x12680a  6      OPC=andl_r32_imm32  
  jne .L_126860               #  23    0x126810  6      OPC=jne_label_1     
  nop                         #  24    0x126816  1      OPC=nop             
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
  addl $0x4, %ecx             #  37    0x126829  3      OPC=addl_r32_imm8   
  movl %edx, %edx             #  38    0x12682c  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d    #  39    0x12682e  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  40    0x126832  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi  #  41    0x126835  7      OPC=leal_r32_m16    
  notl %r9d                   #  42    0x12683c  3      OPC=notl_r32        
  nop                         #  43    0x12683f  1      OPC=nop             
  nop                         #  44    0x126840  1      OPC=nop             
  andl %esi, %r9d             #  45    0x126841  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  46    0x126844  7      OPC=andl_r32_imm32  
  je .L_126820                #  47    0x12684b  6      OPC=je_label_1      
  nop                         #  48    0x126851  1      OPC=nop             
  nop                         #  49    0x126852  1      OPC=nop             
  nop                         #  50    0x126853  1      OPC=nop             
  nop                         #  51    0x126854  1      OPC=nop             
  nop                         #  52    0x126855  1      OPC=nop             
  nop                         #  53    0x126856  1      OPC=nop             
  nop                         #  54    0x126857  1      OPC=nop             
  nop                         #  55    0x126858  1      OPC=nop             
  nop                         #  56    0x126859  1      OPC=nop             
  nop                         #  57    0x12685a  1      OPC=nop             
  nop                         #  58    0x12685b  1      OPC=nop             
  nop                         #  59    0x12685c  1      OPC=nop             
  nop                         #  60    0x12685d  1      OPC=nop             
  nop                         #  61    0x12685e  1      OPC=nop             
  nop                         #  62    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  movl %edx, %edx             #  63    0x126860  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  64    0x126862  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  65    0x126867  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  66    0x12686a  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  67    0x12686c  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  68    0x126870  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  69    0x126873  3      OPC=testb_r8_r8     
  jne .L_126860               #  70    0x126876  6      OPC=jne_label_1     
  nop                         #  71    0x12687c  1      OPC=nop             
  nop                         #  72    0x12687d  1      OPC=nop             
  nop                         #  73    0x12687e  1      OPC=nop             
  nop                         #  74    0x12687f  1      OPC=nop             
  nop                         #  75    0x126880  1      OPC=nop             
  nop                         #  76    0x126881  1      OPC=nop             
  nop                         #  77    0x126882  1      OPC=nop             
  nop                         #  78    0x126883  1      OPC=nop             
  retq

.size strcpy, -.strcpy

