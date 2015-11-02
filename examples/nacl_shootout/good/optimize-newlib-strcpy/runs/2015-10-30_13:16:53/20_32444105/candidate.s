  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                                 #  Line  RIP       Bytes  Opcode              
.strcpy:                               #        0x1267e0  0      OPC=<label>         
  nop                                  #  1     0x1267e0  1      OPC=nop             
  nop                                  #  2     0x1267e1  1      OPC=nop             
  nop                                  #  3     0x1267e2  1      OPC=nop             
  nop                                  #  4     0x1267e3  1      OPC=nop             
  movq %rdi, %rcx                      #  5     0x1267e4  3      OPC=movq_r64_r64_1  
  movl %esi, %edx                      #  6     0x1267e7  2      OPC=movl_r32_r32    
  movq %rdi, %rax                      #  7     0x1267e9  3      OPC=movq_r64_r64_1  
  nop                                  #  8     0x1267ec  1      OPC=nop             
  nop                                  #  9     0x1267ed  1      OPC=nop             
  nop                                  #  10    0x1267ee  1      OPC=nop             
  movq %rsi, %rdi                      #  11    0x1267ef  3      OPC=movq_r64_r64    
  addb %al, %dil                       #  12    0x1267f2  3      OPC=addb_r8_r8_1    
  salb $0x5, %dil                      #  13    0x1267f5  4      OPC=salb_r8_imm8    
  jne .L_126860                        #  14    0x1267f9  6      OPC=jne_label_1     
  nop                                  #  15    0x1267ff  1      OPC=nop             
  nop                                  #  16    0x126800  1      OPC=nop             
  leal -0x7f7f7f80(%rcx,%rcx,8), %edi  #  17    0x126801  7      OPC=leal_r32_m64    
  nop                                  #  18    0x126808  1      OPC=nop             
  nop                                  #  19    0x126809  1      OPC=nop             
  nop                                  #  20    0x12680a  1      OPC=nop             
  andl %esi, %esi                      #  21    0x12680b  2      OPC=andl_r32_r32    
  movl (%r15,%rsi,1), %r8d             #  22    0x12680d  4      OPC=movl_r32_m32    
  nop                                  #  23    0x126811  1      OPC=nop             
  nop                                  #  24    0x126812  1      OPC=nop             
  nop                                  #  25    0x126813  1      OPC=nop             
  nop                                  #  26    0x126814  1      OPC=nop             
  nop                                  #  27    0x126815  1      OPC=nop             
  andb $0x80, %dil                     #  28    0x126816  4      OPC=andb_r8_imm8    
  jne .L_126860                        #  29    0x12681a  6      OPC=jne_label_1     
.L_126820:                             #        0x126820  0      OPC=<label>         
  orl %ebp, %ecx                       #  30    0x126820  2      OPC=orl_r32_r32     
  movl %r8d, (%r15,%rcx,1)             #  31    0x126822  4      OPC=movl_m32_r32    
  addl $0x4, %edx                      #  32    0x126826  6      OPC=addl_r32_imm32  
  movl (%r15,%rdx,1), %r8d             #  33    0x12682c  4      OPC=movl_r32_m32    
  addl $0x4, %ecx                      #  34    0x126830  6      OPC=addl_r32_imm32  
  movl %r8d, %r9d                      #  35    0x126836  3      OPC=movl_r32_r32_1  
  leal -0x1010101(%r8), %esi           #  36    0x126839  7      OPC=leal_r32_m16    
  notl %r9d                            #  37    0x126840  3      OPC=notl_r32        
  andl $0x80808080, %r9d               #  38    0x126843  7      OPC=andl_r32_imm32  
  andl %esi, %r9d                      #  39    0x12684a  3      OPC=andl_r32_r32    
  je .L_126820                         #  40    0x12684d  6      OPC=je_label_1      
  nop                                  #  41    0x126853  1      OPC=nop             
  nop                                  #  42    0x126854  1      OPC=nop             
  nop                                  #  43    0x126855  1      OPC=nop             
  nop                                  #  44    0x126856  1      OPC=nop             
  nop                                  #  45    0x126857  1      OPC=nop             
  nop                                  #  46    0x126858  1      OPC=nop             
  nop                                  #  47    0x126859  1      OPC=nop             
  nop                                  #  48    0x12685a  1      OPC=nop             
  nop                                  #  49    0x12685b  1      OPC=nop             
  nop                                  #  50    0x12685c  1      OPC=nop             
  nop                                  #  51    0x12685d  1      OPC=nop             
  nop                                  #  52    0x12685e  1      OPC=nop             
  nop                                  #  53    0x12685f  1      OPC=nop             
.L_126860:                             #        0x126860  0      OPC=<label>         
  incl %edx                            #  54    0x126860  2      OPC=incl_r32        
  movsbl -0x1(%r15,%rdx,1), %esi       #  55    0x126862  6      OPC=movsbl_r32_m8   
  addl $0x1, %ecx                      #  56    0x126868  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)         #  57    0x12686e  5      OPC=movb_m8_r8      
  orq %rsi, %rsi                       #  58    0x126873  3      OPC=orq_r64_r64_1   
  jne .L_126860                        #  59    0x126876  6      OPC=jne_label_1     
  nop                                  #  60    0x12687c  1      OPC=nop             
  nop                                  #  61    0x12687d  1      OPC=nop             
  nop                                  #  62    0x12687e  1      OPC=nop             
  nop                                  #  63    0x12687f  1      OPC=nop             
  nop                                  #  64    0x126880  1      OPC=nop             
  retq

.size strcpy, -.strcpy

