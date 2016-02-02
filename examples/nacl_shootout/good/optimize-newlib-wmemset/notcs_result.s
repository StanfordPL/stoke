  .text
  .globl wmemset
  .type wmemset, @function

#! file-offset 0x1840c0
#! rip-offset  0x1440c0
#! capacity    96 bytes

# Text                          #  Line  RIP       Bytes  Opcode             
.wmemset:                       #        0x1440c0  0      OPC=<label>        
  nop                           #  1     0x1440c0  1      OPC=nop            
  nop                           #  2     0x1440c1  1      OPC=nop            
  nop                           #  3     0x1440c2  1      OPC=nop            
  nop                           #  4     0x1440c3  1      OPC=nop            
  nop                           #  5     0x1440c4  1      OPC=nop            
  nop                           #  6     0x1440c5  1      OPC=nop            
  nop                           #  7     0x1440c6  1      OPC=nop            
  nop                           #  8     0x1440c7  1      OPC=nop            
  nop                           #  9     0x1440c8  1      OPC=nop            
  nop                           #  10    0x1440c9  1      OPC=nop            
  nop                           #  11    0x1440ca  1      OPC=nop            
  movl %edi, %eax               #  12    0x1440cb  2      OPC=movl_r32_r32   
  andb %dl, %dl                 #  13    0x1440cd  2      OPC=andb_r8_r8     
  nop                           #  14    0x1440cf  1      OPC=nop            
  nop                           #  15    0x1440d0  1      OPC=nop            
  nop                           #  16    0x1440d1  1      OPC=nop            
  nop                           #  17    0x1440d2  1      OPC=nop            
  nop                           #  18    0x1440d3  1      OPC=nop            
  nop                           #  19    0x1440d4  1      OPC=nop            
  nop                           #  20    0x1440d5  1      OPC=nop            
  nop                           #  21    0x1440d6  1      OPC=nop            
  nop                           #  22    0x1440d7  1      OPC=nop            
  nop                           #  23    0x1440d8  1      OPC=nop            
  nop                           #  24    0x1440d9  1      OPC=nop            
  nop                           #  25    0x1440da  1      OPC=nop            
  nop                           #  26    0x1440db  1      OPC=nop            
  nop                           #  27    0x1440dc  1      OPC=nop            
  nop                           #  28    0x1440dd  1      OPC=nop            
  je .L_144100                  #  29    0x1440de  2      OPC=je_label       
.L_1440e0:                      #        0x1440e0  0      OPC=<label>        
  addl $0x4, %edi               #  30    0x1440e0  3      OPC=addl_r32_imm8  
  movl %esi, -0x4(%r15,%rdi,1)  #  31    0x1440e3  5      OPC=movl_m32_r32   
  nop                           #  32    0x1440e8  1      OPC=nop            
  nop                           #  33    0x1440e9  1      OPC=nop            
  nop                           #  34    0x1440ea  1      OPC=nop            
  nop                           #  35    0x1440eb  1      OPC=nop            
  nop                           #  36    0x1440ec  1      OPC=nop            
  nop                           #  37    0x1440ed  1      OPC=nop            
  nop                           #  38    0x1440ee  1      OPC=nop            
  decb %dl                      #  39    0x1440ef  2      OPC=decb_r8        
  ja .L_1440e0                  #  40    0x1440f1  2      OPC=ja_label       
  nop                           #  41    0x1440f3  1      OPC=nop            
  nop                           #  42    0x1440f4  1      OPC=nop            
  nop                           #  43    0x1440f5  1      OPC=nop            
  nop                           #  44    0x1440f6  1      OPC=nop            
  nop                           #  45    0x1440f7  1      OPC=nop            
  nop                           #  46    0x1440f8  1      OPC=nop            
  nop                           #  47    0x1440f9  1      OPC=nop            
  nop                           #  48    0x1440fa  1      OPC=nop            
  nop                           #  49    0x1440fb  1      OPC=nop            
  nop                           #  50    0x1440fc  1      OPC=nop            
  nop                           #  51    0x1440fd  1      OPC=nop            
  nop                           #  52    0x1440fe  1      OPC=nop            
  nop                           #  53    0x1440ff  1      OPC=nop            
.L_144100:                      #        0x144100  0      OPC=<label>        
  nop                           #  54    0x144100  1      OPC=nop            
  nop                           #  55    0x144101  1      OPC=nop            
  nop                           #  56    0x144102  1      OPC=nop            
  nop                           #  57    0x144103  1      OPC=nop            
  nop                           #  58    0x144104  1      OPC=nop            
  nop                           #  59    0x144105  1      OPC=nop            
  nop                           #  60    0x144106  1      OPC=nop            
  nop                           #  61    0x144107  1      OPC=nop            
  nop                           #  62    0x144108  1      OPC=nop            
  nop                           #  63    0x144109  1      OPC=nop            
  nop                           #  64    0x14410a  1      OPC=nop            
  nop                           #  65    0x14410b  1      OPC=nop            
  nop                           #  66    0x14410c  1      OPC=nop            
  popq %r11                     #  67    0x14410d  2      OPC=popq_r64_1     
  andl $0xe0, %r11d             #  68    0x14410f  4      OPC=andl_r32_imm8  
  addq %r15, %r11               #  69    0x144113  3      OPC=addq_r64_r64   
  jmpq %r11                     #  70    0x144116  3      OPC=jmpq_r64       
                                                                             
.size wmemset, .-wmemset
