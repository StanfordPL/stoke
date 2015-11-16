  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  nop                             #  1     0x1267e0  1      OPC=nop             
  nop                             #  2     0x1267e1  1      OPC=nop             
  nop                             #  3     0x1267e2  1      OPC=nop             
  nop                             #  4     0x1267e3  1      OPC=nop             
  nop                             #  5     0x1267e4  1      OPC=nop             
  xorq %rcx, %rcx                 #  6     0x1267e5  3      OPC=xorq_r64_r64    
  nop                             #  7     0x1267e8  1      OPC=nop             
  nop                             #  8     0x1267e9  1      OPC=nop             
  nop                             #  9     0x1267ea  1      OPC=nop             
  nop                             #  10    0x1267eb  1      OPC=nop             
  nop                             #  11    0x1267ec  1      OPC=nop             
  nop                             #  12    0x1267ed  1      OPC=nop             
  movl %esi, %edx                 #  13    0x1267ee  2      OPC=movl_r32_r32_1  
  movq %rdi, %rax                 #  14    0x1267f0  3      OPC=movq_r64_r64    
  jne .L_126860                   #  15    0x1267f3  6      OPC=jne_label_1     
  nop                             #  16    0x1267f9  1      OPC=nop             
  movl %esi, %esi                 #  17    0x1267fa  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d        #  18    0x1267fc  4      OPC=movl_r32_m32    
  jne .L_126860                   #  19    0x126800  6      OPC=jne_label_1     
  movq %r8, %r9                   #  20    0x126806  3      OPC=movq_r64_r64    
  nop                             #  21    0x126809  1      OPC=nop             
  nop                             #  22    0x12680a  1      OPC=nop             
  nop                             #  23    0x12680b  1      OPC=nop             
  nop                             #  24    0x12680c  1      OPC=nop             
  nop                             #  25    0x12680d  1      OPC=nop             
  nop                             #  26    0x12680e  1      OPC=nop             
  nop                             #  27    0x12680f  1      OPC=nop             
  nop                             #  28    0x126810  1      OPC=nop             
  nop                             #  29    0x126811  1      OPC=nop             
  nop                             #  30    0x126812  1      OPC=nop             
  nop                             #  31    0x126813  1      OPC=nop             
  nop                             #  32    0x126814  1      OPC=nop             
  nop                             #  33    0x126815  1      OPC=nop             
  nop                             #  34    0x126816  1      OPC=nop             
  nop                             #  35    0x126817  1      OPC=nop             
  nop                             #  36    0x126818  1      OPC=nop             
  nop                             #  37    0x126819  1      OPC=nop             
  nop                             #  38    0x12681a  1      OPC=nop             
  nop                             #  39    0x12681b  1      OPC=nop             
  nop                             #  40    0x12681c  1      OPC=nop             
  nop                             #  41    0x12681d  1      OPC=nop             
  nop                             #  42    0x12681e  1      OPC=nop             
  nop                             #  43    0x12681f  1      OPC=nop             
.L_126820:                        #        0x126820  0      OPC=<label>         
  orl %eax, %ecx                  #  44    0x126820  2      OPC=orl_r32_r32     
  movl %r8d, (%r15,%rcx,1)        #  45    0x126822  4      OPC=movl_m32_r32    
  nop                             #  46    0x126826  1      OPC=nop             
  nop                             #  47    0x126827  1      OPC=nop             
  nop                             #  48    0x126828  1      OPC=nop             
  nop                             #  49    0x126829  1      OPC=nop             
  nop                             #  50    0x12682a  1      OPC=nop             
  nop                             #  51    0x12682b  1      OPC=nop             
  nop                             #  52    0x12682c  1      OPC=nop             
  nop                             #  53    0x12682d  1      OPC=nop             
  nop                             #  54    0x12682e  1      OPC=nop             
  addq $0x4, %rcx                 #  55    0x12682f  7      OPC=addq_r64_imm32  
  subb %cl, %r9b                  #  56    0x126836  3      OPC=subb_r8_r8_1    
  addl $0x4, %edx                 #  57    0x126839  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  58    0x12683c  4      OPC=movl_r32_m32    
  nop                             #  59    0x126840  1      OPC=nop             
  nop                             #  60    0x126841  1      OPC=nop             
  nop                             #  61    0x126842  1      OPC=nop             
  nop                             #  62    0x126843  1      OPC=nop             
  nop                             #  63    0x126844  1      OPC=nop             
  nop                             #  64    0x126845  1      OPC=nop             
  nop                             #  65    0x126846  1      OPC=nop             
  nop                             #  66    0x126847  1      OPC=nop             
  nop                             #  67    0x126848  1      OPC=nop             
  nop                             #  68    0x126849  1      OPC=nop             
  nop                             #  69    0x12684a  1      OPC=nop             
  nop                             #  70    0x12684b  1      OPC=nop             
  andw $0x20, %r9w                #  71    0x12684c  5      OPC=andw_r16_imm8   
  nop                             #  72    0x126851  1      OPC=nop             
  je .L_126820                    #  73    0x126852  6      OPC=je_label_1      
  nop                             #  74    0x126858  1      OPC=nop             
  nop                             #  75    0x126859  1      OPC=nop             
  nop                             #  76    0x12685a  1      OPC=nop             
  nop                             #  77    0x12685b  1      OPC=nop             
  nop                             #  78    0x12685c  1      OPC=nop             
  nop                             #  79    0x12685d  1      OPC=nop             
  nop                             #  80    0x12685e  1      OPC=nop             
  nop                             #  81    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  82    0x126860  3      OPC=addl_r32_imm8   
  movsbq -0x1(%r15,%rdx,1), %rsi  #  83    0x126863  6      OPC=movsbq_r64_m8   
  addl $0x1, %ecx                 #  84    0x126869  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)    #  85    0x12686f  5      OPC=movb_m8_r8      
  nop                             #  86    0x126874  1      OPC=nop             
  nop                             #  87    0x126875  1      OPC=nop             
  nop                             #  88    0x126876  1      OPC=nop             
  nop                             #  89    0x126877  1      OPC=nop             
  nop                             #  90    0x126878  1      OPC=nop             
  nop                             #  91    0x126879  1      OPC=nop             
  nop                             #  92    0x12687a  1      OPC=nop             
  nop                             #  93    0x12687b  1      OPC=nop             
  nop                             #  94    0x12687c  1      OPC=nop             
  nop                             #  95    0x12687d  1      OPC=nop             
  nop                             #  96    0x12687e  1      OPC=nop             
  nop                             #  97    0x12687f  1      OPC=nop             
  nop                             #  98    0x126880  1      OPC=nop             
  andl $0xffffffff, %esi          #  99    0x126881  6      OPC=andl_r32_imm32  
  jne .L_126860                   #  100   0x126887  6      OPC=jne_label_1     
  nop                             #  101   0x12688d  1      OPC=nop             
  nop                             #  102   0x12688e  1      OPC=nop             
  nop                             #  103   0x12688f  1      OPC=nop             
  retq

.size strcpy, -.strcpy

