  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  nop                         #  1     0x1267e0  1      OPC=nop             
  nop                         #  2     0x1267e1  1      OPC=nop             
  nop                         #  3     0x1267e2  1      OPC=nop             
  movq %rsi, %rdx             #  4     0x1267e3  3      OPC=movq_r64_r64    
  nop                         #  5     0x1267e6  1      OPC=nop             
  movq %rdi, %rax             #  6     0x1267e7  3      OPC=movq_r64_r64_1  
  xorl %edx, %edi             #  7     0x1267ea  2      OPC=xorl_r32_r32_1  
  movl %eax, %ecx             #  8     0x1267ec  2      OPC=movl_r32_r32    
  andl $0x20, %edi            #  9     0x1267ee  3      OPC=andl_r32_imm8   
  nop                         #  10    0x1267f1  1      OPC=nop             
  jne .L_126860               #  11    0x1267f2  6      OPC=jne_label_1     
  orb %ah, %ch                #  12    0x1267f8  2      OPC=orb_rh_rh       
  andl %esi, %esi             #  13    0x1267fa  2      OPC=andl_r32_r32    
  movq (%r15,%rsi,1), %r8     #  14    0x1267fc  4      OPC=movq_r64_m64    
  notw %si                    #  15    0x126800  3      OPC=notw_r16        
  andl $0x80, %esi            #  16    0x126803  6      OPC=andl_r32_imm32  
  nop                         #  17    0x126809  1      OPC=nop             
  nop                         #  18    0x12680a  1      OPC=nop             
  nop                         #  19    0x12680b  1      OPC=nop             
  nop                         #  20    0x12680c  1      OPC=nop             
  nop                         #  21    0x12680d  1      OPC=nop             
  nop                         #  22    0x12680e  1      OPC=nop             
  nop                         #  23    0x12680f  1      OPC=nop             
  nop                         #  24    0x126810  1      OPC=nop             
  nop                         #  25    0x126811  1      OPC=nop             
  nop                         #  26    0x126812  1      OPC=nop             
  nop                         #  27    0x126813  1      OPC=nop             
  nop                         #  28    0x126814  1      OPC=nop             
  nop                         #  29    0x126815  1      OPC=nop             
  jne .L_126860               #  30    0x126816  6      OPC=jne_label_1     
  nop                         #  31    0x12681c  1      OPC=nop             
  nop                         #  32    0x12681d  1      OPC=nop             
  nop                         #  33    0x12681e  1      OPC=nop             
  nop                         #  34    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  addq $0x4, %rdx             #  35    0x126820  4      OPC=addq_r64_imm8   
  xorl %esp, %ecx             #  36    0x126824  2      OPC=xorl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  37    0x126826  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  38    0x12682a  6      OPC=addl_r32_imm32  
  orl %edx, %edx              #  39    0x126830  2      OPC=orl_r32_r32_1   
  movq (%r15,%rdx,1), %r8     #  40    0x126832  4      OPC=movq_r64_m64    
  leaq -0x1010101(%r8), %rsi  #  41    0x126836  7      OPC=leaq_r64_m64    
  movl %r8d, %r9d             #  42    0x12683d  3      OPC=movl_r32_r32_1  
  notl %r9d                   #  43    0x126840  3      OPC=notl_r32        
  andl $0x80808080, %r9d      #  44    0x126843  7      OPC=andl_r32_imm32  
  andq %rsi, %r9              #  45    0x12684a  3      OPC=andq_r64_r64_1  
  je .L_126820                #  46    0x12684d  6      OPC=je_label_1      
  nop                         #  47    0x126853  1      OPC=nop             
  nop                         #  48    0x126854  1      OPC=nop             
  nop                         #  49    0x126855  1      OPC=nop             
  nop                         #  50    0x126856  1      OPC=nop             
  nop                         #  51    0x126857  1      OPC=nop             
  nop                         #  52    0x126858  1      OPC=nop             
  nop                         #  53    0x126859  1      OPC=nop             
  nop                         #  54    0x12685a  1      OPC=nop             
  nop                         #  55    0x12685b  1      OPC=nop             
  nop                         #  56    0x12685c  1      OPC=nop             
  nop                         #  57    0x12685d  1      OPC=nop             
  nop                         #  58    0x12685e  1      OPC=nop             
  nop                         #  59    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  movl %edx, %esi             #  60    0x126860  2      OPC=movl_r32_r32    
  movsbq (%r15,%rsi,1), %rsi  #  61    0x126862  5      OPC=movsbq_r64_m8   
  andl %ecx, %ecx             #  62    0x126867  2      OPC=andl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)    #  63    0x126869  4      OPC=movb_m8_r8      
  addq $0x1, %rdx             #  64    0x12686d  4      OPC=addq_r64_imm8   
  addl $0x1, %ecx             #  65    0x126871  6      OPC=addl_r32_imm32  
  testb %sil, %sil            #  66    0x126877  3      OPC=testb_r8_r8     
  jne .L_126860               #  67    0x12687a  6      OPC=jne_label_1     
  nop                         #  68    0x126880  1      OPC=nop             
  nop                         #  69    0x126881  1      OPC=nop             
  nop                         #  70    0x126882  1      OPC=nop             
  nop                         #  71    0x126883  1      OPC=nop             
  nop                         #  72    0x126884  1      OPC=nop             
  nop                         #  73    0x126885  1      OPC=nop             
  nop                         #  74    0x126886  1      OPC=nop             
  nop                         #  75    0x126887  1      OPC=nop             
  retq

.size strcpy, -.strcpy

