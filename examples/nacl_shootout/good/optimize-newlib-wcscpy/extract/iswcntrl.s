  .text
  .globl iswcntrl
  .type iswcntrl, @function

#! file-offset 0x1896c0
#! rip-offset  0x1496c0
#! capacity    160 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswcntrl:                 #        0x1496c0  0      OPC=<label>         
  subl $0x8, %esp          #  1     0x1496c0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x1496c3  3      OPC=addq_r64_r64    
  nop                      #  3     0x1496c6  1      OPC=nop             
  nop                      #  4     0x1496c7  1      OPC=nop             
  nop                      #  5     0x1496c8  1      OPC=nop             
  nop                      #  6     0x1496c9  1      OPC=nop             
  nop                      #  7     0x1496ca  1      OPC=nop             
  nop                      #  8     0x1496cb  1      OPC=nop             
  nop                      #  9     0x1496cc  1      OPC=nop             
  nop                      #  10    0x1496cd  1      OPC=nop             
  nop                      #  11    0x1496ce  1      OPC=nop             
  nop                      #  12    0x1496cf  1      OPC=nop             
  nop                      #  13    0x1496d0  1      OPC=nop             
  nop                      #  14    0x1496d1  1      OPC=nop             
  nop                      #  15    0x1496d2  1      OPC=nop             
  nop                      #  16    0x1496d3  1      OPC=nop             
  nop                      #  17    0x1496d4  1      OPC=nop             
  nop                      #  18    0x1496d5  1      OPC=nop             
  nop                      #  19    0x1496d6  1      OPC=nop             
  nop                      #  20    0x1496d7  1      OPC=nop             
  nop                      #  21    0x1496d8  1      OPC=nop             
  nop                      #  22    0x1496d9  1      OPC=nop             
  nop                      #  23    0x1496da  1      OPC=nop             
  callq ._jp2uc            #  24    0x1496db  5      OPC=callq_label     
  leal -0x7f(%rax), %edx   #  25    0x1496e0  3      OPC=leal_r32_m16    
  cmpl $0x20, %edx         #  26    0x1496e3  3      OPC=cmpl_r32_imm8   
  ja .L_149720             #  27    0x1496e6  2      OPC=ja_label        
  nop                      #  28    0x1496e8  1      OPC=nop             
  nop                      #  29    0x1496e9  1      OPC=nop             
  nop                      #  30    0x1496ea  1      OPC=nop             
  nop                      #  31    0x1496eb  1      OPC=nop             
  nop                      #  32    0x1496ec  1      OPC=nop             
  nop                      #  33    0x1496ed  1      OPC=nop             
  nop                      #  34    0x1496ee  1      OPC=nop             
  nop                      #  35    0x1496ef  1      OPC=nop             
  nop                      #  36    0x1496f0  1      OPC=nop             
  nop                      #  37    0x1496f1  1      OPC=nop             
  nop                      #  38    0x1496f2  1      OPC=nop             
  nop                      #  39    0x1496f3  1      OPC=nop             
  nop                      #  40    0x1496f4  1      OPC=nop             
  nop                      #  41    0x1496f5  1      OPC=nop             
  nop                      #  42    0x1496f6  1      OPC=nop             
  nop                      #  43    0x1496f7  1      OPC=nop             
  nop                      #  44    0x1496f8  1      OPC=nop             
  nop                      #  45    0x1496f9  1      OPC=nop             
  nop                      #  46    0x1496fa  1      OPC=nop             
  nop                      #  47    0x1496fb  1      OPC=nop             
  nop                      #  48    0x1496fc  1      OPC=nop             
  nop                      #  49    0x1496fd  1      OPC=nop             
  nop                      #  50    0x1496fe  1      OPC=nop             
  nop                      #  51    0x1496ff  1      OPC=nop             
.L_149700:                 #        0x149700  0      OPC=<label>         
  addl $0x8, %esp          #  52    0x149700  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  53    0x149703  3      OPC=addq_r64_r64    
  movl $0x1, %eax          #  54    0x149706  5      OPC=movl_r32_imm32  
  popq %r11                #  55    0x14970b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  56    0x14970d  7      OPC=andl_r32_imm32  
  nop                      #  57    0x149714  1      OPC=nop             
  nop                      #  58    0x149715  1      OPC=nop             
  nop                      #  59    0x149716  1      OPC=nop             
  nop                      #  60    0x149717  1      OPC=nop             
  addq %r15, %r11          #  61    0x149718  3      OPC=addq_r64_r64    
  jmpq %r11                #  62    0x14971b  3      OPC=jmpq_r64        
  nop                      #  63    0x14971e  1      OPC=nop             
  nop                      #  64    0x14971f  1      OPC=nop             
  nop                      #  65    0x149720  1      OPC=nop             
  nop                      #  66    0x149721  1      OPC=nop             
  nop                      #  67    0x149722  1      OPC=nop             
  nop                      #  68    0x149723  1      OPC=nop             
  nop                      #  69    0x149724  1      OPC=nop             
  nop                      #  70    0x149725  1      OPC=nop             
  nop                      #  71    0x149726  1      OPC=nop             
.L_149720:                 #        0x149727  0      OPC=<label>         
  cmpl $0x1f, %eax         #  72    0x149727  3      OPC=cmpl_r32_imm8   
  jbe .L_149700            #  73    0x14972a  2      OPC=jbe_label       
  cmpl $0x2029, %eax       #  74    0x14972c  5      OPC=cmpl_eax_imm32  
  sete %dl                 #  75    0x149731  3      OPC=sete_r8         
  cmpl $0x2028, %eax       #  76    0x149734  5      OPC=cmpl_eax_imm32  
  sete %al                 #  77    0x149739  3      OPC=sete_r8         
  addl $0x8, %esp          #  78    0x14973c  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  79    0x14973f  3      OPC=addq_r64_r64    
  popq %r11                #  80    0x149742  2      OPC=popq_r64_1      
  orl %eax, %edx           #  81    0x149744  2      OPC=orl_r32_r32     
  nop                      #  82    0x149746  1      OPC=nop             
  movzbl %dl, %eax         #  83    0x149747  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  84    0x14974a  7      OPC=andl_r32_imm32  
  nop                      #  85    0x149751  1      OPC=nop             
  nop                      #  86    0x149752  1      OPC=nop             
  nop                      #  87    0x149753  1      OPC=nop             
  nop                      #  88    0x149754  1      OPC=nop             
  addq %r15, %r11          #  89    0x149755  3      OPC=addq_r64_r64    
  jmpq %r11                #  90    0x149758  3      OPC=jmpq_r64        
  nop                      #  91    0x14975b  1      OPC=nop             
  nop                      #  92    0x14975c  1      OPC=nop             
  nop                      #  93    0x14975d  1      OPC=nop             
  nop                      #  94    0x14975e  1      OPC=nop             
  nop                      #  95    0x14975f  1      OPC=nop             
  nop                      #  96    0x149760  1      OPC=nop             
  nop                      #  97    0x149761  1      OPC=nop             
  nop                      #  98    0x149762  1      OPC=nop             
  nop                      #  99    0x149763  1      OPC=nop             
  nop                      #  100   0x149764  1      OPC=nop             
  nop                      #  101   0x149765  1      OPC=nop             
  nop                      #  102   0x149766  1      OPC=nop             
  nop                      #  103   0x149767  1      OPC=nop             
  nop                      #  104   0x149768  1      OPC=nop             
  nop                      #  105   0x149769  1      OPC=nop             
  nop                      #  106   0x14976a  1      OPC=nop             
  nop                      #  107   0x14976b  1      OPC=nop             
  nop                      #  108   0x14976c  1      OPC=nop             
  nop                      #  109   0x14976d  1      OPC=nop             
                                                                         
.size iswcntrl, .-iswcntrl

