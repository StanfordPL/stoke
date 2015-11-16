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
  movl %edi, %eax             #  3     0x1267e2  2      OPC=movl_r32_r32_1  
  nop                         #  4     0x1267e4  1      OPC=nop             
  nop                         #  5     0x1267e5  1      OPC=nop             
  nop                         #  6     0x1267e6  1      OPC=nop             
  movl %esi, %edi             #  7     0x1267e7  2      OPC=movl_r32_r32    
  movq %rax, %rcx             #  8     0x1267e9  3      OPC=movq_r64_r64    
  movl %esi, %edx             #  9     0x1267ec  2      OPC=movl_r32_r32_1  
  andl $0x1, %edi             #  10    0x1267ee  3      OPC=andl_r32_imm8   
  jne .L_126860               #  11    0x1267f1  6      OPC=jne_label_1     
  orl %esi, %esi              #  12    0x1267f7  2      OPC=orl_r32_r32_1   
  movq (%r15,%rsi,1), %r8     #  13    0x1267f9  4      OPC=movq_r64_m64    
  movq %r8, %rsi              #  14    0x1267fd  3      OPC=movq_r64_r64_1  
  nop                         #  15    0x126800  1      OPC=nop             
  leaq -0x1010101(%r8), %rdi  #  16    0x126801  7      OPC=leaq_r64_m64    
  nop                         #  17    0x126808  1      OPC=nop             
  negq %rsi                   #  18    0x126809  3      OPC=negq_r64        
  nop                         #  19    0x12680c  1      OPC=nop             
  nop                         #  20    0x12680d  1      OPC=nop             
  andl $0x80808080, %edi      #  21    0x12680e  6      OPC=andl_r32_imm32  
  nop                         #  22    0x126814  1      OPC=nop             
  nop                         #  23    0x126815  1      OPC=nop             
  andq %rdi, %rsi             #  24    0x126816  3      OPC=andq_r64_r64    
  jne .L_126860               #  25    0x126819  6      OPC=jne_label_1     
  nop                         #  26    0x12681f  1      OPC=nop             
.L_126820:                    #        0x126820  0      OPC=<label>         
  subl %ebp, %ecx             #  27    0x126820  2      OPC=subl_r32_r32_1  
  movl %r8d, (%r15,%rcx,1)    #  28    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  29    0x126826  3      OPC=addl_r32_imm8   
  addl $0x4, %edx             #  30    0x126829  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  31    0x12682c  4      OPC=movl_r32_m32    
  movq %r8, %r9               #  32    0x126830  3      OPC=movq_r64_r64_1  
  notq %r9                    #  33    0x126833  3      OPC=notq_r64        
  leal -0x1010101(%r8), %esi  #  34    0x126836  7      OPC=leal_r32_m64    
  nop                         #  35    0x12683d  1      OPC=nop             
  nop                         #  36    0x12683e  1      OPC=nop             
  nop                         #  37    0x12683f  1      OPC=nop             
  nop                         #  38    0x126840  1      OPC=nop             
  nop                         #  39    0x126841  1      OPC=nop             
  nop                         #  40    0x126842  1      OPC=nop             
  nop                         #  41    0x126843  1      OPC=nop             
  nop                         #  42    0x126844  1      OPC=nop             
  andq $0x80808080, %r9       #  43    0x126845  7      OPC=andq_r64_imm32  
  andq %rsi, %r9              #  44    0x12684c  3      OPC=andq_r64_r64_1  
  je .L_126820                #  45    0x12684f  6      OPC=je_label_1      
  nop                         #  46    0x126855  1      OPC=nop             
  nop                         #  47    0x126856  1      OPC=nop             
  nop                         #  48    0x126857  1      OPC=nop             
  nop                         #  49    0x126858  1      OPC=nop             
  nop                         #  50    0x126859  1      OPC=nop             
  nop                         #  51    0x12685a  1      OPC=nop             
  nop                         #  52    0x12685b  1      OPC=nop             
  nop                         #  53    0x12685c  1      OPC=nop             
  nop                         #  54    0x12685d  1      OPC=nop             
  nop                         #  55    0x12685e  1      OPC=nop             
  nop                         #  56    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  subl %ebp, %edx             #  57    0x126860  2      OPC=subl_r32_r32_1  
  movsbl (%r15,%rdx,1), %esi  #  58    0x126862  5      OPC=movsbl_r32_m8   
  addw $0x1, %dx              #  59    0x126867  4      OPC=addw_r16_imm8   
  andl %ecx, %ecx             #  60    0x12686b  2      OPC=andl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)    #  61    0x12686d  4      OPC=movb_m8_r8      
  nop                         #  62    0x126871  1      OPC=nop             
  nop                         #  63    0x126872  1      OPC=nop             
  nop                         #  64    0x126873  1      OPC=nop             
  nop                         #  65    0x126874  1      OPC=nop             
  nop                         #  66    0x126875  1      OPC=nop             
  nop                         #  67    0x126876  1      OPC=nop             
  nop                         #  68    0x126877  1      OPC=nop             
  nop                         #  69    0x126878  1      OPC=nop             
  addw $0x1, %cx              #  70    0x126879  4      OPC=addw_r16_imm8   
  testb %sil, %sil            #  71    0x12687d  3      OPC=testb_r8_r8     
  nop                         #  72    0x126880  1      OPC=nop             
  nop                         #  73    0x126881  1      OPC=nop             
  nop                         #  74    0x126882  1      OPC=nop             
  nop                         #  75    0x126883  1      OPC=nop             
  jne .L_126860               #  76    0x126884  6      OPC=jne_label_1     
  nop                         #  77    0x12688a  1      OPC=nop             
  nop                         #  78    0x12688b  1      OPC=nop             
  nop                         #  79    0x12688c  1      OPC=nop             
  retq

.size strcpy, -.strcpy

