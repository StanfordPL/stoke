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
  nop                             #  6     0x1267e5  1      OPC=nop             
  nop                             #  7     0x1267e6  1      OPC=nop             
  nop                             #  8     0x1267e7  1      OPC=nop             
  movl %edi, %ecx                 #  9     0x1267e8  2      OPC=movl_r32_r32    
  nop                             #  10    0x1267ea  1      OPC=nop             
  nop                             #  11    0x1267eb  1      OPC=nop             
  movl %esi, %edx                 #  12    0x1267ec  2      OPC=movl_r32_r32    
  andl %esp, %esi                 #  13    0x1267ee  2      OPC=andl_r32_r32    
  movq %rcx, %rax                 #  14    0x1267f0  3      OPC=movq_r64_r64    
  jne .L_126860                   #  15    0x1267f3  6      OPC=jne_label_1     
  nop                             #  16    0x1267f9  1      OPC=nop             
  xorl %edx, %esi                 #  17    0x1267fa  2      OPC=xorl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d        #  18    0x1267fc  4      OPC=movl_r32_m32    
  nop                             #  19    0x126800  1      OPC=nop             
  movl %r8d, %esi                 #  20    0x126801  3      OPC=movl_r32_r32    
  decb %sil                       #  21    0x126804  3      OPC=decb_r8         
  nop                             #  22    0x126807  1      OPC=nop             
  nop                             #  23    0x126808  1      OPC=nop             
  nop                             #  24    0x126809  1      OPC=nop             
  nop                             #  25    0x12680a  1      OPC=nop             
  nop                             #  26    0x12680b  1      OPC=nop             
  nop                             #  27    0x12680c  1      OPC=nop             
  nop                             #  28    0x12680d  1      OPC=nop             
  andw $0x1, %si                  #  29    0x12680e  4      OPC=andw_r16_imm8   
  nop                             #  30    0x126812  1      OPC=nop             
  nop                             #  31    0x126813  1      OPC=nop             
  nop                             #  32    0x126814  1      OPC=nop             
  nop                             #  33    0x126815  1      OPC=nop             
  nop                             #  34    0x126816  1      OPC=nop             
  nop                             #  35    0x126817  1      OPC=nop             
  nop                             #  36    0x126818  1      OPC=nop             
  nop                             #  37    0x126819  1      OPC=nop             
  jne .L_126860                   #  38    0x12681a  6      OPC=jne_label_1     
.L_126820:                        #        0x126820  0      OPC=<label>         
  nop                             #  39    0x126820  1      OPC=nop             
  nop                             #  40    0x126821  1      OPC=nop             
  orl %ecx, %ecx                  #  41    0x126822  2      OPC=orl_r32_r32_1   
  movl %r8d, (%r15,%rcx,1)        #  42    0x126824  4      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  43    0x126828  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8         #  44    0x12682b  4      OPC=movq_r64_m64    
  movl %r8d, %r9d                 #  45    0x12682f  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi      #  46    0x126832  7      OPC=leal_r32_m32    
  addq $0x4, %rcx                 #  47    0x126839  7      OPC=addq_r64_imm32  
  andq $0x80808080, %rsi          #  48    0x126840  7      OPC=andq_r64_imm32  
  notl %r9d                       #  49    0x126847  3      OPC=notl_r32        
  andq %rsi, %r9                  #  50    0x12684a  3      OPC=andq_r64_r64_1  
  je .L_126820                    #  51    0x12684d  6      OPC=je_label_1      
  nop                             #  52    0x126853  1      OPC=nop             
  nop                             #  53    0x126854  1      OPC=nop             
  nop                             #  54    0x126855  1      OPC=nop             
  nop                             #  55    0x126856  1      OPC=nop             
  nop                             #  56    0x126857  1      OPC=nop             
  nop                             #  57    0x126858  1      OPC=nop             
  nop                             #  58    0x126859  1      OPC=nop             
  nop                             #  59    0x12685a  1      OPC=nop             
  nop                             #  60    0x12685b  1      OPC=nop             
  nop                             #  61    0x12685c  1      OPC=nop             
  nop                             #  62    0x12685d  1      OPC=nop             
  nop                             #  63    0x12685e  1      OPC=nop             
  nop                             #  64    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  65    0x126860  6      OPC=addl_r32_imm32  
  movsbl -0x1(%r15,%rdx,1), %esi  #  66    0x126866  6      OPC=movsbl_r32_m8   
  addl %ebp, %ecx                 #  67    0x12686c  2      OPC=addl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)        #  68    0x12686e  4      OPC=movb_m8_r8      
  addq $0x1, %rcx                 #  69    0x126872  7      OPC=addq_r64_imm32  
  nop                             #  70    0x126879  1      OPC=nop             
  nop                             #  71    0x12687a  1      OPC=nop             
  nop                             #  72    0x12687b  1      OPC=nop             
  nop                             #  73    0x12687c  1      OPC=nop             
  nop                             #  74    0x12687d  1      OPC=nop             
  nop                             #  75    0x12687e  1      OPC=nop             
  nop                             #  76    0x12687f  1      OPC=nop             
  nop                             #  77    0x126880  1      OPC=nop             
  nop                             #  78    0x126881  1      OPC=nop             
  nop                             #  79    0x126882  1      OPC=nop             
  nop                             #  80    0x126883  1      OPC=nop             
  nop                             #  81    0x126884  1      OPC=nop             
  nop                             #  82    0x126885  1      OPC=nop             
  nop                             #  83    0x126886  1      OPC=nop             
  nop                             #  84    0x126887  1      OPC=nop             
  testb %sil, %sil                #  85    0x126888  3      OPC=testb_r8_r8     
  jne .L_126860                   #  86    0x12688b  6      OPC=jne_label_1     
  nop                             #  87    0x126891  1      OPC=nop             
  retq

.size strcpy, -.strcpy

