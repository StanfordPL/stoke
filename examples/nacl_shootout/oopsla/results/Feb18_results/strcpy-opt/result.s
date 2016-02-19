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
  orw %si, %di                #  6     0x1267e6  3      OPC=orw_r16_r16     
  nop                         #  7     0x1267e9  1      OPC=nop             
  nop                         #  8     0x1267ea  1      OPC=nop             
  nop                         #  9     0x1267eb  1      OPC=nop             
  nop                         #  10    0x1267ec  1      OPC=nop             
  nop                         #  11    0x1267ed  1      OPC=nop             
  nop                         #  12    0x1267ee  1      OPC=nop             
  movq %rsi, %rdx             #  13    0x1267ef  3      OPC=movq_r64_r64_1  
  movq %rax, %rcx             #  14    0x1267f2  3      OPC=movq_r64_r64    
  nop                         #  15    0x1267f5  1      OPC=nop             
  andl $0x3, %edi             #  16    0x1267f6  3      OPC=andl_r32_imm8   
  jne .L_126860               #  17    0x1267f9  6      OPC=jne_label_1     
  nop                         #  18    0x1267ff  1      OPC=nop             
  nop                         #  19    0x126800  1      OPC=nop             
  nop                         #  20    0x126801  1      OPC=nop             
  nop                         #  21    0x126802  1      OPC=nop             
  andl %edx, %esi             #  22    0x126803  2      OPC=andl_r32_r32    
  movl (%r15,%rsi,1), %r8d    #  23    0x126805  4      OPC=movl_r32_m32    
  nop                         #  24    0x126809  1      OPC=nop             
  movl %r8d, %esi             #  25    0x12680a  3      OPC=movl_r32_r32    
  leaq -0x1010101(%r8), %rdi  #  26    0x12680d  7      OPC=leaq_r64_m32    
  nop                         #  27    0x126814  1      OPC=nop             
  andl $0x80808080, %edi      #  28    0x126815  6      OPC=andl_r32_imm32  
  nopl %eax                   #  29    0x12681b  3      OPC=nopl_r32        
  nop                         #  30    0x12681e  1      OPC=nop             
  nop                         #  31    0x12681f  1      OPC=nop             
  nop                         #  32    0x126820  1      OPC=nop             
  notl %esi                   #  33    0x126821  2      OPC=notl_r32        
  andq %rdi, %rsi             #  34    0x126823  3      OPC=andq_r64_r64    
  jne .L_126860               #  35    0x126826  6      OPC=jne_label_1     
  nop                         #  36    0x12682c  1      OPC=nop             
.L_126820:                    #        0x12682d  0      OPC=<label>         
  andl %ecx, %ecx             #  37    0x12682d  2      OPC=andl_r32_r32    
  movl %r8d, (%r15,%rcx,1)    #  38    0x12682f  4      OPC=movl_m32_r32    
  addl $0x4, %ecx             #  39    0x126833  3      OPC=addl_r32_imm8   
  addl $0x4, %edx             #  40    0x126836  3      OPC=addl_r32_imm8   
  movl (%r15,%rdx,1), %r8d    #  41    0x126839  4      OPC=movl_r32_m32    
  movl %r8d, %r9d             #  42    0x12683d  3      OPC=movl_r32_r32    
  leal -0x1010101(%r8), %esi  #  43    0x126840  7      OPC=leal_r32_m32    
  notl %r9d                   #  44    0x126847  3      OPC=notl_r32        
  andl %esi, %r9d             #  45    0x12684a  3      OPC=andl_r32_r32    
  andl $0x80808080, %r9d      #  46    0x12684d  7      OPC=andl_r32_imm32  
  je .L_126820                #  47    0x126854  6      OPC=je_label_1      
  nop                         #  48    0x12685a  1      OPC=nop             
  nop                         #  49    0x12685b  1      OPC=nop             
  nop                         #  50    0x12685c  1      OPC=nop             
  nop                         #  51    0x12685d  1      OPC=nop             
  nop                         #  52    0x12685e  1      OPC=nop             
  nop                         #  53    0x12685f  1      OPC=nop             
.L_126860:                    #        0x126860  0      OPC=<label>         
  orl %edx, %edx              #  54    0x126860  2      OPC=orl_r32_r32_1   
  movzbw (%r15,%rdx,1), %si   #  55    0x126862  6      OPC=movzbw_r16_m8   
  addl $0x1, %edx             #  56    0x126868  3      OPC=addl_r32_imm8   
  movl %ecx, %ecx             #  57    0x12686b  2      OPC=movl_r32_r32_1  
  movb %sil, (%r15,%rcx,1)    #  58    0x12686d  4      OPC=movb_m8_r8      
  addl $0x1, %ecx             #  59    0x126871  6      OPC=addl_r32_imm32  
  testb %sil, %sil            #  60    0x126877  3      OPC=testb_r8_r8     
  jne .L_126860               #  61    0x12687a  6      OPC=jne_label_1     
  nop                         #  62    0x126880  1      OPC=nop             
  nop                         #  63    0x126881  1      OPC=nop             
  nop                         #  64    0x126882  1      OPC=nop             
  nop                         #  65    0x126883  1      OPC=nop             
  nop                         #  66    0x126884  1      OPC=nop             
  nop                         #  67    0x126885  1      OPC=nop             
  retq                        #  68    0x126886  1      OPC=retq            
                                                                            
.size strcpy, .-strcpy
