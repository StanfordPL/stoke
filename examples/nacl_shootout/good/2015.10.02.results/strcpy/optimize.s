  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                           #  Line  RIP       Bytes  Opcode              
.strcpy:                         #        0x1267e0  0      OPC=<label>         
  nop                            #  1     0x1267e0  1      OPC=nop             
  nop                            #  2     0x1267e1  1      OPC=nop             
  nop                            #  3     0x1267e2  1      OPC=nop             
  movq %rdi, %rcx                #  4     0x1267e3  3      OPC=movq_r64_r64_1  
  movq %rsi, %rdx                #  5     0x1267e6  3      OPC=movq_r64_r64    
  movl %edi, %eax                #  6     0x1267e9  2      OPC=movl_r32_r32_1  
  orb %dl, %dil                  #  7     0x1267eb  3      OPC=orb_r8_r8_1     
  andl $0x3, %edi                #  8     0x1267ee  3      OPC=andl_r32_imm8   
  jne .L_126860                  #  9     0x1267f1  6      OPC=jne_label_1     
  movl %edx, %esi                #  10    0x1267f7  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %r8d       #  11    0x1267f9  4      OPC=movl_r32_m32    
  nop                            #  12    0x1267fd  1      OPC=nop             
  nop                            #  13    0x1267fe  1      OPC=nop             
  nop                            #  14    0x1267ff  1      OPC=nop             
  nop                            #  15    0x126800  1      OPC=nop             
  nop                            #  16    0x126801  1      OPC=nop             
  nop                            #  17    0x126802  1      OPC=nop             
  movq %r8, %rsi                 #  18    0x126803  3      OPC=movq_r64_r64_1  
  leal -0x1010101(%r8), %edi     #  19    0x126806  7      OPC=leal_r32_m16    
  andq $0x80808080, %rdi         #  20    0x12680d  7      OPC=andq_r64_imm32  
  notq %rsi                      #  21    0x126814  3      OPC=notq_r64        
  andq %rdi, %rsi                #  22    0x126817  3      OPC=andq_r64_r64    
  jne .L_126860                  #  23    0x12681a  6      OPC=jne_label_1     
.L_126820:                       #        0x126820  0      OPC=<label>         
  addl $0x4, %ecx                #  24    0x126820  3      OPC=addl_r32_imm8   
  movl %r8d, -0x4(%r15,%rcx,1)   #  25    0x126823  5      OPC=movl_m32_r32    
  addl $0x4, %edx                #  26    0x126828  6      OPC=addl_r32_imm32  
  movl (%r15,%rdx,1), %r8d       #  27    0x12682e  4      OPC=movl_r32_m32    
  leaq -0x1010101(%r8), %rsi     #  28    0x126832  7      OPC=leaq_r64_m16    
  nop                            #  29    0x126839  1      OPC=nop             
  nop                            #  30    0x12683a  1      OPC=nop             
  nop                            #  31    0x12683b  1      OPC=nop             
  nop                            #  32    0x12683c  1      OPC=nop             
  nop                            #  33    0x12683d  1      OPC=nop             
  nop                            #  34    0x12683e  1      OPC=nop             
  nop                            #  35    0x12683f  1      OPC=nop             
  movq %r8, %r9                  #  36    0x126840  3      OPC=movq_r64_r64    
  notq %r9                       #  37    0x126843  3      OPC=notq_r64        
  andq $0x80808080, %r9          #  38    0x126846  7      OPC=andq_r64_imm32  
  andl %esi, %r9d                #  39    0x12684d  3      OPC=andl_r32_r32_1  
  je .L_126820                   #  40    0x126850  6      OPC=je_label_1      
  nop                            #  41    0x126856  1      OPC=nop             
  nop                            #  42    0x126857  1      OPC=nop             
  nopl %eax                      #  43    0x126858  3      OPC=nopl_r32        
  nop                            #  44    0x12685b  1      OPC=nop             
  nop                            #  45    0x12685c  1      OPC=nop             
  nop                            #  46    0x12685d  1      OPC=nop             
  nop                            #  47    0x12685e  1      OPC=nop             
  nop                            #  48    0x12685f  1      OPC=nop             
.L_126860:                       #        0x126860  0      OPC=<label>         
  addl $0x1, %edx                #  49    0x126860  3      OPC=addl_r32_imm8   
  movsbw -0x1(%r15,%rdx,1), %si  #  50    0x126863  7      OPC=movsbw_r16_m8   
  addl $0x1, %ecx                #  51    0x12686a  6      OPC=addl_r32_imm32  
  movb %sil, -0x1(%r15,%rcx,1)   #  52    0x126870  5      OPC=movb_m8_r8      
  testb %sil, %sil               #  53    0x126875  3      OPC=testb_r8_r8     
  jne .L_126860                  #  54    0x126878  6      OPC=jne_label_1     
  nop                            #  55    0x12687e  1      OPC=nop             
  nop                            #  56    0x12687f  1      OPC=nop             
  nop                            #  57    0x126880  1      OPC=nop             
  nop                            #  58    0x126881  1      OPC=nop             
  nop                            #  59    0x126882  1      OPC=nop             
  nop                            #  60    0x126883  1      OPC=nop             
  nop                            #  61    0x126884  1      OPC=nop             
  nop                            #  62    0x126885  1      OPC=nop             
  nop                            #  63    0x126886  1      OPC=nop             
  nop                            #  64    0x126887  1      OPC=nop             
  nop                            #  65    0x126888  1      OPC=nop             
  nop                            #  66    0x126889  1      OPC=nop             
  nop                            #  67    0x12688a  1      OPC=nop             
  nop                            #  68    0x12688b  1      OPC=nop             
  popq %r11                      #  69    0x12688c  2      OPC=popq_r64_1      
  andl $0xe0, %r11d              #  70    0x12688e  4      OPC=andl_r32_imm8   
  addq %r15, %r11                #  71    0x126892  3      OPC=addq_r64_r64    
  jmpq %r11                      #  72    0x126895  3      OPC=jmpq_r64        
                                                                               
.size strcpy, .-strcpy
