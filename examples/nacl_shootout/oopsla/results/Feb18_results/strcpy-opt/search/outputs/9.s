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
  movl %edi, %eax             #  3     0x1267e2  2      OPC=movl_r32_r32    
  movq %rsi, %rdx             #  4     0x1267e4  3      OPC=movq_r64_r64    
  nop                         #  5     0x1267e7  1      OPC=nop             
  nop                         #  6     0x1267e8  1      OPC=nop             
  nop                         #  7     0x1267e9  1      OPC=nop             
  subl %esi, %edi             #  8     0x1267ea  2      OPC=subl_r32_r32    
  movq %rax, %rcx             #  9     0x1267ec  3      OPC=movq_r64_r64    
  orl %eax, %edi              #  10    0x1267ef  2      OPC=orl_r32_r32     
  andl $0x3, %edi             #  11    0x1267f1  3      OPC=andl_r32_imm8   
  jne .L_126860               #  12    0x1267f4  6      OPC=jne_label_1     
  movl %esi, %esi             #  13    0x1267fa  2      OPC=movl_r32_r32_1  
  movl (%r15,%rsi,1), %r8d    #  14    0x1267fc  4      OPC=movl_r32_m32    
  nop                         #  15    0x126800  1      OPC=nop             
  nop                         #  16    0x126801  1      OPC=nop             
  movl %r8d, %esi             #  17    0x126802  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %edi  #  18    0x126805  7      OPC=leal_r32_m64    
  nop                         #  19    0x12680c  1      OPC=nop             
  notl %esi                   #  20    0x12680d  2      OPC=notl_r32        
  andl %edi, %esi             #  21    0x12680f  2      OPC=andl_r32_r32    
  nop                         #  22    0x126811  1      OPC=nop             
  andl $0x80808080, %esi      #  23    0x126812  6      OPC=andl_r32_imm32  
  nop                         #  24    0x126818  1      OPC=nop             
  jne .L_126860               #  25    0x126819  6      OPC=jne_label_1     
  nop                         #  26    0x12681f  1      OPC=nop             
  nop                         #  27    0x126820  1      OPC=nop             
  nop                         #  28    0x126821  1      OPC=nop             
  nop                         #  29    0x126822  1      OPC=nop             
  nop                         #  30    0x126823  1      OPC=nop             
.L_126820:                    #        0x126824  0      OPC=<label>         
  movl %ecx, %ecx             #  31    0x126824  2      OPC=movl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)    #  32    0x126826  4      OPC=movl_m32_r32    
  addl $0x4, %edx             #  33    0x12682a  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  34    0x12682d  4      OPC=movl_r32_m32    
  movq %r8, %r9               #  35    0x126831  3      OPC=movq_r64_r64    
  leal -0x1010101(%r8), %esi  #  36    0x126834  7      OPC=leal_r32_m32    
  addl $0x4, %ecx             #  37    0x12683b  3      OPC=addl_r32_imm8   
  nop                         #  38    0x12683e  1      OPC=nop             
  nop                         #  39    0x12683f  1      OPC=nop             
  nop                         #  40    0x126840  1      OPC=nop             
  nop                         #  41    0x126841  1      OPC=nop             
  notl %r9d                   #  42    0x126842  3      OPC=notl_r32        
  andl $0x80808080, %r9d      #  43    0x126845  7      OPC=andl_r32_imm32  
  andl %esi, %r9d             #  44    0x12684c  3      OPC=andl_r32_r32    
  je .L_126820                #  45    0x12684f  6      OPC=je_label_1      
  nop                         #  46    0x126855  1      OPC=nop             
  nop                         #  47    0x126856  1      OPC=nop             
  nopl %eax                   #  48    0x126857  3      OPC=nopl_r32        
  nop                         #  49    0x12685a  1      OPC=nop             
  nop                         #  50    0x12685b  1      OPC=nop             
  andl %edx, %edx             #  51    0x12685c  2      OPC=andl_r32_r32_1  
  nop                         #  52    0x12685e  1      OPC=nop             
  nop                         #  53    0x12685f  1      OPC=nop             
  nop                         #  54    0x126860  1      OPC=nop             
  nop                         #  55    0x126861  1      OPC=nop             
  nop                         #  56    0x126862  1      OPC=nop             
  nop                         #  57    0x126863  1      OPC=nop             
  nop                         #  58    0x126864  1      OPC=nop             
  nop                         #  59    0x126865  1      OPC=nop             
  nop                         #  60    0x126866  1      OPC=nop             
  nop                         #  61    0x126867  1      OPC=nop             
  nop                         #  62    0x126868  1      OPC=nop             
  nop                         #  63    0x126869  1      OPC=nop             
  nop                         #  64    0x12686a  1      OPC=nop             
  nop                         #  65    0x12686b  1      OPC=nop             
  nop                         #  66    0x12686c  1      OPC=nop             
  nop                         #  67    0x12686d  1      OPC=nop             
  nop                         #  68    0x12686e  1      OPC=nop             
  nop                         #  69    0x12686f  1      OPC=nop             
.L_126860:                    #        0x126870  0      OPC=<label>         
  movl %edx, %edx             #  70    0x126870  2      OPC=movl_r32_r32    
  movzbl (%r15,%rdx,1), %esi  #  71    0x126872  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  72    0x126877  3      OPC=addl_r32_imm8   
  orl %ecx, %ecx              #  73    0x12687a  2      OPC=orl_r32_r32_1   
  movb %sil, (%r15,%rcx,1)    #  74    0x12687c  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  75    0x126880  3      OPC=addl_r32_imm8   
  testb %sil, %sil            #  76    0x126883  3      OPC=testb_r8_r8     
  jne .L_126860               #  77    0x126886  6      OPC=jne_label_1     
  nop                         #  78    0x12688c  1      OPC=nop             
  retq                        #  79    0x12688d  1      OPC=retq            
                                                                            
.size strcpy, .-strcpy
