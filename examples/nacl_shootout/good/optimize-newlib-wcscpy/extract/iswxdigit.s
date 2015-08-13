  .text
  .globl iswxdigit
  .type iswxdigit, @function

#! file-offset 0x15fae0
#! rip-offset  0x11fae0
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswxdigit:                #        0x11fae0  0      OPC=<label>         
  leal -0x61(%rdi), %eax   #  1     0x11fae0  3      OPC=leal_r32_m16    
  cmpl $0x5, %eax          #  2     0x11fae3  3      OPC=cmpl_r32_imm8   
  ja .L_11fb20             #  3     0x11fae6  2      OPC=ja_label        
  nop                      #  4     0x11fae8  1      OPC=nop             
  nop                      #  5     0x11fae9  1      OPC=nop             
  nop                      #  6     0x11faea  1      OPC=nop             
  nop                      #  7     0x11faeb  1      OPC=nop             
  nop                      #  8     0x11faec  1      OPC=nop             
  nop                      #  9     0x11faed  1      OPC=nop             
  nop                      #  10    0x11faee  1      OPC=nop             
  nop                      #  11    0x11faef  1      OPC=nop             
  nop                      #  12    0x11faf0  1      OPC=nop             
  nop                      #  13    0x11faf1  1      OPC=nop             
  nop                      #  14    0x11faf2  1      OPC=nop             
  nop                      #  15    0x11faf3  1      OPC=nop             
  nop                      #  16    0x11faf4  1      OPC=nop             
  nop                      #  17    0x11faf5  1      OPC=nop             
  nop                      #  18    0x11faf6  1      OPC=nop             
  nop                      #  19    0x11faf7  1      OPC=nop             
  nop                      #  20    0x11faf8  1      OPC=nop             
  nop                      #  21    0x11faf9  1      OPC=nop             
  nop                      #  22    0x11fafa  1      OPC=nop             
  nop                      #  23    0x11fafb  1      OPC=nop             
  nop                      #  24    0x11fafc  1      OPC=nop             
  nop                      #  25    0x11fafd  1      OPC=nop             
  nop                      #  26    0x11fafe  1      OPC=nop             
  nop                      #  27    0x11faff  1      OPC=nop             
.L_11fb00:                 #        0x11fb00  0      OPC=<label>         
  movl $0x1, %eax          #  28    0x11fb00  5      OPC=movl_r32_imm32  
  popq %r11                #  29    0x11fb05  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  30    0x11fb07  7      OPC=andl_r32_imm32  
  nop                      #  31    0x11fb0e  1      OPC=nop             
  nop                      #  32    0x11fb0f  1      OPC=nop             
  nop                      #  33    0x11fb10  1      OPC=nop             
  nop                      #  34    0x11fb11  1      OPC=nop             
  addq %r15, %r11          #  35    0x11fb12  3      OPC=addq_r64_r64    
  jmpq %r11                #  36    0x11fb15  3      OPC=jmpq_r64        
  nop                      #  37    0x11fb18  1      OPC=nop             
  nop                      #  38    0x11fb19  1      OPC=nop             
  nop                      #  39    0x11fb1a  1      OPC=nop             
  nop                      #  40    0x11fb1b  1      OPC=nop             
  nop                      #  41    0x11fb1c  1      OPC=nop             
  nop                      #  42    0x11fb1d  1      OPC=nop             
  nop                      #  43    0x11fb1e  1      OPC=nop             
  nop                      #  44    0x11fb1f  1      OPC=nop             
  nop                      #  45    0x11fb20  1      OPC=nop             
  nop                      #  46    0x11fb21  1      OPC=nop             
  nop                      #  47    0x11fb22  1      OPC=nop             
  nop                      #  48    0x11fb23  1      OPC=nop             
  nop                      #  49    0x11fb24  1      OPC=nop             
  nop                      #  50    0x11fb25  1      OPC=nop             
  nop                      #  51    0x11fb26  1      OPC=nop             
.L_11fb20:                 #        0x11fb27  0      OPC=<label>         
  leal -0x30(%rdi), %eax   #  52    0x11fb27  3      OPC=leal_r32_m16    
  cmpl $0x9, %eax          #  53    0x11fb2a  3      OPC=cmpl_r32_imm8   
  jbe .L_11fb00            #  54    0x11fb2d  2      OPC=jbe_label       
  subl $0x41, %edi         #  55    0x11fb2f  3      OPC=subl_r32_imm8   
  xorl %eax, %eax          #  56    0x11fb32  2      OPC=xorl_r32_r32    
  cmpl $0x5, %edi          #  57    0x11fb34  3      OPC=cmpl_r32_imm8   
  setbe %al                #  58    0x11fb37  3      OPC=setbe_r8        
  popq %r11                #  59    0x11fb3a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  60    0x11fb3c  7      OPC=andl_r32_imm32  
  nop                      #  61    0x11fb43  1      OPC=nop             
  nop                      #  62    0x11fb44  1      OPC=nop             
  nop                      #  63    0x11fb45  1      OPC=nop             
  nop                      #  64    0x11fb46  1      OPC=nop             
  addq %r15, %r11          #  65    0x11fb47  3      OPC=addq_r64_r64    
  jmpq %r11                #  66    0x11fb4a  3      OPC=jmpq_r64        
  nop                      #  67    0x11fb4d  1      OPC=nop             
                                                                         
.size iswxdigit, .-iswxdigit

