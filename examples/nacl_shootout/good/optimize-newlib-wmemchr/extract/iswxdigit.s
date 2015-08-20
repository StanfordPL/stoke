  .text
  .globl iswxdigit
  .type iswxdigit, @function

#! file-offset 0x15fde0
#! rip-offset  0x11fde0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswxdigit:                #        0x11fde0  0      OPC=<label>         
  leal -0x61(%rdi), %eax   #  1     0x11fde0  3      OPC=leal_r32_m16    
  cmpl $0x5, %eax          #  2     0x11fde3  3      OPC=cmpl_r32_imm8   
  ja .L_11fe20             #  3     0x11fde6  2      OPC=ja_label        
  nop                      #  4     0x11fde8  1      OPC=nop             
  nop                      #  5     0x11fde9  1      OPC=nop             
  nop                      #  6     0x11fdea  1      OPC=nop             
  nop                      #  7     0x11fdeb  1      OPC=nop             
  nop                      #  8     0x11fdec  1      OPC=nop             
  nop                      #  9     0x11fded  1      OPC=nop             
  nop                      #  10    0x11fdee  1      OPC=nop             
  nop                      #  11    0x11fdef  1      OPC=nop             
  nop                      #  12    0x11fdf0  1      OPC=nop             
  nop                      #  13    0x11fdf1  1      OPC=nop             
  nop                      #  14    0x11fdf2  1      OPC=nop             
  nop                      #  15    0x11fdf3  1      OPC=nop             
  nop                      #  16    0x11fdf4  1      OPC=nop             
  nop                      #  17    0x11fdf5  1      OPC=nop             
  nop                      #  18    0x11fdf6  1      OPC=nop             
  nop                      #  19    0x11fdf7  1      OPC=nop             
  nop                      #  20    0x11fdf8  1      OPC=nop             
  nop                      #  21    0x11fdf9  1      OPC=nop             
  nop                      #  22    0x11fdfa  1      OPC=nop             
  nop                      #  23    0x11fdfb  1      OPC=nop             
  nop                      #  24    0x11fdfc  1      OPC=nop             
  nop                      #  25    0x11fdfd  1      OPC=nop             
  nop                      #  26    0x11fdfe  1      OPC=nop             
  nop                      #  27    0x11fdff  1      OPC=nop             
.L_11fe00:                 #        0x11fe00  0      OPC=<label>         
  movl $0x1, %eax          #  28    0x11fe00  5      OPC=movl_r32_imm32  
  popq %r11                #  29    0x11fe05  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  30    0x11fe07  7      OPC=andl_r32_imm32  
  nop                      #  31    0x11fe0e  1      OPC=nop             
  nop                      #  32    0x11fe0f  1      OPC=nop             
  nop                      #  33    0x11fe10  1      OPC=nop             
  nop                      #  34    0x11fe11  1      OPC=nop             
  addq %r15, %r11          #  35    0x11fe12  3      OPC=addq_r64_r64    
  jmpq %r11                #  36    0x11fe15  3      OPC=jmpq_r64        
  nop                      #  37    0x11fe18  1      OPC=nop             
  nop                      #  38    0x11fe19  1      OPC=nop             
  nop                      #  39    0x11fe1a  1      OPC=nop             
  nop                      #  40    0x11fe1b  1      OPC=nop             
  nop                      #  41    0x11fe1c  1      OPC=nop             
  nop                      #  42    0x11fe1d  1      OPC=nop             
  nop                      #  43    0x11fe1e  1      OPC=nop             
  nop                      #  44    0x11fe1f  1      OPC=nop             
  nop                      #  45    0x11fe20  1      OPC=nop             
  nop                      #  46    0x11fe21  1      OPC=nop             
  nop                      #  47    0x11fe22  1      OPC=nop             
  nop                      #  48    0x11fe23  1      OPC=nop             
  nop                      #  49    0x11fe24  1      OPC=nop             
  nop                      #  50    0x11fe25  1      OPC=nop             
  nop                      #  51    0x11fe26  1      OPC=nop             
.L_11fe20:                 #        0x11fe27  0      OPC=<label>         
  leal -0x30(%rdi), %eax   #  52    0x11fe27  3      OPC=leal_r32_m16    
  cmpl $0x9, %eax          #  53    0x11fe2a  3      OPC=cmpl_r32_imm8   
  jbe .L_11fe00            #  54    0x11fe2d  2      OPC=jbe_label       
  subl $0x41, %edi         #  55    0x11fe2f  3      OPC=subl_r32_imm8   
  xorl %eax, %eax          #  56    0x11fe32  2      OPC=xorl_r32_r32    
  cmpl $0x5, %edi          #  57    0x11fe34  3      OPC=cmpl_r32_imm8   
  setbe %al                #  58    0x11fe37  3      OPC=setbe_r8        
  popq %r11                #  59    0x11fe3a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  60    0x11fe3c  7      OPC=andl_r32_imm32  
  nop                      #  61    0x11fe43  1      OPC=nop             
  nop                      #  62    0x11fe44  1      OPC=nop             
  nop                      #  63    0x11fe45  1      OPC=nop             
  nop                      #  64    0x11fe46  1      OPC=nop             
  addq %r15, %r11          #  65    0x11fe47  3      OPC=addq_r64_r64    
  jmpq %r11                #  66    0x11fe4a  3      OPC=jmpq_r64        
  nop                      #  67    0x11fe4d  1      OPC=nop             
                                                                         
.size iswxdigit, .-iswxdigit

