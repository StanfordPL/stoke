  .text
  .globl iswxdigit
  .type iswxdigit, @function

#! file-offset 0x160500
#! rip-offset  0x120500
#! capacity    96 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswxdigit:                #        0x120500  0      OPC=<label>         
  leal -0x61(%rdi), %eax   #  1     0x120500  3      OPC=leal_r32_m16    
  cmpl $0x5, %eax          #  2     0x120503  3      OPC=cmpl_r32_imm8   
  ja .L_120540             #  3     0x120506  2      OPC=ja_label        
  nop                      #  4     0x120508  1      OPC=nop             
  nop                      #  5     0x120509  1      OPC=nop             
  nop                      #  6     0x12050a  1      OPC=nop             
  nop                      #  7     0x12050b  1      OPC=nop             
  nop                      #  8     0x12050c  1      OPC=nop             
  nop                      #  9     0x12050d  1      OPC=nop             
  nop                      #  10    0x12050e  1      OPC=nop             
  nop                      #  11    0x12050f  1      OPC=nop             
  nop                      #  12    0x120510  1      OPC=nop             
  nop                      #  13    0x120511  1      OPC=nop             
  nop                      #  14    0x120512  1      OPC=nop             
  nop                      #  15    0x120513  1      OPC=nop             
  nop                      #  16    0x120514  1      OPC=nop             
  nop                      #  17    0x120515  1      OPC=nop             
  nop                      #  18    0x120516  1      OPC=nop             
  nop                      #  19    0x120517  1      OPC=nop             
  nop                      #  20    0x120518  1      OPC=nop             
  nop                      #  21    0x120519  1      OPC=nop             
  nop                      #  22    0x12051a  1      OPC=nop             
  nop                      #  23    0x12051b  1      OPC=nop             
  nop                      #  24    0x12051c  1      OPC=nop             
  nop                      #  25    0x12051d  1      OPC=nop             
  nop                      #  26    0x12051e  1      OPC=nop             
  nop                      #  27    0x12051f  1      OPC=nop             
.L_120520:                 #        0x120520  0      OPC=<label>         
  movl $0x1, %eax          #  28    0x120520  5      OPC=movl_r32_imm32  
  popq %r11                #  29    0x120525  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  30    0x120527  7      OPC=andl_r32_imm32  
  nop                      #  31    0x12052e  1      OPC=nop             
  nop                      #  32    0x12052f  1      OPC=nop             
  nop                      #  33    0x120530  1      OPC=nop             
  nop                      #  34    0x120531  1      OPC=nop             
  addq %r15, %r11          #  35    0x120532  3      OPC=addq_r64_r64    
  jmpq %r11                #  36    0x120535  3      OPC=jmpq_r64        
  nop                      #  37    0x120538  1      OPC=nop             
  nop                      #  38    0x120539  1      OPC=nop             
  nop                      #  39    0x12053a  1      OPC=nop             
  nop                      #  40    0x12053b  1      OPC=nop             
  nop                      #  41    0x12053c  1      OPC=nop             
  nop                      #  42    0x12053d  1      OPC=nop             
  nop                      #  43    0x12053e  1      OPC=nop             
  nop                      #  44    0x12053f  1      OPC=nop             
  nop                      #  45    0x120540  1      OPC=nop             
  nop                      #  46    0x120541  1      OPC=nop             
  nop                      #  47    0x120542  1      OPC=nop             
  nop                      #  48    0x120543  1      OPC=nop             
  nop                      #  49    0x120544  1      OPC=nop             
  nop                      #  50    0x120545  1      OPC=nop             
  nop                      #  51    0x120546  1      OPC=nop             
.L_120540:                 #        0x120547  0      OPC=<label>         
  leal -0x30(%rdi), %eax   #  52    0x120547  3      OPC=leal_r32_m16    
  cmpl $0x9, %eax          #  53    0x12054a  3      OPC=cmpl_r32_imm8   
  jbe .L_120520            #  54    0x12054d  2      OPC=jbe_label       
  subl $0x41, %edi         #  55    0x12054f  3      OPC=subl_r32_imm8   
  xorl %eax, %eax          #  56    0x120552  2      OPC=xorl_r32_r32    
  cmpl $0x5, %edi          #  57    0x120554  3      OPC=cmpl_r32_imm8   
  setbe %al                #  58    0x120557  3      OPC=setbe_r8        
  popq %r11                #  59    0x12055a  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  60    0x12055c  7      OPC=andl_r32_imm32  
  nop                      #  61    0x120563  1      OPC=nop             
  nop                      #  62    0x120564  1      OPC=nop             
  nop                      #  63    0x120565  1      OPC=nop             
  nop                      #  64    0x120566  1      OPC=nop             
  addq %r15, %r11          #  65    0x120567  3      OPC=addq_r64_r64    
  jmpq %r11                #  66    0x12056a  3      OPC=jmpq_r64        
  nop                      #  67    0x12056d  1      OPC=nop             
                                                                         
.size iswxdigit, .-iswxdigit

