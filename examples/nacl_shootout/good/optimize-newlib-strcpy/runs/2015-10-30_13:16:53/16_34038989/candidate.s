  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax                 #  1     0x1267e0  2      OPC=movl_r32_r32    
  nop                             #  2     0x1267e2  1      OPC=nop             
  movq %rsi, %rdx                 #  3     0x1267e3  3      OPC=movq_r64_r64_1  
  orb %dl, %dil                   #  4     0x1267e6  3      OPC=orb_r8_r8_1     
  nop                             #  5     0x1267e9  1      OPC=nop             
  movq %rax, %rcx                 #  6     0x1267ea  3      OPC=movq_r64_r64    
  andq $0x1, %rdi                 #  7     0x1267ed  4      OPC=andq_r64_imm8   
  jne .L_126860                   #  8     0x1267f1  6      OPC=jne_label_1     
  movl %esi, %esi                 #  9     0x1267f7  2      OPC=movl_r32_r32_1  
  movq (%r15,%rsi,1), %r8         #  10    0x1267f9  4      OPC=movq_r64_m64    
  nop                             #  11    0x1267fd  1      OPC=nop             
  nop                             #  12    0x1267fe  1      OPC=nop             
  nop                             #  13    0x1267ff  1      OPC=nop             
  nop                             #  14    0x126800  1      OPC=nop             
  jne .L_126860                   #  15    0x126801  6      OPC=jne_label_1     
  nop                             #  16    0x126807  1      OPC=nop             
  nop                             #  17    0x126808  1      OPC=nop             
  nop                             #  18    0x126809  1      OPC=nop             
  nop                             #  19    0x12680a  1      OPC=nop             
  nop                             #  20    0x12680b  1      OPC=nop             
  nop                             #  21    0x12680c  1      OPC=nop             
  nop                             #  22    0x12680d  1      OPC=nop             
  nop                             #  23    0x12680e  1      OPC=nop             
  nop                             #  24    0x12680f  1      OPC=nop             
  nop                             #  25    0x126810  1      OPC=nop             
  nop                             #  26    0x126811  1      OPC=nop             
  nop                             #  27    0x126812  1      OPC=nop             
  nop                             #  28    0x126813  1      OPC=nop             
  nop                             #  29    0x126814  1      OPC=nop             
  nop                             #  30    0x126815  1      OPC=nop             
  nop                             #  31    0x126816  1      OPC=nop             
  nop                             #  32    0x126817  1      OPC=nop             
  nop                             #  33    0x126818  1      OPC=nop             
  nop                             #  34    0x126819  1      OPC=nop             
  nop                             #  35    0x12681a  1      OPC=nop             
  nop                             #  36    0x12681b  1      OPC=nop             
  nop                             #  37    0x12681c  1      OPC=nop             
  nop                             #  38    0x12681d  1      OPC=nop             
  nop                             #  39    0x12681e  1      OPC=nop             
  nop                             #  40    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  41    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)    #  42    0x126823  5      OPC=movl_m32_r32    
  nop                             #  43    0x126828  1      OPC=nop             
  nop                             #  44    0x126829  1      OPC=nop             
  nop                             #  45    0x12682a  1      OPC=nop             
  nop                             #  46    0x12682b  1      OPC=nop             
  nop                             #  47    0x12682c  1      OPC=nop             
  nop                             #  48    0x12682d  1      OPC=nop             
  nop                             #  49    0x12682e  1      OPC=nop             
  addl $0x4, %edx                 #  50    0x12682f  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8         #  51    0x126832  4      OPC=movq_r64_m64    
  leal -0x1010101(%r8), %esi      #  52    0x126836  7      OPC=leal_r32_m16    
  movl %r8d, %r9d                 #  53    0x12683d  3      OPC=movl_r32_r32_1  
  andq $0x80808080, %rsi          #  54    0x126840  7      OPC=andq_r64_imm32  
  notq %r9                        #  55    0x126847  3      OPC=notq_r64        
  andl %esi, %r9d                 #  56    0x12684a  3      OPC=andl_r32_r32    
  je .L_126820                    #  57    0x12684d  6      OPC=je_label_1      
  nop                             #  58    0x126853  1      OPC=nop             
  nop                             #  59    0x126854  1      OPC=nop             
  nop                             #  60    0x126855  1      OPC=nop             
  nop                             #  61    0x126856  1      OPC=nop             
  nop                             #  62    0x126857  1      OPC=nop             
  nop                             #  63    0x126858  1      OPC=nop             
  nop                             #  64    0x126859  1      OPC=nop             
  nop                             #  65    0x12685a  1      OPC=nop             
  nop                             #  66    0x12685b  1      OPC=nop             
  nop                             #  67    0x12685c  1      OPC=nop             
  nop                             #  68    0x12685d  1      OPC=nop             
  nop                             #  69    0x12685e  1      OPC=nop             
  nop                             #  70    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  71    0x126860  3      OPC=addl_r32_imm8   
  movsbl -0x1(%r15,%rdx,1), %esi  #  72    0x126863  6      OPC=movsbl_r32_m8   
  addl $0x1, %ecx                 #  73    0x126869  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)    #  74    0x12686f  5      OPC=movb_m8_r8      
  xorw %sp, %si                   #  75    0x126874  3      OPC=xorw_r16_r16_1  
  jne .L_126860                   #  76    0x126877  6      OPC=jne_label_1     
  nop                             #  77    0x12687d  1      OPC=nop             
  nop                             #  78    0x12687e  1      OPC=nop             
  nop                             #  79    0x12687f  1      OPC=nop             
  nop                             #  80    0x126880  1      OPC=nop             
  nop                             #  81    0x126881  1      OPC=nop             
  nop                             #  82    0x126882  1      OPC=nop             
  retq

.size strcpy, -.strcpy

