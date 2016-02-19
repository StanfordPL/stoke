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
  movl %edi, %eax             #  4     0x1267e3  2      OPC=movl_r32_r32    
  nop                         #  5     0x1267e5  1      OPC=nop             
  nop                         #  6     0x1267e6  1      OPC=nop             
  nop                         #  7     0x1267e7  1      OPC=nop             
  movq %rsi, %rdx             #  8     0x1267e8  3      OPC=movq_r64_r64    
  nop                         #  9     0x1267eb  1      OPC=nop             
  nop                         #  10    0x1267ec  1      OPC=nop             
  movq %rax, %rcx             #  11    0x1267ed  3      OPC=movq_r64_r64_1  
  orw %dx, %di                #  12    0x1267f0  3      OPC=orw_r16_r16_1   
  nop                         #  13    0x1267f3  1      OPC=nop             
  nop                         #  14    0x1267f4  1      OPC=nop             
  nop                         #  15    0x1267f5  1      OPC=nop             
  nop                         #  16    0x1267f6  1      OPC=nop             
  andl $0x3, %edi             #  17    0x1267f7  3      OPC=andl_r32_imm8   
  jne .L_126860               #  18    0x1267fa  6      OPC=jne_label_1     
  orl %edx, %edx              #  19    0x126800  2      OPC=orl_r32_r32     
  movl (%r15,%rdx,1), %r8d    #  20    0x126802  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %edi  #  21    0x126806  7      OPC=leal_r32_m16    
  movl %r8d, %esi             #  22    0x12680d  3      OPC=movl_r32_r32    
  nop                         #  23    0x126810  1      OPC=nop             
  nop                         #  24    0x126811  1      OPC=nop             
  notl %esi                   #  25    0x126812  2      OPC=notl_r32        
  nop                         #  26    0x126814  1      OPC=nop             
  nop                         #  27    0x126815  1      OPC=nop             
  nop                         #  28    0x126816  1      OPC=nop             
  nop                         #  29    0x126817  1      OPC=nop             
  andl $0x80808080, %esi      #  30    0x126818  6      OPC=andl_r32_imm32  
  andl %edi, %esi             #  31    0x12681e  2      OPC=andl_r32_r32    
  nop                         #  32    0x126820  1      OPC=nop             
  nop                         #  33    0x126821  1      OPC=nop             
  nop                         #  34    0x126822  1      OPC=nop             
  nop                         #  35    0x126823  1      OPC=nop             
  nop                         #  36    0x126824  1      OPC=nop             
  nop                         #  37    0x126825  1      OPC=nop             
  jne .L_126860               #  38    0x126826  6      OPC=jne_label_1     
  nop                         #  39    0x12682c  1      OPC=nop             
.L_126820:                    #        0x12682d  0      OPC=<label>         
  orl %ecx, %ecx              #  40    0x12682d  2      OPC=orl_r32_r32_1   
  movl %r8d, (%r15,%rcx,1)    #  41    0x12682f  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  42    0x126833  3      OPC=addl_r32_imm8   
  addl $0x4, %edx             #  43    0x126836  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8     #  44    0x126839  4      OPC=movq_r64_m64    
  movl %r8d, %r9d             #  45    0x12683d  3      OPC=movl_r32_r32    
  notl %r9d                   #  46    0x126840  3      OPC=notl_r32        
  leal -0x1010101(%r8), %esi  #  47    0x126843  7      OPC=leal_r32_m32    
  andl $0x80808080, %r9d      #  48    0x12684a  7      OPC=andl_r32_imm32  
  andl %esi, %r9d             #  49    0x126851  3      OPC=andl_r32_r32    
  je .L_126820                #  50    0x126854  6      OPC=je_label_1      
  nop                         #  51    0x12685a  1      OPC=nop             
  nop                         #  52    0x12685b  1      OPC=nop             
  nop                         #  53    0x12685c  1      OPC=nop             
  nop                         #  54    0x12685d  1      OPC=nop             
  nop                         #  55    0x12685e  1      OPC=nop             
  nop                         #  56    0x12685f  1      OPC=nop             
  nop                         #  57    0x126860  1      OPC=nop             
  nop                         #  58    0x126861  1      OPC=nop             
.L_126860:                    #        0x126862  0      OPC=<label>         
  andl %edx, %edx             #  59    0x126862  2      OPC=andl_r32_r32    
  movzbw (%r15,%rdx,1), %si   #  60    0x126864  6      OPC=movzbw_r16_m8   
  addl $0x1, %edx             #  61    0x12686a  3      OPC=addl_r32_imm8   
  orl %ecx, %ecx              #  62    0x12686d  2      OPC=orl_r32_r32     
  movb %sil, (%r15,%rcx,1)    #  63    0x12686f  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  64    0x126873  3      OPC=addl_r32_imm8   
  negw %si                    #  65    0x126876  3      OPC=negw_r16        
  jne .L_126860               #  66    0x126879  6      OPC=jne_label_1     
  nop                         #  67    0x12687f  1      OPC=nop             
  nop                         #  68    0x126880  1      OPC=nop             
  nop                         #  69    0x126881  1      OPC=nop             
  retq                        #  70    0x126882  1      OPC=retq            
                                                                            
.size strcpy, .-strcpy
