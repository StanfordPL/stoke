  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                          #  Line  RIP       Bytes  Opcode              
.strcpy:                        #        0x1267e0  0      OPC=<label>         
  movq %rdi, %rax               #  1     0x1267e0  3      OPC=movq_r64_r64    
  nop                           #  2     0x1267e3  1      OPC=nop             
  movq %rsi, %rdx               #  3     0x1267e4  3      OPC=movq_r64_r64    
  nop                           #  4     0x1267e7  1      OPC=nop             
  movq %rax, %rcx               #  5     0x1267e8  3      OPC=movq_r64_r64_1  
  andb $0x4, %dil               #  6     0x1267eb  4      OPC=andb_r8_imm8    
  nop                           #  7     0x1267ef  1      OPC=nop             
  nop                           #  8     0x1267f0  1      OPC=nop             
  jne .L_126860                 #  9     0x1267f1  6      OPC=jne_label_1     
  movl %esi, %esi               #  10    0x1267f7  2      OPC=movl_r32_r32_1  
  movq (%r15,%rsi,1), %r8       #  11    0x1267f9  4      OPC=movq_r64_m64    
  nop                           #  12    0x1267fd  1      OPC=nop             
  nop                           #  13    0x1267fe  1      OPC=nop             
  nop                           #  14    0x1267ff  1      OPC=nop             
  nop                           #  15    0x126800  1      OPC=nop             
  nop                           #  16    0x126801  1      OPC=nop             
  nop                           #  17    0x126802  1      OPC=nop             
  nop                           #  18    0x126803  1      OPC=nop             
  nop                           #  19    0x126804  1      OPC=nop             
  nop                           #  20    0x126805  1      OPC=nop             
  negl %esi                     #  21    0x126806  2      OPC=negl_r32        
  nop                           #  22    0x126808  1      OPC=nop             
  nop                           #  23    0x126809  1      OPC=nop             
  nop                           #  24    0x12680a  1      OPC=nop             
  nop                           #  25    0x12680b  1      OPC=nop             
  nop                           #  26    0x12680c  1      OPC=nop             
  nop                           #  27    0x12680d  1      OPC=nop             
  nop                           #  28    0x12680e  1      OPC=nop             
  nop                           #  29    0x12680f  1      OPC=nop             
  leaw (%rsi,%rax,2), %di       #  30    0x126810  4      OPC=leaw_r16_m64    
  andl $0x80, %edi              #  31    0x126814  6      OPC=andl_r32_imm32  
  jne .L_126860                 #  32    0x12681a  6      OPC=jne_label_1     
.L_126820:                      #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx               #  33    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)  #  34    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx               #  35    0x126828  3      OPC=addl_r32_imm8   
  movq (%r15,%rdx,1), %r8       #  36    0x12682b  4      OPC=movq_r64_m64    
  leal -0x1010101(%r8), %esi    #  37    0x12682f  7      OPC=leal_r32_m64    
  movq %r8, %r9                 #  38    0x126836  3      OPC=movq_r64_r64    
  notq %r9                      #  39    0x126839  3      OPC=notq_r64        
  andl %esi, %r9d               #  40    0x12683c  3      OPC=andl_r32_r32    
  nop                           #  41    0x12683f  1      OPC=nop             
  nop                           #  42    0x126840  1      OPC=nop             
  nop                           #  43    0x126841  1      OPC=nop             
  nop                           #  44    0x126842  1      OPC=nop             
  nop                           #  45    0x126843  1      OPC=nop             
  nop                           #  46    0x126844  1      OPC=nop             
  nop                           #  47    0x126845  1      OPC=nop             
  nop                           #  48    0x126846  1      OPC=nop             
  nop                           #  49    0x126847  1      OPC=nop             
  nop                           #  50    0x126848  1      OPC=nop             
  nop                           #  51    0x126849  1      OPC=nop             
  andq $0x80808080, %r9         #  52    0x12684a  7      OPC=andq_r64_imm32  
  je .L_126820                  #  53    0x126851  6      OPC=je_label_1      
  nop                           #  54    0x126857  1      OPC=nop             
  nop                           #  55    0x126858  1      OPC=nop             
  nop                           #  56    0x126859  1      OPC=nop             
  nop                           #  57    0x12685a  1      OPC=nop             
  nop                           #  58    0x12685b  1      OPC=nop             
  nop                           #  59    0x12685c  1      OPC=nop             
  nop                           #  60    0x12685d  1      OPC=nop             
  nop                           #  61    0x12685e  1      OPC=nop             
  nop                           #  62    0x12685f  1      OPC=nop             
.L_126860:                      #        0x126860  0      OPC=<label>         
  xorl %esp, %edx               #  63    0x126860  2      OPC=xorl_r32_r32    
  movzbl (%r15,%rdx,1), %esi    #  64    0x126862  5      OPC=movzbl_r32_m8   
  orl %ebp, %ecx                #  65    0x126867  2      OPC=orl_r32_r32_1   
  movb %sil, (%r15,%rcx,1)      #  66    0x126869  4      OPC=movb_m8_r8      
  addq $0x1, %rcx               #  67    0x12686d  4      OPC=addq_r64_imm8   
  addq $0x1, %rdx               #  68    0x126871  4      OPC=addq_r64_imm8   
  negw %si                      #  69    0x126875  3      OPC=negw_r16        
  jne .L_126860                 #  70    0x126878  6      OPC=jne_label_1     
  nop                           #  71    0x12687e  1      OPC=nop             
  nop                           #  72    0x12687f  1      OPC=nop             
  nop                           #  73    0x126880  1      OPC=nop             
  nop                           #  74    0x126881  1      OPC=nop             
  nop                           #  75    0x126882  1      OPC=nop             
  nop                           #  76    0x126883  1      OPC=nop             
  nop                           #  77    0x126884  1      OPC=nop             
  nop                           #  78    0x126885  1      OPC=nop             
  nop                           #  79    0x126886  1      OPC=nop             
  nop                           #  80    0x126887  1      OPC=nop             
  nop                           #  81    0x126888  1      OPC=nop             
  nop                           #  82    0x126889  1      OPC=nop             
  nop                           #  83    0x12688a  1      OPC=nop             
  nop                           #  84    0x12688b  1      OPC=nop             
  nop                           #  85    0x12688c  1      OPC=nop             
  retq

.size strcpy, -.strcpy

