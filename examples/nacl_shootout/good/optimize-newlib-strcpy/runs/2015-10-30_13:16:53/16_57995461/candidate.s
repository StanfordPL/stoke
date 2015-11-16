  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  nop                         #  1     0x1267e0  1      OPC=nop             
  movq %rsi, %rdx             #  2     0x1267e1  3      OPC=movq_r64_r64    
  movl %edi, %eax             #  3     0x1267e4  2      OPC=movl_r32_r32    
  xorl %eax, %edi             #  4     0x1267e6  2      OPC=xorl_r32_r32    
  movq %rax, %rcx             #  5     0x1267e8  3      OPC=movq_r64_r64    
  nop                         #  6     0x1267eb  1      OPC=nop             
  nop                         #  7     0x1267ec  1      OPC=nop             
  nop                         #  8     0x1267ed  1      OPC=nop             
  nop                         #  9     0x1267ee  1      OPC=nop             
  nop                         #  10    0x1267ef  1      OPC=nop             
  jne .L_126860               #  11    0x1267f0  6      OPC=jne_label_1     
  nop                         #  12    0x1267f6  1      OPC=nop             
  movl %esi, %esi             #  13    0x1267f7  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  14    0x1267f9  4      OPC=movl_r32_m32    
  movl %r8d, %esi             #  15    0x1267fd  3      OPC=movl_r32_r32_1  
  leaq -0x1010101(%r8), %rdi  #  16    0x126800  7      OPC=leaq_r64_m64    
  notl %esi                   #  17    0x126807  2      OPC=notl_r32        
  andl $0x80808080, %esi      #  18    0x126809  6      OPC=andl_r32_imm32  
  andl %edi, %esi             #  19    0x12680f  2      OPC=andl_r32_r32    
  jne .L_126860               #  20    0x126811  6      OPC=jne_label_1     
  nop                         #  21    0x126817  1      OPC=nop             
  nop                         #  22    0x126818  1      OPC=nop             
  nop                         #  23    0x126819  1      OPC=nop             
  nop                         #  24    0x12681a  1      OPC=nop             
  nop                         #  25    0x12681b  1      OPC=nop             
  nop                         #  26    0x12681c  1      OPC=nop             
  nop                         #  27    0x12681d  1      OPC=nop             
  nop                         #  28    0x12681e  1      OPC=nop             
  nop                         #  29    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  addw $0x4, %dx              #  30    0x126820  4      OPC=addw_r16_imm8   
  orl %ecx, %ecx              #  31    0x126824  2      OPC=orl_r32_r32     
  movl %r8d, (%r15,%rcx,1)    #  32    0x126826  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  33    0x12682a  3      OPC=addl_r32_imm8   
  orl %edx, %edx              #  34    0x12682d  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdx,1), %r8d    #  35    0x12682f  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  36    0x126833  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi  #  37    0x126836  7      OPC=leal_r32_m16    
  notl %r9d                   #  38    0x12683d  3      OPC=notl_r32        
  andl %esi, %r9d             #  39    0x126840  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  40    0x126843  7      OPC=andl_r32_imm32  
  je .L_126820                #  41    0x12684a  6      OPC=je_label_1      
  nop                         #  42    0x126850  1      OPC=nop             
  nop                         #  43    0x126851  1      OPC=nop             
  nop                         #  44    0x126852  1      OPC=nop             
  nop                         #  45    0x126853  1      OPC=nop             
  nop                         #  46    0x126854  1      OPC=nop             
  nop                         #  47    0x126855  1      OPC=nop             
  nop                         #  48    0x126856  1      OPC=nop             
  nop                         #  49    0x126857  1      OPC=nop             
  nop                         #  50    0x126858  1      OPC=nop             
  nop                         #  51    0x126859  1      OPC=nop             
  nop                         #  52    0x12685a  1      OPC=nop             
  nop                         #  53    0x12685b  1      OPC=nop             
  nop                         #  54    0x12685c  1      OPC=nop             
  nop                         #  55    0x12685d  1      OPC=nop             
  nop                         #  56    0x12685e  1      OPC=nop             
  nop                         #  57    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  movl %edx, %edx             #  58    0x126860  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  59    0x126862  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  60    0x126867  3      OPC=addl_r32_imm8   
  nop                         #  61    0x12686a  1      OPC=nop             
  nop                         #  62    0x12686b  1      OPC=nop             
  nop                         #  63    0x12686c  1      OPC=nop             
  movl %ecx, %ecx             #  64    0x12686d  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)    #  65    0x12686f  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  66    0x126873  3      OPC=addl_r32_imm8   
  testb %dil, %sil            #  67    0x126876  3      OPC=testb_r8_r8     
  jne .L_126860               #  68    0x126879  6      OPC=jne_label_1     
  nop                         #  69    0x12687f  1      OPC=nop             
  nop                         #  70    0x126880  1      OPC=nop             
  nop                         #  71    0x126881  1      OPC=nop             
  nop                         #  72    0x126882  1      OPC=nop             
  retq

.size strcpy, -.strcpy

