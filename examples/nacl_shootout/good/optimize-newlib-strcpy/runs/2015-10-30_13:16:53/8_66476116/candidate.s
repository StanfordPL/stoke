  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                        #  Line  RIP       Bytes  Opcode              
.strcpy:                      #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax             #  1     0x1267e0  2      OPC=movl_r32_r32_1  
  movq %rax, %rcx             #  2     0x1267e2  3      OPC=movq_r64_r64    
  nop                         #  3     0x1267e5  1      OPC=nop             
  andl $0x7, %edi             #  4     0x1267e6  3      OPC=andl_r32_imm8   
  nop                         #  5     0x1267e9  1      OPC=nop             
  nop                         #  6     0x1267ea  1      OPC=nop             
  movl %esi, %edx             #  7     0x1267eb  2      OPC=movl_r32_r32_1  
  jne .L_126860               #  8     0x1267ed  6      OPC=jne_label_1     
  nop                         #  9     0x1267f3  1      OPC=nop             
  nop                         #  10    0x1267f4  1      OPC=nop             
  andl %esi, %esi             #  11    0x1267f5  2      OPC=andl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  12    0x1267f7  4      OPC=movl_r32_m32    
  movl %r8d, %esi             #  13    0x1267fb  3      OPC=movl_r32_r32_1  
  nop                         #  14    0x1267fe  1      OPC=nop             
  nop                         #  15    0x1267ff  1      OPC=nop             
  nop                         #  16    0x126800  1      OPC=nop             
  nopl %eax                   #  17    0x126801  3      OPC=nopl_r32        
  notl %esi                   #  18    0x126804  2      OPC=notl_r32        
  nopl %eax                   #  19    0x126806  3      OPC=nopl_r32        
  nopl %eax                   #  20    0x126809  3      OPC=nopl_r32        
  nop                         #  21    0x12680c  1      OPC=nop             
  nop                         #  22    0x12680d  1      OPC=nop             
  andl %ecx, %esi             #  23    0x12680e  2      OPC=andl_r32_r32    
  andl $0x80808080, %esi      #  24    0x126810  6      OPC=andl_r32_imm32  
  nop                         #  25    0x126816  1      OPC=nop             
  nop                         #  26    0x126817  1      OPC=nop             
  nop                         #  27    0x126818  1      OPC=nop             
  nop                         #  28    0x126819  1      OPC=nop             
  jne .L_126860               #  29    0x12681a  6      OPC=jne_label_1     
.L_126820:                    #        0x126820  0      OPC=<label>         
  nop                         #  30    0x126820  1      OPC=nop             
  nop                         #  31    0x126821  1      OPC=nop             
  nop                         #  32    0x126822  1      OPC=nop             
  xorl %esp, %ecx             #  33    0x126823  2      OPC=xorl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  34    0x126825  4      OPC=movl_m32_r32    
  addl $0x4, %edx             #  35    0x126829  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  36    0x12682c  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  37    0x126830  3      OPC=movl_r32_r32    
  addl $0x4, %ecx             #  38    0x126833  3      OPC=addl_r32_imm8   
  leal -0x1010101(%r8), %esi  #  39    0x126836  7      OPC=leal_r32_m16    
  notl %r9d                   #  40    0x12683d  3      OPC=notl_r32        
  andl %esi, %r9d             #  41    0x126840  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  42    0x126843  7      OPC=andl_r32_imm32  
  je .L_126820                #  43    0x12684a  6      OPC=je_label_1      
  nop                         #  44    0x126850  1      OPC=nop             
  nop                         #  45    0x126851  1      OPC=nop             
  nop                         #  46    0x126852  1      OPC=nop             
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
  orl %edx, %edx              #  60    0x126860  2      OPC=orl_r32_r32     
  movzbl (%r15,%rdx,1), %esi  #  61    0x126862  5      OPC=movzbl_r32_m8   
  addl $0x1, %edx             #  62    0x126867  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  63    0x12686a  2      OPC=movl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)    #  64    0x12686c  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  65    0x126870  6      OPC=addl_r32_imm32  
  testb %sil, %sil            #  66    0x126876  3      OPC=testb_r8_r8     
  jne .L_126860               #  67    0x126879  6      OPC=jne_label_1     
  nop                         #  68    0x12687f  1      OPC=nop             
  nop                         #  69    0x126880  1      OPC=nop             
  nop                         #  70    0x126881  1      OPC=nop             
  nop                         #  71    0x126882  1      OPC=nop             
  nop                         #  72    0x126883  1      OPC=nop             
  nop                         #  73    0x126884  1      OPC=nop             
  nop                         #  74    0x126885  1      OPC=nop             
  nop                         #  75    0x126886  1      OPC=nop             
  nop                         #  76    0x126887  1      OPC=nop             
  nop                         #  77    0x126888  1      OPC=nop             
  nop                         #  78    0x126889  1      OPC=nop             
  nop                         #  79    0x12688a  1      OPC=nop             
  nop                         #  80    0x12688b  1      OPC=nop             
  nop                         #  81    0x12688c  1      OPC=nop             
  nop                         #  82    0x12688d  1      OPC=nop             
  nop                         #  83    0x12688e  1      OPC=nop             
  nop                         #  84    0x12688f  1      OPC=nop             
  retq

.size strcpy, -.strcpy

