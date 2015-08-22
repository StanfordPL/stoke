  .text
  .globl iswcntrl
  .type iswcntrl, @function

#! file-offset 0x18a180
#! rip-offset  0x14a180
#! capacity    160 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswcntrl:                 #        0x14a180  0      OPC=<label>         
  subl $0x8, %esp          #  1     0x14a180  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x14a183  3      OPC=addq_r64_r64    
  nop                      #  3     0x14a186  1      OPC=nop             
  nop                      #  4     0x14a187  1      OPC=nop             
  nop                      #  5     0x14a188  1      OPC=nop             
  nop                      #  6     0x14a189  1      OPC=nop             
  nop                      #  7     0x14a18a  1      OPC=nop             
  nop                      #  8     0x14a18b  1      OPC=nop             
  nop                      #  9     0x14a18c  1      OPC=nop             
  nop                      #  10    0x14a18d  1      OPC=nop             
  nop                      #  11    0x14a18e  1      OPC=nop             
  nop                      #  12    0x14a18f  1      OPC=nop             
  nop                      #  13    0x14a190  1      OPC=nop             
  nop                      #  14    0x14a191  1      OPC=nop             
  nop                      #  15    0x14a192  1      OPC=nop             
  nop                      #  16    0x14a193  1      OPC=nop             
  nop                      #  17    0x14a194  1      OPC=nop             
  nop                      #  18    0x14a195  1      OPC=nop             
  nop                      #  19    0x14a196  1      OPC=nop             
  nop                      #  20    0x14a197  1      OPC=nop             
  nop                      #  21    0x14a198  1      OPC=nop             
  nop                      #  22    0x14a199  1      OPC=nop             
  nop                      #  23    0x14a19a  1      OPC=nop             
  callq ._jp2uc            #  24    0x14a19b  5      OPC=callq_label     
  leal -0x7f(%rax), %edx   #  25    0x14a1a0  3      OPC=leal_r32_m16    
  cmpl $0x20, %edx         #  26    0x14a1a3  3      OPC=cmpl_r32_imm8   
  ja .L_14a1e0             #  27    0x14a1a6  2      OPC=ja_label        
  nop                      #  28    0x14a1a8  1      OPC=nop             
  nop                      #  29    0x14a1a9  1      OPC=nop             
  nop                      #  30    0x14a1aa  1      OPC=nop             
  nop                      #  31    0x14a1ab  1      OPC=nop             
  nop                      #  32    0x14a1ac  1      OPC=nop             
  nop                      #  33    0x14a1ad  1      OPC=nop             
  nop                      #  34    0x14a1ae  1      OPC=nop             
  nop                      #  35    0x14a1af  1      OPC=nop             
  nop                      #  36    0x14a1b0  1      OPC=nop             
  nop                      #  37    0x14a1b1  1      OPC=nop             
  nop                      #  38    0x14a1b2  1      OPC=nop             
  nop                      #  39    0x14a1b3  1      OPC=nop             
  nop                      #  40    0x14a1b4  1      OPC=nop             
  nop                      #  41    0x14a1b5  1      OPC=nop             
  nop                      #  42    0x14a1b6  1      OPC=nop             
  nop                      #  43    0x14a1b7  1      OPC=nop             
  nop                      #  44    0x14a1b8  1      OPC=nop             
  nop                      #  45    0x14a1b9  1      OPC=nop             
  nop                      #  46    0x14a1ba  1      OPC=nop             
  nop                      #  47    0x14a1bb  1      OPC=nop             
  nop                      #  48    0x14a1bc  1      OPC=nop             
  nop                      #  49    0x14a1bd  1      OPC=nop             
  nop                      #  50    0x14a1be  1      OPC=nop             
  nop                      #  51    0x14a1bf  1      OPC=nop             
.L_14a1c0:                 #        0x14a1c0  0      OPC=<label>         
  addl $0x8, %esp          #  52    0x14a1c0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  53    0x14a1c3  3      OPC=addq_r64_r64    
  movl $0x1, %eax          #  54    0x14a1c6  5      OPC=movl_r32_imm32  
  popq %r11                #  55    0x14a1cb  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  56    0x14a1cd  7      OPC=andl_r32_imm32  
  nop                      #  57    0x14a1d4  1      OPC=nop             
  nop                      #  58    0x14a1d5  1      OPC=nop             
  nop                      #  59    0x14a1d6  1      OPC=nop             
  nop                      #  60    0x14a1d7  1      OPC=nop             
  addq %r15, %r11          #  61    0x14a1d8  3      OPC=addq_r64_r64    
  jmpq %r11                #  62    0x14a1db  3      OPC=jmpq_r64        
  nop                      #  63    0x14a1de  1      OPC=nop             
  nop                      #  64    0x14a1df  1      OPC=nop             
  nop                      #  65    0x14a1e0  1      OPC=nop             
  nop                      #  66    0x14a1e1  1      OPC=nop             
  nop                      #  67    0x14a1e2  1      OPC=nop             
  nop                      #  68    0x14a1e3  1      OPC=nop             
  nop                      #  69    0x14a1e4  1      OPC=nop             
  nop                      #  70    0x14a1e5  1      OPC=nop             
  nop                      #  71    0x14a1e6  1      OPC=nop             
.L_14a1e0:                 #        0x14a1e7  0      OPC=<label>         
  cmpl $0x1f, %eax         #  72    0x14a1e7  3      OPC=cmpl_r32_imm8   
  jbe .L_14a1c0            #  73    0x14a1ea  2      OPC=jbe_label       
  cmpl $0x2029, %eax       #  74    0x14a1ec  5      OPC=cmpl_eax_imm32  
  sete %dl                 #  75    0x14a1f1  3      OPC=sete_r8         
  cmpl $0x2028, %eax       #  76    0x14a1f4  5      OPC=cmpl_eax_imm32  
  sete %al                 #  77    0x14a1f9  3      OPC=sete_r8         
  addl $0x8, %esp          #  78    0x14a1fc  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  79    0x14a1ff  3      OPC=addq_r64_r64    
  popq %r11                #  80    0x14a202  2      OPC=popq_r64_1      
  orl %eax, %edx           #  81    0x14a204  2      OPC=orl_r32_r32     
  nop                      #  82    0x14a206  1      OPC=nop             
  movzbl %dl, %eax         #  83    0x14a207  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  84    0x14a20a  7      OPC=andl_r32_imm32  
  nop                      #  85    0x14a211  1      OPC=nop             
  nop                      #  86    0x14a212  1      OPC=nop             
  nop                      #  87    0x14a213  1      OPC=nop             
  nop                      #  88    0x14a214  1      OPC=nop             
  addq %r15, %r11          #  89    0x14a215  3      OPC=addq_r64_r64    
  jmpq %r11                #  90    0x14a218  3      OPC=jmpq_r64        
  nop                      #  91    0x14a21b  1      OPC=nop             
  nop                      #  92    0x14a21c  1      OPC=nop             
  nop                      #  93    0x14a21d  1      OPC=nop             
  nop                      #  94    0x14a21e  1      OPC=nop             
  nop                      #  95    0x14a21f  1      OPC=nop             
  nop                      #  96    0x14a220  1      OPC=nop             
  nop                      #  97    0x14a221  1      OPC=nop             
  nop                      #  98    0x14a222  1      OPC=nop             
  nop                      #  99    0x14a223  1      OPC=nop             
  nop                      #  100   0x14a224  1      OPC=nop             
  nop                      #  101   0x14a225  1      OPC=nop             
  nop                      #  102   0x14a226  1      OPC=nop             
  nop                      #  103   0x14a227  1      OPC=nop             
  nop                      #  104   0x14a228  1      OPC=nop             
  nop                      #  105   0x14a229  1      OPC=nop             
  nop                      #  106   0x14a22a  1      OPC=nop             
  nop                      #  107   0x14a22b  1      OPC=nop             
  nop                      #  108   0x14a22c  1      OPC=nop             
  nop                      #  109   0x14a22d  1      OPC=nop             
                                                                         
.size iswcntrl, .-iswcntrl

