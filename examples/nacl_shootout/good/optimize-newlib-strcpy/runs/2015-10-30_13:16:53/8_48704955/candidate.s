  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strcpy:                         #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax                #  1     0x1267e0  2      OPC=movl_r32_r32_1  
  movl %esi, %edx                #  2     0x1267e2  2      OPC=movl_r32_r32_1  
  nop                            #  3     0x1267e4  1      OPC=nop             
  nop                            #  4     0x1267e5  1      OPC=nop             
  nop                            #  5     0x1267e6  1      OPC=nop             
  nop                            #  6     0x1267e7  1      OPC=nop             
  nop                            #  7     0x1267e8  1      OPC=nop             
  andq $0x8, %rdi                #  8     0x1267e9  4      OPC=andq_r64_imm8   
  movq %rax, %rcx                #  9     0x1267ed  3      OPC=movq_r64_r64_1  
  nop                            #  10    0x1267f0  1      OPC=nop             
  jne .L_126860                  #  11    0x1267f1  6      OPC=jne_label_1     
  orl %esp, %esi                 #  12    0x1267f7  2      OPC=orl_r32_r32_1   
  movl (%r15,%rsi,1), %r8d       #  13    0x1267f9  4      OPC=movl_r32_m32    
  nop                            #  14    0x1267fd  1      OPC=nop             
  nop                            #  15    0x1267fe  1      OPC=nop             
  nop                            #  16    0x1267ff  1      OPC=nop             
  leal -0x1010101(%r8), %edi     #  17    0x126800  7      OPC=leal_r32_m32    
  nop                            #  18    0x126807  1      OPC=nop             
  orl %r8d, %esi                 #  19    0x126808  3      OPC=orl_r32_r32_1   
  notl %esi                      #  20    0x12680b  2      OPC=notl_r32        
  andb %dil, %sil                #  21    0x12680d  3      OPC=andb_r8_r8_1    
  andl $0x4, %esi                #  22    0x126810  6      OPC=andl_r32_imm32  
  nop                            #  23    0x126816  1      OPC=nop             
  nop                            #  24    0x126817  1      OPC=nop             
  nop                            #  25    0x126818  1      OPC=nop             
  nop                            #  26    0x126819  1      OPC=nop             
  jne .L_126860                  #  27    0x12681a  6      OPC=jne_label_1     
.L_126820:                       #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                #  28    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)   #  29    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx                #  30    0x126828  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d       #  31    0x12682b  4      OPC=movl_r32_m32    
  movl %r8d, %r9d                #  32    0x12682f  3      OPC=movl_r32_r32_1  
  leaq -0x1010101(%r8), %rsi     #  33    0x126832  7      OPC=leaq_r64_m16    
  nop                            #  34    0x126839  1      OPC=nop             
  nop                            #  35    0x12683a  1      OPC=nop             
  nop                            #  36    0x12683b  1      OPC=nop             
  nop                            #  37    0x12683c  1      OPC=nop             
  notq %r9                       #  38    0x12683d  3      OPC=notq_r64        
  andl %esi, %r9d                #  39    0x126840  3      OPC=andl_r32_r32_1  
  nop                            #  40    0x126843  1      OPC=nop             
  nop                            #  41    0x126844  1      OPC=nop             
  nop                            #  42    0x126845  1      OPC=nop             
  andl $0x80808080, %r9d         #  43    0x126846  7      OPC=andl_r32_imm32  
  je .L_126820                   #  44    0x12684d  6      OPC=je_label_1      
  nop                            #  45    0x126853  1      OPC=nop             
  nop                            #  46    0x126854  1      OPC=nop             
  nop                            #  47    0x126855  1      OPC=nop             
  nop                            #  48    0x126856  1      OPC=nop             
  nop                            #  49    0x126857  1      OPC=nop             
  nop                            #  50    0x126858  1      OPC=nop             
  nop                            #  51    0x126859  1      OPC=nop             
  nop                            #  52    0x12685a  1      OPC=nop             
  nop                            #  53    0x12685b  1      OPC=nop             
  nop                            #  54    0x12685c  1      OPC=nop             
  nop                            #  55    0x12685d  1      OPC=nop             
  nop                            #  56    0x12685e  1      OPC=nop             
  nop                            #  57    0x12685f  1      OPC=nop             
.L_126860:                       #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                #  58    0x126860  3      OPC=addl_r32_imm8   
  movzbw -0x1(%r15,%rdx,1), %si  #  59    0x126863  7      OPC=movzbw_r16_m8   
  nop                            #  60    0x12686a  1      OPC=nop             
  nop                            #  61    0x12686b  1      OPC=nop             
  nop                            #  62    0x12686c  1      OPC=nop             
  nop                            #  63    0x12686d  1      OPC=nop             
  nop                            #  64    0x12686e  1      OPC=nop             
  nop                            #  65    0x12686f  1      OPC=nop             
  nop                            #  66    0x126870  1      OPC=nop             
  nop                            #  67    0x126871  1      OPC=nop             
  nop                            #  68    0x126872  1      OPC=nop             
  nop                            #  69    0x126873  1      OPC=nop             
  movl %ecx, %ecx                #  70    0x126874  2      OPC=movl_r32_r32    
  movb %sil, (%r15,%rcx,1)       #  71    0x126876  4      OPC=movb_m8_r8      
  nop                            #  72    0x12687a  1      OPC=nop             
  nop                            #  73    0x12687b  1      OPC=nop             
  nop                            #  74    0x12687c  1      OPC=nop             
  addl $0x1, %ecx                #  75    0x12687d  3      OPC=addl_r32_imm8   
  testb %sil, %cl                #  76    0x126880  3      OPC=testb_r8_r8     
  jne .L_126860                  #  77    0x126883  6      OPC=jne_label_1     
  nop                            #  78    0x126889  1      OPC=nop             
  nop                            #  79    0x12688a  1      OPC=nop             
  nop                            #  80    0x12688b  1      OPC=nop             
  nop                            #  81    0x12688c  1      OPC=nop             
  nop                            #  82    0x12688d  1      OPC=nop             
  retq

.size strcpy, -.strcpy

