  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.strcpy:                          #        0x1267e0  0      OPC=<label>         
  movq %rsi, %rdx                 #  1     0x1267e0  3      OPC=movq_r64_r64    
  movl %edi, %ecx                 #  2     0x1267e3  2      OPC=movl_r32_r32_1  
  nopl %eax                       #  3     0x1267e5  3      OPC=nopl_r32        
  movl %edi, %eax                 #  4     0x1267e8  2      OPC=movl_r32_r32    
  xorl %edi, %edi                 #  5     0x1267ea  2      OPC=xorl_r32_r32    
  nop                             #  6     0x1267ec  1      OPC=nop             
  nop                             #  7     0x1267ed  1      OPC=nop             
  nop                             #  8     0x1267ee  1      OPC=nop             
  nop                             #  9     0x1267ef  1      OPC=nop             
  nop                             #  10    0x1267f0  1      OPC=nop             
  nop                             #  11    0x1267f1  1      OPC=nop             
  nop                             #  12    0x1267f2  1      OPC=nop             
  jne .L_126860                   #  13    0x1267f3  6      OPC=jne_label_1     
  movl %esi, %esi                 #  14    0x1267f9  2      OPC=movl_r32_r32_1  
  movq (%r15,%rsi,1), %r8         #  15    0x1267fb  4      OPC=movq_r64_m64    
  nop                             #  16    0x1267ff  1      OPC=nop             
  nop                             #  17    0x126800  1      OPC=nop             
  nop                             #  18    0x126801  1      OPC=nop             
  nop                             #  19    0x126802  1      OPC=nop             
  nop                             #  20    0x126803  1      OPC=nop             
  nop                             #  21    0x126804  1      OPC=nop             
  nop                             #  22    0x126805  1      OPC=nop             
  nop                             #  23    0x126806  1      OPC=nop             
  nop                             #  24    0x126807  1      OPC=nop             
  nop                             #  25    0x126808  1      OPC=nop             
  nop                             #  26    0x126809  1      OPC=nop             
  nop                             #  27    0x12680a  1      OPC=nop             
  nop                             #  28    0x12680b  1      OPC=nop             
  nop                             #  29    0x12680c  1      OPC=nop             
  nop                             #  30    0x12680d  1      OPC=nop             
  nop                             #  31    0x12680e  1      OPC=nop             
  nop                             #  32    0x12680f  1      OPC=nop             
  nop                             #  33    0x126810  1      OPC=nop             
  nop                             #  34    0x126811  1      OPC=nop             
  nop                             #  35    0x126812  1      OPC=nop             
  nop                             #  36    0x126813  1      OPC=nop             
  nop                             #  37    0x126814  1      OPC=nop             
  nop                             #  38    0x126815  1      OPC=nop             
  nop                             #  39    0x126816  1      OPC=nop             
  nop                             #  40    0x126817  1      OPC=nop             
  nop                             #  41    0x126818  1      OPC=nop             
  nop                             #  42    0x126819  1      OPC=nop             
  jne .L_126860                   #  43    0x12681a  6      OPC=jne_label_1     
.L_126820:                        #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                 #  44    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)    #  45    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx                 #  46    0x126828  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d        #  47    0x12682b  4      OPC=movl_r32_m32    
  leal -0x1010101(%r8), %esi      #  48    0x12682f  7      OPC=leal_r32_m32    
  movl %r8d, %r9d                 #  49    0x126836  3      OPC=movl_r32_r32    
  nop                             #  50    0x126839  1      OPC=nop             
  nop                             #  51    0x12683a  1      OPC=nop             
  nop                             #  52    0x12683b  1      OPC=nop             
  nop                             #  53    0x12683c  1      OPC=nop             
  nop                             #  54    0x12683d  1      OPC=nop             
  nop                             #  55    0x12683e  1      OPC=nop             
  nop                             #  56    0x12683f  1      OPC=nop             
  nop                             #  57    0x126840  1      OPC=nop             
  nop                             #  58    0x126841  1      OPC=nop             
  nop                             #  59    0x126842  1      OPC=nop             
  nop                             #  60    0x126843  1      OPC=nop             
  nop                             #  61    0x126844  1      OPC=nop             
  nop                             #  62    0x126845  1      OPC=nop             
  nop                             #  63    0x126846  1      OPC=nop             
  nop                             #  64    0x126847  1      OPC=nop             
  notq %r9                        #  65    0x126848  3      OPC=notq_r64        
  andq %rsi, %r9                  #  66    0x12684b  3      OPC=andq_r64_r64    
  andl $0x80808080, %r9d          #  67    0x12684e  7      OPC=andl_r32_imm32  
  je .L_126820                    #  68    0x126855  6      OPC=je_label_1      
  nop                             #  69    0x12685b  1      OPC=nop             
  nop                             #  70    0x12685c  1      OPC=nop             
  nop                             #  71    0x12685d  1      OPC=nop             
  nop                             #  72    0x12685e  1      OPC=nop             
  nop                             #  73    0x12685f  1      OPC=nop             
.L_126860:                        #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                 #  74    0x126860  3      OPC=addl_r32_imm8   
  movsbq -0x1(%r15,%rdx,1), %rsi  #  75    0x126863  6      OPC=movsbq_r64_m8   
  nop                             #  76    0x126869  1      OPC=nop             
  nop                             #  77    0x12686a  1      OPC=nop             
  nop                             #  78    0x12686b  1      OPC=nop             
  nop                             #  79    0x12686c  1      OPC=nop             
  nop                             #  80    0x12686d  1      OPC=nop             
  nop                             #  81    0x12686e  1      OPC=nop             
  nop                             #  82    0x12686f  1      OPC=nop             
  addl %ebp, %ecx                 #  83    0x126870  2      OPC=addl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)        #  84    0x126872  4      OPC=movb_m8_r8      
  addl $0x1, %ecx                 #  85    0x126876  3      OPC=addl_r32_imm8   
  testb %sil, %sil                #  86    0x126879  3      OPC=testb_r8_r8     
  nop                             #  87    0x12687c  1      OPC=nop             
  nop                             #  88    0x12687d  1      OPC=nop             
  nop                             #  89    0x12687e  1      OPC=nop             
  nop                             #  90    0x12687f  1      OPC=nop             
  nop                             #  91    0x126880  1      OPC=nop             
  jne .L_126860                   #  92    0x126881  6      OPC=jne_label_1     
  retq

.size strcpy, -.strcpy

