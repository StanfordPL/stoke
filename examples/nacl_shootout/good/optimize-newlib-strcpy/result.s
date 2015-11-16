  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                      #  Line  RIP       Bytes  Opcode              
.strcpy:                    #        0x1267e0  0      OPC=<label>         
  movl %edi, %eax           #  1     0x1267e0  2      OPC=movl_r32_r32    
  nop                       #  2     0x1267e2  1      OPC=nop             
  nopl %eax                 #  3     0x1267e3  3      OPC=nopl_r32        
  nop                       #  4     0x1267e6  1      OPC=nop             
  nopl %eax                 #  5     0x1267e7  3      OPC=nopl_r32        
  nop                       #  6     0x1267ea  1      OPC=nop             
  subq %rsi, %rsi           #  7     0x1267eb  3      OPC=subq_r64_r64_1  
  nop                       #  8     0x1267ee  1      OPC=nop             
  shrw $0x5, %ax            #  9     0x1267ef  4      OPC=shrw_r16_imm8   
  nopl %eax                 #  10    0x1267f3  3      OPC=nopl_r32        
  nopl %eax                 #  11    0x1267f6  3      OPC=nopl_r32        
  nop                       #  12    0x1267f9  1      OPC=nop             
  jne .L_126860             #  13    0x1267fa  6      OPC=jne_label_1     
  nop                       #  14    0x126800  1      OPC=nop             
  movb $0xf0, %al           #  15    0x126801  3      OPC=movb_r8_imm8_1  
  orq $0xfffffffe, %rax     #  16    0x126804  6      OPC=orq_rax_imm32   
  nop                       #  17    0x12680a  1      OPC=nop             
  nop                       #  18    0x12680b  1      OPC=nop             
  leal (%r15,%rsi,1), %r8d  #  19    0x12680c  4      OPC=leal_r32_m16    
  nop                       #  20    0x126810  1      OPC=nop             
  orl $0x20, %esi           #  21    0x126811  6      OPC=orl_r32_imm32   
  nop                       #  22    0x126817  1      OPC=nop             
  nop                       #  23    0x126818  1      OPC=nop             
  nop                       #  24    0x126819  1      OPC=nop             
  jne .L_126860             #  25    0x12681a  6      OPC=jne_label_1     
.L_126820:                  #        0x126820  0      OPC=<label>         
  negw %di                  #  26    0x126820  3      OPC=negw_r16        
  movswq %r8w, %r8          #  27    0x126823  4      OPC=movswq_r64_r16  
  je .L_126820              #  28    0x126827  6      OPC=je_label_1      
  nop                       #  29    0x12682d  1      OPC=nop             
  nop                       #  30    0x12682e  1      OPC=nop             
  nop                       #  31    0x12682f  1      OPC=nop             
  nop                       #  32    0x126830  1      OPC=nop             
  nopl %eax                 #  33    0x126831  3      OPC=nopl_r32        
  nopl %eax                 #  34    0x126834  3      OPC=nopl_r32        
  nop                       #  35    0x126837  1      OPC=nop             
  nop                       #  36    0x126838  1      OPC=nop             
  nop                       #  37    0x126839  1      OPC=nop             
  nopl %eax                 #  38    0x12683a  3      OPC=nopl_r32        
  nop                       #  39    0x12683d  1      OPC=nop             
  nop                       #  40    0x12683e  1      OPC=nop             
  nop                       #  41    0x12683f  1      OPC=nop             
  nopl %eax                 #  42    0x126840  3      OPC=nopl_r32        
  nop                       #  43    0x126843  1      OPC=nop             
  nop                       #  44    0x126844  1      OPC=nop             
  nop                       #  45    0x126845  1      OPC=nop             
  nopl %eax                 #  46    0x126846  3      OPC=nopl_r32        
  nopl %eax                 #  47    0x126849  3      OPC=nopl_r32        
  nopl %eax                 #  48    0x12684c  3      OPC=nopl_r32        
  nopl %eax                 #  49    0x12684f  3      OPC=nopl_r32        
  nopl %eax                 #  50    0x126852  3      OPC=nopl_r32        
  nop                       #  51    0x126855  1      OPC=nop             
  nop                       #  52    0x126856  1      OPC=nop             
  notb %ah                  #  53    0x126857  2      OPC=notb_rh         
  nop                       #  54    0x126859  1      OPC=nop             
  nop                       #  55    0x12685a  1      OPC=nop             
  nop                       #  56    0x12685b  1      OPC=nop             
  xorl $0xfd, %r8d          #  57    0x12685c  4      OPC=xorl_r32_imm8   
.L_126860:                  #        0x126860  0      OPC=<label>         
  nopl %eax                 #  58    0x126860  3      OPC=nopl_r32        
  nopl %eax                 #  59    0x126863  3      OPC=nopl_r32        
  nop                       #  60    0x126866  1      OPC=nop             
  jne .L_126860             #  61    0x126867  6      OPC=jne_label_1     
  nop                       #  62    0x12686d  1      OPC=nop             
  nop                       #  63    0x12686e  1      OPC=nop             
  nopl %eax                 #  64    0x12686f  3      OPC=nopl_r32        
  andq $0x4, %rax           #  65    0x126872  6      OPC=andq_rax_imm32  
  nop                       #  66    0x126878  1      OPC=nop             
  nopl %eax                 #  67    0x126879  3      OPC=nopl_r32        
  nop                       #  68    0x12687c  1      OPC=nop             
  nopl %eax                 #  69    0x12687d  3      OPC=nopl_r32        
  popq %r11                 #  70    0x126880  2      OPC=popq_r64_1      
  andl $0xe0, %r11d         #  71    0x126882  4      OPC=andl_r32_imm8   
  addq %r15, %r11           #  72    0x126886  3      OPC=addq_r64_r64    
  jmpq %r11                 #  73    0x126889  3      OPC=jmpq_r64        
                                                                          
.size strcpy, .-strcpy
