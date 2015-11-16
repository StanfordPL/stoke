  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strcpy:                        #        0x1267e0  0      OPC=<label>         
  movl %edi, %ecx               #  1     0x1267e0  2      OPC=movl_r32_r32_1  
  movl %esi, %edx               #  2     0x1267e2  2      OPC=movl_r32_r32_1  
  nop                           #  3     0x1267e4  1      OPC=nop             
  movl %edi, %eax               #  4     0x1267e5  2      OPC=movl_r32_r32    
  addb %dl, %dil                #  5     0x1267e7  3      OPC=addb_r8_r8      
  nop                           #  6     0x1267ea  1      OPC=nop             
  nop                           #  7     0x1267eb  1      OPC=nop             
  nop                           #  8     0x1267ec  1      OPC=nop             
  nop                           #  9     0x1267ed  1      OPC=nop             
  andw $0x4, %di                #  10    0x1267ee  4      OPC=andw_r16_imm8   
  nop                           #  11    0x1267f2  1      OPC=nop             
  jne .L_126860                 #  12    0x1267f3  6      OPC=jne_label_1     
  nop                           #  13    0x1267f9  1      OPC=nop             
  subl %esp, %esi               #  14    0x1267fa  2      OPC=subl_r32_r32    
  movq (%r15,%rsi,1), %r8       #  15    0x1267fc  4      OPC=movq_r64_m64    
  nop                           #  16    0x126800  1      OPC=nop             
  movl %r8d, %esi               #  17    0x126801  3      OPC=movl_r32_r32    
  nop                           #  18    0x126804  1      OPC=nop             
  nop                           #  19    0x126805  1      OPC=nop             
  notq %rsi                     #  20    0x126806  3      OPC=notq_r64        
  nop                           #  21    0x126809  1      OPC=nop             
  andq $0x80808080, %rsi        #  22    0x12680a  7      OPC=andq_r64_imm32  
  leaq -0x1010101(%r8), %rdi    #  23    0x126811  7      OPC=leaq_r64_m32    
  andl %edi, %esi               #  24    0x126818  2      OPC=andl_r32_r32_1  
  jne .L_126860                 #  25    0x12681a  6      OPC=jne_label_1     
.L_126820:                      #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx               #  26    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)  #  27    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx               #  28    0x126828  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8       #  29    0x12682b  4      OPC=movq_r64_m64    
  leal -0x1010101(%r8), %esi    #  30    0x12682f  7      OPC=leal_r32_m64    
  nop                           #  31    0x126836  1      OPC=nop             
  nop                           #  32    0x126837  1      OPC=nop             
  nop                           #  33    0x126838  1      OPC=nop             
  nop                           #  34    0x126839  1      OPC=nop             
  nop                           #  35    0x12683a  1      OPC=nop             
  nop                           #  36    0x12683b  1      OPC=nop             
  nop                           #  37    0x12683c  1      OPC=nop             
  movq %r8, %r9                 #  38    0x12683d  3      OPC=movq_r64_r64_1  
  notq %r9                      #  39    0x126840  3      OPC=notq_r64        
  andq $0x80808080, %r9         #  40    0x126843  7      OPC=andq_r64_imm32  
  andl %esi, %r9d               #  41    0x12684a  3      OPC=andl_r32_r32_1  
  je .L_126820                  #  42    0x12684d  6      OPC=je_label_1      
  nopl %eax                     #  43    0x126853  3      OPC=nopl_r32        
  nop                           #  44    0x126856  1      OPC=nop             
  nop                           #  45    0x126857  1      OPC=nop             
  nop                           #  46    0x126858  1      OPC=nop             
  nop                           #  47    0x126859  1      OPC=nop             
  nop                           #  48    0x12685a  1      OPC=nop             
  nop                           #  49    0x12685b  1      OPC=nop             
  nop                           #  50    0x12685c  1      OPC=nop             
  nop                           #  51    0x12685d  1      OPC=nop             
  nop                           #  52    0x12685e  1      OPC=nop             
  nop                           #  53    0x12685f  1      OPC=nop             
.L_126860:                      #        0x126860  0      OPC=<label>         
  xorl %esp, %edx               #  54    0x126860  2      OPC=xorl_r32_r32_1  
  movzbq (%r15,%rdx,1), %rsi    #  55    0x126862  5      OPC=movzbq_r64_m8   
  addl $0x1, %ecx               #  56    0x126867  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)  #  57    0x12686d  5      OPC=movb_m8_r8      
  addb $0x1, %dl                #  58    0x126872  3      OPC=addb_r8_imm8    
  shlq $0x4, %rsi               #  59    0x126875  4      OPC=shlq_r64_imm8   
  jne .L_126860                 #  60    0x126879  6      OPC=jne_label_1     
  nop                           #  61    0x12687f  1      OPC=nop             
  nop                           #  62    0x126880  1      OPC=nop             
  nop                           #  63    0x126881  1      OPC=nop             
  nopl %eax                     #  64    0x126882  3      OPC=nopl_r32        
  nopl %eax                     #  65    0x126885  3      OPC=nopl_r32        
  nop                           #  66    0x126888  1      OPC=nop             
  nop                           #  67    0x126889  1      OPC=nop             
  nop                           #  68    0x12688a  1      OPC=nop             
  nop                           #  69    0x12688b  1      OPC=nop             
  nop                           #  70    0x12688c  1      OPC=nop             
  nop                           #  71    0x12688d  1      OPC=nop             
  retq

.size strcpy, -.strcpy

