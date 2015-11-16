  .text
  .globl strcpy
  .type strcpy, @function

#! file-offset 0x1667e0
#! rip-offset  0x1267e0
#! capacity    192 bytes

# Text                    #  Line  RIP       Bytes  Opcode              
.strcpy:                  #        0x1267e0  0      OPC=<label>         
  addq $0x3, %rsi         #  1     0x1267e0  7      OPC=addq_r64_imm32  
  nop                     #  2     0x1267e7  1      OPC=nop             
  nopl %eax               #  3     0x1267e8  3      OPC=nopl_r32        
  nopl %eax               #  4     0x1267eb  3      OPC=nopl_r32        
  nopl %eax               #  5     0x1267ee  3      OPC=nopl_r32        
  nop                     #  6     0x1267f1  1      OPC=nop             
  nop                     #  7     0x1267f2  1      OPC=nop             
  nop                     #  8     0x1267f3  1      OPC=nop             
  nop                     #  9     0x1267f4  1      OPC=nop             
  nopl %eax               #  10    0x1267f5  3      OPC=nopl_r32        
  nop                     #  11    0x1267f8  1      OPC=nop             
  nop                     #  12    0x1267f9  1      OPC=nop             
  nop                     #  13    0x1267fa  1      OPC=nop             
  movl $0x20, %eax        #  14    0x1267fb  5      OPC=movl_r32_imm32  
  nop                     #  15    0x126800  1      OPC=nop             
  jne .L_126860           #  16    0x126801  6      OPC=jne_label_1     
  nop                     #  17    0x126807  1      OPC=nop             
  nop                     #  18    0x126808  1      OPC=nop             
  movzwl %r15w, %eax      #  19    0x126809  4      OPC=movzwl_r32_r16  
  shrw $0x1, %di          #  20    0x12680d  4      OPC=shrw_r16_one    
  nop                     #  21    0x126811  1      OPC=nop             
  nop                     #  22    0x126812  1      OPC=nop             
  nop                     #  23    0x126813  1      OPC=nop             
  nopl %eax               #  24    0x126814  3      OPC=nopl_r32        
  nop                     #  25    0x126817  1      OPC=nop             
  nop                     #  26    0x126818  1      OPC=nop             
  nop                     #  27    0x126819  1      OPC=nop             
  jne .L_126860           #  28    0x12681a  6      OPC=jne_label_1     
.L_126820:                #        0x126820  0      OPC=<label>         
  je .L_126820            #  29    0x126820  6      OPC=je_label_1      
  orl $0xfffffffe, %edi   #  30    0x126826  6      OPC=orl_r32_imm32   
  nop                     #  31    0x12682c  1      OPC=nop             
  nop                     #  32    0x12682d  1      OPC=nop             
  nopl %eax               #  33    0x12682e  3      OPC=nopl_r32        
  nop                     #  34    0x126831  1      OPC=nop             
  addl $0x80808080, %eax  #  35    0x126832  6      OPC=addl_r32_imm32  
  nopl %eax               #  36    0x126838  3      OPC=nopl_r32        
  nop                     #  37    0x12683b  1      OPC=nop             
  nop                     #  38    0x12683c  1      OPC=nop             
  nop                     #  39    0x12683d  1      OPC=nop             
  nop                     #  40    0x12683e  1      OPC=nop             
  nop                     #  41    0x12683f  1      OPC=nop             
  nop                     #  42    0x126840  1      OPC=nop             
  nopl %eax               #  43    0x126841  3      OPC=nopl_r32        
  nopl %eax               #  44    0x126844  3      OPC=nopl_r32        
  nop                     #  45    0x126847  1      OPC=nop             
  addq $0x0, %rdi         #  46    0x126848  7      OPC=addq_r64_imm32  
  nop                     #  47    0x12684f  1      OPC=nop             
  nop                     #  48    0x126850  1      OPC=nop             
  nop                     #  49    0x126851  1      OPC=nop             
  nop                     #  50    0x126852  1      OPC=nop             
  nop                     #  51    0x126853  1      OPC=nop             
  nop                     #  52    0x126854  1      OPC=nop             
  nop                     #  53    0x126855  1      OPC=nop             
  nopl %eax               #  54    0x126856  3      OPC=nopl_r32        
  nop                     #  55    0x126859  1      OPC=nop             
  nop                     #  56    0x12685a  1      OPC=nop             
  nop                     #  57    0x12685b  1      OPC=nop             
  shll $0xff, %eax        #  58    0x12685c  3      OPC=shll_r32_imm8   
  nop                     #  59    0x12685f  1      OPC=nop             
.L_126860:                #        0x126860  0      OPC=<label>         
  jne .L_126860           #  60    0x126860  6      OPC=jne_label_1     
  popq %r11               #  61    0x126866  2      OPC=popq_r64_1      
  andl $0xe0, %r11d       #  62    0x126868  4      OPC=andl_r32_imm8   
  addq %r15, %r11         #  63    0x12686c  3      OPC=addq_r64_r64    
  jmpq %r11               #  64    0x12686f  3      OPC=jmpq_r64        
                                                                        
.size strcpy, .-strcpy
