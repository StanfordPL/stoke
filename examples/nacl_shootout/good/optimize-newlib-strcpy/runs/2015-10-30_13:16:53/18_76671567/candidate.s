  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax             #  1     0x1267e0  2      OPC=movl_r32_r32    
  movl %esi, %edi             #  2     0x1267e2  2      OPC=movl_r32_r32    
  movq %rsi, %rdx             #  3     0x1267e4  3      OPC=movq_r64_r64    
  movq %rax, %rcx             #  4     0x1267e7  3      OPC=movq_r64_r64    
  andl $0x3, %edi             #  5     0x1267ea  3      OPC=andl_r32_imm8   
  nop                         #  6     0x1267ed  1      OPC=nop             
  jne .L_126860               #  7     0x1267ee  6      OPC=jne_label_1     
  nop                         #  8     0x1267f4  1      OPC=nop             
  nop                         #  9     0x1267f5  1      OPC=nop             
  orl %edx, %esi              #  10    0x1267f6  2      OPC=orl_r32_r32     
  movl (%r15,%rsi,1), %r8d    #  11    0x1267f8  4      OPC=movl_r32_m32    
  nop                         #  12    0x1267fc  1      OPC=nop             
  nop                         #  13    0x1267fd  1      OPC=nop             
  nop                         #  14    0x1267fe  1      OPC=nop             
  nop                         #  15    0x1267ff  1      OPC=nop             
  movl %r8d, %esi             #  16    0x126800  3      OPC=movl_r32_r32_1  
  nop                         #  17    0x126803  1      OPC=nop             
  leal -0x1010101(%r8), %edi  #  18    0x126804  7      OPC=leal_r32_m64    
  notq %rsi                   #  19    0x12680b  3      OPC=notq_r64        
  nop                         #  20    0x12680e  1      OPC=nop             
  nop                         #  21    0x12680f  1      OPC=nop             
  nop                         #  22    0x126810  1      OPC=nop             
  andl $0x80808080, %esi      #  23    0x126811  6      OPC=andl_r32_imm32  
  andb %dil, %sil             #  24    0x126817  3      OPC=andb_r8_r8_1    
  jne .L_126860               #  25    0x12681a  6      OPC=jne_label_1     
.L_126820:                    #        0x126820  0      OPC=<label>         
  addl $0x4, %edx             #  26    0x126820  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  27    0x126823  2      OPC=movl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  28    0x126825  4      OPC=movl_m32_r32    
  orl %edx, %edx              #  29    0x126829  2      OPC=orl_r32_r32_1   
  movl (%r15,%rdx,1), %r8d    #  30    0x12682b  4      OPC=movl_r32_m32    
  addq $0x4, %rcx             #  31    0x12682f  4      OPC=addq_r64_imm8   
  movl %r8d, %r9d             #  32    0x126833  3      OPC=movl_r32_r32    
  notq %r9                    #  33    0x126836  3      OPC=notq_r64        
  leal -0x1010101(%r8), %esi  #  34    0x126839  7      OPC=leal_r32_m64    
  andl $0x80808080, %r9d      #  35    0x126840  7      OPC=andl_r32_imm32  
  andl %esi, %r9d             #  36    0x126847  3      OPC=andl_r32_r32_1  
  je .L_126820                #  37    0x12684a  6      OPC=je_label_1      
  nop                         #  38    0x126850  1      OPC=nop             
  nop                         #  39    0x126851  1      OPC=nop             
  nop                         #  40    0x126852  1      OPC=nop             
  nop                         #  41    0x126853  1      OPC=nop             
  nop                         #  42    0x126854  1      OPC=nop             
  nop                         #  43    0x126855  1      OPC=nop             
  nop                         #  44    0x126856  1      OPC=nop             
  nop                         #  45    0x126857  1      OPC=nop             
  nop                         #  46    0x126858  1      OPC=nop             
  nop                         #  47    0x126859  1      OPC=nop             
  nop                         #  48    0x12685a  1      OPC=nop             
  nop                         #  49    0x12685b  1      OPC=nop             
  nop                         #  50    0x12685c  1      OPC=nop             
  nop                         #  51    0x12685d  1      OPC=nop             
  nop                         #  52    0x12685e  1      OPC=nop             
  nop                         #  53    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  orl %edx, %edx              #  54    0x126860  2      OPC=orl_r32_r32     
  movsbq (%r15,%rdx,1), %rsi  #  55    0x126862  5      OPC=movsbq_r64_m8   
  addl $0x1, %edx             #  56    0x126867  3      OPC=addl_r32_imm8   
  addl %ebp, %ecx             #  57    0x12686a  2      OPC=addl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)    #  58    0x12686c  4      OPC=movb_m8_r8      
  addq $0x1, %rcx             #  59    0x126870  7      OPC=addq_r64_imm32  
  testb %sil, %sil            #  60    0x126877  3      OPC=testb_r8_r8     
  jne .L_126860               #  61    0x12687a  6      OPC=jne_label_1     
  nop                         #  62    0x126880  1      OPC=nop             
  nop                         #  63    0x126881  1      OPC=nop             
  retq

.size strcpy, -.strcpy

