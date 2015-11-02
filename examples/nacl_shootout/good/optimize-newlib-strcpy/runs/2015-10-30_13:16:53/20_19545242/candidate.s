  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  nop                         #  1     0x1267e0  1      OPC=nop             
  movq %rdi, %rcx             #  2     0x1267e1  3      OPC=movq_r64_r64    
  salb $0x1, %dil             #  3     0x1267e4  3      OPC=salb_r8_one     
  addw %si, %di               #  4     0x1267e7  3      OPC=addw_r16_r16_1  
  movl %ecx, %eax             #  5     0x1267ea  2      OPC=movl_r32_r32    
  andw $0x3, %di              #  6     0x1267ec  4      OPC=andw_r16_imm8   
  movq %rsi, %rdx             #  7     0x1267f0  3      OPC=movq_r64_r64    
  jne .L_126860               #  8     0x1267f3  6      OPC=jne_label_1     
  nop                         #  9     0x1267f9  1      OPC=nop             
  movl %esi, %esi             #  10    0x1267fa  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d    #  11    0x1267fc  4      OPC=movl_r32_m32    
  jne .L_126860               #  12    0x126800  6      OPC=jne_label_1     
  nop                         #  13    0x126806  1      OPC=nop             
  nop                         #  14    0x126807  1      OPC=nop             
  nop                         #  15    0x126808  1      OPC=nop             
  nop                         #  16    0x126809  1      OPC=nop             
  nop                         #  17    0x12680a  1      OPC=nop             
  nop                         #  18    0x12680b  1      OPC=nop             
  nop                         #  19    0x12680c  1      OPC=nop             
  nop                         #  20    0x12680d  1      OPC=nop             
  nop                         #  21    0x12680e  1      OPC=nop             
  nopl %eax                   #  22    0x12680f  3      OPC=nopl_r32        
  nop                         #  23    0x126812  1      OPC=nop             
  nop                         #  24    0x126813  1      OPC=nop             
  nop                         #  25    0x126814  1      OPC=nop             
  nop                         #  26    0x126815  1      OPC=nop             
  nop                         #  27    0x126816  1      OPC=nop             
  nop                         #  28    0x126817  1      OPC=nop             
  nop                         #  29    0x126818  1      OPC=nop             
  nop                         #  30    0x126819  1      OPC=nop             
  nop                         #  31    0x12681a  1      OPC=nop             
  nop                         #  32    0x12681b  1      OPC=nop             
  nop                         #  33    0x12681c  1      OPC=nop             
  nop                         #  34    0x12681d  1      OPC=nop             
  nop                         #  35    0x12681e  1      OPC=nop             
  nop                         #  36    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  orl $0x0, %ecx              #  37    0x126820  3      OPC=orl_r32_imm8    
  movl %r8d, (%r15,%rcx,1)    #  38    0x126823  4      OPC=movl_m32_r32    
  addl $0x4, %edx             #  39    0x126827  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  40    0x12682a  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  41    0x12682e  3      OPC=movl_r32_r32    
  notl %r9d                   #  42    0x126831  3      OPC=notl_r32        
  nop                         #  43    0x126834  1      OPC=nop             
  addq $0x4, %rcx             #  44    0x126835  4      OPC=addq_r64_imm8   
  leaq -0x1010101(%r8), %rsi  #  45    0x126839  7      OPC=leaq_r64_m64    
  nop                         #  46    0x126840  1      OPC=nop             
  nop                         #  47    0x126841  1      OPC=nop             
  nop                         #  48    0x126842  1      OPC=nop             
  nop                         #  49    0x126843  1      OPC=nop             
  nop                         #  50    0x126844  1      OPC=nop             
  nop                         #  51    0x126845  1      OPC=nop             
  nop                         #  52    0x126846  1      OPC=nop             
  nop                         #  53    0x126847  1      OPC=nop             
  nop                         #  54    0x126848  1      OPC=nop             
  nop                         #  55    0x126849  1      OPC=nop             
  nop                         #  56    0x12684a  1      OPC=nop             
  andl $0x80808080, %r9d      #  57    0x12684b  7      OPC=andl_r32_imm32  
  andl %esi, %r9d             #  58    0x126852  3      OPC=andl_r32_r32_1  
  je .L_126820                #  59    0x126855  6      OPC=je_label_1      
  nop                         #  60    0x12685b  1      OPC=nop             
  nop                         #  61    0x12685c  1      OPC=nop             
  nop                         #  62    0x12685d  1      OPC=nop             
  nop                         #  63    0x12685e  1      OPC=nop             
  nop                         #  64    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  addl %esp, %edx             #  65    0x126860  2      OPC=addl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  66    0x126862  5      OPC=movzbl_r32_m8   
  addw $0x1, %dx              #  67    0x126867  4      OPC=addw_r16_imm8   
  xorl %ebp, %ecx             #  68    0x12686b  2      OPC=xorl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)    #  69    0x12686d  4      OPC=movb_m8_r8      
  addw $0x1, %cx              #  70    0x126871  4      OPC=addw_r16_imm8   
  testb %sil, %sil            #  71    0x126875  3      OPC=testb_r8_r8     
  jne .L_126860               #  72    0x126878  6      OPC=jne_label_1     
  nop                         #  73    0x12687e  1      OPC=nop             
  nop                         #  74    0x12687f  1      OPC=nop             
  nop                         #  75    0x126880  1      OPC=nop             
  nop                         #  76    0x126881  1      OPC=nop             
  nop                         #  77    0x126882  1      OPC=nop             
  nop                         #  78    0x126883  1      OPC=nop             
  nop                         #  79    0x126884  1      OPC=nop             
  nop                         #  80    0x126885  1      OPC=nop             
  nop                         #  81    0x126886  1      OPC=nop             
  nop                         #  82    0x126887  1      OPC=nop             
  nop                         #  83    0x126888  1      OPC=nop             
  nop                         #  84    0x126889  1      OPC=nop             
  nop                         #  85    0x12688a  1      OPC=nop             
  nop                         #  86    0x12688b  1      OPC=nop             
  nop                         #  87    0x12688c  1      OPC=nop             
  nop                         #  88    0x12688d  1      OPC=nop             
  retq

.size strcpy, -.strcpy

