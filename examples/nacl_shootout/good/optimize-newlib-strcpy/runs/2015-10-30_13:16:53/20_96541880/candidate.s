  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax             #  1     0x1267e0  2      OPC=movl_r32_r32_1  
  nop                         #  2     0x1267e2  1      OPC=nop             
  nop                         #  3     0x1267e3  1      OPC=nop             
  nop                         #  4     0x1267e4  1      OPC=nop             
  nop                         #  5     0x1267e5  1      OPC=nop             
  nop                         #  6     0x1267e6  1      OPC=nop             
  nop                         #  7     0x1267e7  1      OPC=nop             
  movl %esi, %edx             #  8     0x1267e8  2      OPC=movl_r32_r32_1  
  andl $0x3, %esi             #  9     0x1267ea  3      OPC=andl_r32_imm8   
  movq %rax, %rcx             #  10    0x1267ed  3      OPC=movq_r64_r64_1  
  jne .L_126860               #  11    0x1267f0  6      OPC=jne_label_1     
  nop                         #  12    0x1267f6  1      OPC=nop             
  nop                         #  13    0x1267f7  1      OPC=nop             
  nop                         #  14    0x1267f8  1      OPC=nop             
  nop                         #  15    0x1267f9  1      OPC=nop             
  xorl %edx, %esi             #  16    0x1267fa  2      OPC=xorl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  17    0x1267fc  4      OPC=movl_r32_m32    
  leaw -0x8(%r8,%rdi,2), %di  #  18    0x126800  6      OPC=leaw_r16_m64    
  nop                         #  19    0x126806  1      OPC=nop             
  nop                         #  20    0x126807  1      OPC=nop             
  nop                         #  21    0x126808  1      OPC=nop             
  nop                         #  22    0x126809  1      OPC=nop             
  movq %r8, %rsi              #  23    0x12680a  3      OPC=movq_r64_r64_1  
  nop                         #  24    0x12680d  1      OPC=nop             
  nop                         #  25    0x12680e  1      OPC=nop             
  notw %si                    #  26    0x12680f  3      OPC=notw_r16        
  andl $0x20, %esi            #  27    0x126812  6      OPC=andl_r32_imm32  
  andl %edi, %esi             #  28    0x126818  2      OPC=andl_r32_r32_1  
  jne .L_126860               #  29    0x12681a  6      OPC=jne_label_1     
.L_126820:                    #        0x126820  0      OPC=<label>         
  addw $0x4, %dx              #  30    0x126820  4      OPC=addw_r16_imm8   
  orl %ecx, %ecx              #  31    0x126824  2      OPC=orl_r32_r32_1   
  movl %r8d, (%r15,%rcx,1)    #  32    0x126826  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  33    0x12682a  3      OPC=addl_r32_imm8   
  movl %edx, %edx             #  34    0x12682d  2      OPC=movl_r32_r32    
  movl (%r15,%rdx,1), %r8d    #  35    0x12682f  4      OPC=movl_r32_m32    
  movq %r8, %r9               #  36    0x126833  3      OPC=movq_r64_r64    
  leaq -0x1010101(%r8), %rsi  #  37    0x126836  7      OPC=leaq_r64_m64    
  notq %r9                    #  38    0x12683d  3      OPC=notq_r64        
  andq %rsi, %r9              #  39    0x126840  3      OPC=andq_r64_r64_1  
  andq $0x80808080, %r9       #  40    0x126843  7      OPC=andq_r64_imm32  
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
  addl %ebp, %edx             #  58    0x126860  2      OPC=addl_r32_r32    
  movsbq (%r15,%rdx,1), %rsi  #  59    0x126862  5      OPC=movsbq_r64_m8   
  addq $0x1, %rdx             #  60    0x126867  7      OPC=addq_r64_imm32  
  orl %ecx, %ecx              #  61    0x12686e  2      OPC=orl_r32_r32     
  movb %sil, (%r15,%rcx,1)    #  62    0x126870  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  63    0x126874  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  64    0x126877  3      OPC=testb_r8_r8     
  jne .L_126860               #  65    0x12687a  6      OPC=jne_label_1     
  nop                         #  66    0x126880  1      OPC=nop             
  nop                         #  67    0x126881  1      OPC=nop             
  nop                         #  68    0x126882  1      OPC=nop             
  nop                         #  69    0x126883  1      OPC=nop             
  nop                         #  70    0x126884  1      OPC=nop             
  nop                         #  71    0x126885  1      OPC=nop             
  nop                         #  72    0x126886  1      OPC=nop             
  nop                         #  73    0x126887  1      OPC=nop             
  nop                         #  74    0x126888  1      OPC=nop             
  nop                         #  75    0x126889  1      OPC=nop             
  nop                         #  76    0x12688a  1      OPC=nop             
  nop                         #  77    0x12688b  1      OPC=nop             
  nop                         #  78    0x12688c  1      OPC=nop             
  nop                         #  79    0x12688d  1      OPC=nop             
  nop                         #  80    0x12688e  1      OPC=nop             
  retq

.size strcpy, -.strcpy

