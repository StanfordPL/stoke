  .text
  .globl iswcntrl
  .type iswcntrl, @function

#! file-offset 0x189a60
#! rip-offset  0x149a60
#! capacity    160 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswcntrl:                 #        0x149a60  0      OPC=<label>         
  subl $0x8, %esp          #  1     0x149a60  3      OPC=subl_r32_imm8   
  addq %r15, %rsp          #  2     0x149a63  3      OPC=addq_r64_r64    
  nop                      #  3     0x149a66  1      OPC=nop             
  nop                      #  4     0x149a67  1      OPC=nop             
  nop                      #  5     0x149a68  1      OPC=nop             
  nop                      #  6     0x149a69  1      OPC=nop             
  nop                      #  7     0x149a6a  1      OPC=nop             
  nop                      #  8     0x149a6b  1      OPC=nop             
  nop                      #  9     0x149a6c  1      OPC=nop             
  nop                      #  10    0x149a6d  1      OPC=nop             
  nop                      #  11    0x149a6e  1      OPC=nop             
  nop                      #  12    0x149a6f  1      OPC=nop             
  nop                      #  13    0x149a70  1      OPC=nop             
  nop                      #  14    0x149a71  1      OPC=nop             
  nop                      #  15    0x149a72  1      OPC=nop             
  nop                      #  16    0x149a73  1      OPC=nop             
  nop                      #  17    0x149a74  1      OPC=nop             
  nop                      #  18    0x149a75  1      OPC=nop             
  nop                      #  19    0x149a76  1      OPC=nop             
  nop                      #  20    0x149a77  1      OPC=nop             
  nop                      #  21    0x149a78  1      OPC=nop             
  nop                      #  22    0x149a79  1      OPC=nop             
  nop                      #  23    0x149a7a  1      OPC=nop             
  callq ._jp2uc            #  24    0x149a7b  5      OPC=callq_label     
  leal -0x7f(%rax), %edx   #  25    0x149a80  3      OPC=leal_r32_m16    
  cmpl $0x20, %edx         #  26    0x149a83  3      OPC=cmpl_r32_imm8   
  ja .L_149ac0             #  27    0x149a86  2      OPC=ja_label        
  nop                      #  28    0x149a88  1      OPC=nop             
  nop                      #  29    0x149a89  1      OPC=nop             
  nop                      #  30    0x149a8a  1      OPC=nop             
  nop                      #  31    0x149a8b  1      OPC=nop             
  nop                      #  32    0x149a8c  1      OPC=nop             
  nop                      #  33    0x149a8d  1      OPC=nop             
  nop                      #  34    0x149a8e  1      OPC=nop             
  nop                      #  35    0x149a8f  1      OPC=nop             
  nop                      #  36    0x149a90  1      OPC=nop             
  nop                      #  37    0x149a91  1      OPC=nop             
  nop                      #  38    0x149a92  1      OPC=nop             
  nop                      #  39    0x149a93  1      OPC=nop             
  nop                      #  40    0x149a94  1      OPC=nop             
  nop                      #  41    0x149a95  1      OPC=nop             
  nop                      #  42    0x149a96  1      OPC=nop             
  nop                      #  43    0x149a97  1      OPC=nop             
  nop                      #  44    0x149a98  1      OPC=nop             
  nop                      #  45    0x149a99  1      OPC=nop             
  nop                      #  46    0x149a9a  1      OPC=nop             
  nop                      #  47    0x149a9b  1      OPC=nop             
  nop                      #  48    0x149a9c  1      OPC=nop             
  nop                      #  49    0x149a9d  1      OPC=nop             
  nop                      #  50    0x149a9e  1      OPC=nop             
  nop                      #  51    0x149a9f  1      OPC=nop             
.L_149aa0:                 #        0x149aa0  0      OPC=<label>         
  addl $0x8, %esp          #  52    0x149aa0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  53    0x149aa3  3      OPC=addq_r64_r64    
  movl $0x1, %eax          #  54    0x149aa6  5      OPC=movl_r32_imm32  
  popq %r11                #  55    0x149aab  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  56    0x149aad  7      OPC=andl_r32_imm32  
  nop                      #  57    0x149ab4  1      OPC=nop             
  nop                      #  58    0x149ab5  1      OPC=nop             
  nop                      #  59    0x149ab6  1      OPC=nop             
  nop                      #  60    0x149ab7  1      OPC=nop             
  addq %r15, %r11          #  61    0x149ab8  3      OPC=addq_r64_r64    
  jmpq %r11                #  62    0x149abb  3      OPC=jmpq_r64        
  nop                      #  63    0x149abe  1      OPC=nop             
  nop                      #  64    0x149abf  1      OPC=nop             
  nop                      #  65    0x149ac0  1      OPC=nop             
  nop                      #  66    0x149ac1  1      OPC=nop             
  nop                      #  67    0x149ac2  1      OPC=nop             
  nop                      #  68    0x149ac3  1      OPC=nop             
  nop                      #  69    0x149ac4  1      OPC=nop             
  nop                      #  70    0x149ac5  1      OPC=nop             
  nop                      #  71    0x149ac6  1      OPC=nop             
.L_149ac0:                 #        0x149ac7  0      OPC=<label>         
  cmpl $0x1f, %eax         #  72    0x149ac7  3      OPC=cmpl_r32_imm8   
  jbe .L_149aa0            #  73    0x149aca  2      OPC=jbe_label       
  cmpl $0x2029, %eax       #  74    0x149acc  5      OPC=cmpl_eax_imm32  
  sete %dl                 #  75    0x149ad1  3      OPC=sete_r8         
  cmpl $0x2028, %eax       #  76    0x149ad4  5      OPC=cmpl_eax_imm32  
  sete %al                 #  77    0x149ad9  3      OPC=sete_r8         
  addl $0x8, %esp          #  78    0x149adc  3      OPC=addl_r32_imm8   
  addq %r15, %rsp          #  79    0x149adf  3      OPC=addq_r64_r64    
  popq %r11                #  80    0x149ae2  2      OPC=popq_r64_1      
  orl %eax, %edx           #  81    0x149ae4  2      OPC=orl_r32_r32     
  nop                      #  82    0x149ae6  1      OPC=nop             
  movzbl %dl, %eax         #  83    0x149ae7  3      OPC=movzbl_r32_r8   
  andl $0xffffffe0, %r11d  #  84    0x149aea  7      OPC=andl_r32_imm32  
  nop                      #  85    0x149af1  1      OPC=nop             
  nop                      #  86    0x149af2  1      OPC=nop             
  nop                      #  87    0x149af3  1      OPC=nop             
  nop                      #  88    0x149af4  1      OPC=nop             
  addq %r15, %r11          #  89    0x149af5  3      OPC=addq_r64_r64    
  jmpq %r11                #  90    0x149af8  3      OPC=jmpq_r64        
  nop                      #  91    0x149afb  1      OPC=nop             
  nop                      #  92    0x149afc  1      OPC=nop             
  nop                      #  93    0x149afd  1      OPC=nop             
  nop                      #  94    0x149afe  1      OPC=nop             
  nop                      #  95    0x149aff  1      OPC=nop             
  nop                      #  96    0x149b00  1      OPC=nop             
  nop                      #  97    0x149b01  1      OPC=nop             
  nop                      #  98    0x149b02  1      OPC=nop             
  nop                      #  99    0x149b03  1      OPC=nop             
  nop                      #  100   0x149b04  1      OPC=nop             
  nop                      #  101   0x149b05  1      OPC=nop             
  nop                      #  102   0x149b06  1      OPC=nop             
  nop                      #  103   0x149b07  1      OPC=nop             
  nop                      #  104   0x149b08  1      OPC=nop             
  nop                      #  105   0x149b09  1      OPC=nop             
  nop                      #  106   0x149b0a  1      OPC=nop             
  nop                      #  107   0x149b0b  1      OPC=nop             
  nop                      #  108   0x149b0c  1      OPC=nop             
  nop                      #  109   0x149b0d  1      OPC=nop             
                                                                         
.size iswcntrl, .-iswcntrl

