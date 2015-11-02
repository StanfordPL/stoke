  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movq %rdi, %rcx                 #  1     0x1267e0  3      OPC=movq_r64_r64_1  
  nop                             #  2     0x1267e3  1      OPC=nop             
  nop                             #  3     0x1267e4  1      OPC=nop             
  nop                             #  4     0x1267e5  1      OPC=nop             
  nop                             #  5     0x1267e6  1      OPC=nop             
  nop                             #  6     0x1267e7  1      OPC=nop             
  nop                             #  7     0x1267e8  1      OPC=nop             
  nop                             #  8     0x1267e9  1      OPC=nop             
  nop                             #  9     0x1267ea  1      OPC=nop             
  nop                             #  10    0x1267eb  1      OPC=nop             
  movl %esi, %edx                 #  11    0x1267ec  2      OPC=movl_r32_r32    
  andl $0x2, %esi                 #  12    0x1267ee  6      OPC=andl_r32_imm32  
  nop                             #  13    0x1267f4  1      OPC=nop             
  nop                             #  14    0x1267f5  1      OPC=nop             
  nop                             #  15    0x1267f6  1      OPC=nop             
  nop                             #  16    0x1267f7  1      OPC=nop             
  nop                             #  17    0x1267f8  1      OPC=nop             
  nop                             #  18    0x1267f9  1      OPC=nop             
  jne .L_126860                   #  19    0x1267fa  6      OPC=jne_label_1     
  nop                             #  20    0x126800  1      OPC=nop             
  nop                             #  21    0x126801  1      OPC=nop             
  movl %edx, %esi                 #  22    0x126802  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d        #  23    0x126804  4      OPC=movl_r32_m32    
  nop                             #  24    0x126808  1      OPC=nop             
  nop                             #  25    0x126809  1      OPC=nop             
  nop                             #  26    0x12680a  1      OPC=nop             
  nop                             #  27    0x12680b  1      OPC=nop             
  nop                             #  28    0x12680c  1      OPC=nop             
  nop                             #  29    0x12680d  1      OPC=nop             
  nop                             #  30    0x12680e  1      OPC=nop             
  nop                             #  31    0x12680f  1      OPC=nop             
  jne .L_126860                   #  32    0x126810  6      OPC=jne_label_1     
  nop                             #  33    0x126816  1      OPC=nop             
  nop                             #  34    0x126817  1      OPC=nop             
  nop                             #  35    0x126818  1      OPC=nop             
  nop                             #  36    0x126819  1      OPC=nop             
  nop                             #  37    0x12681a  1      OPC=nop             
  nop                             #  38    0x12681b  1      OPC=nop             
  nop                             #  39    0x12681c  1      OPC=nop             
  nop                             #  40    0x12681d  1      OPC=nop             
  nop                             #  41    0x12681e  1      OPC=nop             
  nop                             #  42    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  43    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)    #  44    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  45    0x126828  6      OPC=addl_r32_imm32  
  movl (%r15,%rdx,1), %r8d        #  46    0x12682e  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %rsi      #  47    0x126832  7      OPC=leaq_r64_m64    
  movl %r8d, %r9d                 #  48    0x126839  3      OPC=movl_r32_r32    
  nop                             #  49    0x12683c  1      OPC=nop             
  nop                             #  50    0x12683d  1      OPC=nop             
  nop                             #  51    0x12683e  1      OPC=nop             
  nop                             #  52    0x12683f  1      OPC=nop             
  notl %r9d                       #  53    0x126840  3      OPC=notl_r32        
  andq %rsi, %r9                  #  54    0x126843  3      OPC=andq_r64_r64_1  
  andq $0x80808080, %r9           #  55    0x126846  7      OPC=andq_r64_imm32  
  je .L_126820                    #  56    0x12684d  6      OPC=je_label_1      
  nop                             #  57    0x126853  1      OPC=nop             
  nop                             #  58    0x126854  1      OPC=nop             
  nop                             #  59    0x126855  1      OPC=nop             
  nop                             #  60    0x126856  1      OPC=nop             
  nop                             #  61    0x126857  1      OPC=nop             
  nop                             #  62    0x126858  1      OPC=nop             
  nop                             #  63    0x126859  1      OPC=nop             
  nop                             #  64    0x12685a  1      OPC=nop             
  nop                             #  65    0x12685b  1      OPC=nop             
  nop                             #  66    0x12685c  1      OPC=nop             
  nop                             #  67    0x12685d  1      OPC=nop             
  nop                             #  68    0x12685e  1      OPC=nop             
  nop                             #  69    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  70    0x126860  3      OPC=addl_r32_imm8   
  movzbq -0x1(%r15,%rdx,1), %rsi  #  71    0x126863  6      OPC=movzbq_r64_m8   
  addl $0x1, %ecx                 #  72    0x126869  3      OPC=addl_r32_imm8   
  movb %sil, -0x1(%r15,%rcx,1)    #  73    0x12686c  5      OPC=movb_m8_r8      
  testb %sil, %sil                #  74    0x126871  3      OPC=testb_r8_r8     
  jne .L_126860                   #  75    0x126874  6      OPC=jne_label_1     
  nop                             #  76    0x12687a  1      OPC=nop             
  nop                             #  77    0x12687b  1      OPC=nop             
  nop                             #  78    0x12687c  1      OPC=nop             
  movq %rdi, %rax                 #  79    0x12687d  3      OPC=movq_r64_r64    
  retq

.size strcpy, -.strcpy

