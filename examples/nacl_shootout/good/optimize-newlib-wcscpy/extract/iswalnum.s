  .text
  .globl iswalnum
  .type iswalnum, @function

#! file-offset 0x188ac0
#! rip-offset  0x148ac0
#! capacity    128 bytes

# Text                     #  Line  RIP       Bytes  Opcode              
.iswalnum:                 #        0x148ac0  0      OPC=<label>         
  pushq %rbx               #  1     0x148ac0  1      OPC=pushq_r64_1     
  movl %edi, %ebx          #  2     0x148ac1  2      OPC=movl_r32_r32    
  nop                      #  3     0x148ac3  1      OPC=nop             
  nop                      #  4     0x148ac4  1      OPC=nop             
  nop                      #  5     0x148ac5  1      OPC=nop             
  nop                      #  6     0x148ac6  1      OPC=nop             
  nop                      #  7     0x148ac7  1      OPC=nop             
  nop                      #  8     0x148ac8  1      OPC=nop             
  nop                      #  9     0x148ac9  1      OPC=nop             
  nop                      #  10    0x148aca  1      OPC=nop             
  nop                      #  11    0x148acb  1      OPC=nop             
  nop                      #  12    0x148acc  1      OPC=nop             
  nop                      #  13    0x148acd  1      OPC=nop             
  nop                      #  14    0x148ace  1      OPC=nop             
  nop                      #  15    0x148acf  1      OPC=nop             
  nop                      #  16    0x148ad0  1      OPC=nop             
  nop                      #  17    0x148ad1  1      OPC=nop             
  nop                      #  18    0x148ad2  1      OPC=nop             
  nop                      #  19    0x148ad3  1      OPC=nop             
  nop                      #  20    0x148ad4  1      OPC=nop             
  nop                      #  21    0x148ad5  1      OPC=nop             
  nop                      #  22    0x148ad6  1      OPC=nop             
  nop                      #  23    0x148ad7  1      OPC=nop             
  nop                      #  24    0x148ad8  1      OPC=nop             
  nop                      #  25    0x148ad9  1      OPC=nop             
  nop                      #  26    0x148ada  1      OPC=nop             
  callq .iswalpha          #  27    0x148adb  5      OPC=callq_label     
  movl %eax, %edx          #  28    0x148ae0  2      OPC=movl_r32_r32    
  movl $0x1, %eax          #  29    0x148ae2  5      OPC=movl_r32_imm32  
  testl %edx, %edx         #  30    0x148ae7  2      OPC=testl_r32_r32   
  jne .L_148b20            #  31    0x148ae9  2      OPC=jne_label       
  movl %ebx, %edi          #  32    0x148aeb  2      OPC=movl_r32_r32    
  nop                      #  33    0x148aed  1      OPC=nop             
  nop                      #  34    0x148aee  1      OPC=nop             
  nop                      #  35    0x148aef  1      OPC=nop             
  nop                      #  36    0x148af0  1      OPC=nop             
  nop                      #  37    0x148af1  1      OPC=nop             
  nop                      #  38    0x148af2  1      OPC=nop             
  nop                      #  39    0x148af3  1      OPC=nop             
  nop                      #  40    0x148af4  1      OPC=nop             
  nop                      #  41    0x148af5  1      OPC=nop             
  nop                      #  42    0x148af6  1      OPC=nop             
  nop                      #  43    0x148af7  1      OPC=nop             
  nop                      #  44    0x148af8  1      OPC=nop             
  nop                      #  45    0x148af9  1      OPC=nop             
  nop                      #  46    0x148afa  1      OPC=nop             
  callq .iswdigit          #  47    0x148afb  5      OPC=callq_label     
  testl %eax, %eax         #  48    0x148b00  2      OPC=testl_r32_r32   
  setne %al                #  49    0x148b02  3      OPC=setne_r8        
  movzbl %al, %eax         #  50    0x148b05  3      OPC=movzbl_r32_r8   
  nop                      #  51    0x148b08  1      OPC=nop             
  nop                      #  52    0x148b09  1      OPC=nop             
  nop                      #  53    0x148b0a  1      OPC=nop             
  nop                      #  54    0x148b0b  1      OPC=nop             
  nop                      #  55    0x148b0c  1      OPC=nop             
  nop                      #  56    0x148b0d  1      OPC=nop             
  nop                      #  57    0x148b0e  1      OPC=nop             
  nop                      #  58    0x148b0f  1      OPC=nop             
  nop                      #  59    0x148b10  1      OPC=nop             
  nop                      #  60    0x148b11  1      OPC=nop             
  nop                      #  61    0x148b12  1      OPC=nop             
  nop                      #  62    0x148b13  1      OPC=nop             
  nop                      #  63    0x148b14  1      OPC=nop             
  nop                      #  64    0x148b15  1      OPC=nop             
  nop                      #  65    0x148b16  1      OPC=nop             
  nop                      #  66    0x148b17  1      OPC=nop             
  nop                      #  67    0x148b18  1      OPC=nop             
  nop                      #  68    0x148b19  1      OPC=nop             
  nop                      #  69    0x148b1a  1      OPC=nop             
  nop                      #  70    0x148b1b  1      OPC=nop             
  nop                      #  71    0x148b1c  1      OPC=nop             
  nop                      #  72    0x148b1d  1      OPC=nop             
  nop                      #  73    0x148b1e  1      OPC=nop             
  nop                      #  74    0x148b1f  1      OPC=nop             
.L_148b20:                 #        0x148b20  0      OPC=<label>         
  popq %rbx                #  75    0x148b20  1      OPC=popq_r64_1      
  popq %r11                #  76    0x148b21  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d  #  77    0x148b23  7      OPC=andl_r32_imm32  
  nop                      #  78    0x148b2a  1      OPC=nop             
  nop                      #  79    0x148b2b  1      OPC=nop             
  nop                      #  80    0x148b2c  1      OPC=nop             
  nop                      #  81    0x148b2d  1      OPC=nop             
  addq %r15, %r11          #  82    0x148b2e  3      OPC=addq_r64_r64    
  jmpq %r11                #  83    0x148b31  3      OPC=jmpq_r64        
  nop                      #  84    0x148b34  1      OPC=nop             
  nop                      #  85    0x148b35  1      OPC=nop             
  nop                      #  86    0x148b36  1      OPC=nop             
  nop                      #  87    0x148b37  1      OPC=nop             
  nop                      #  88    0x148b38  1      OPC=nop             
  nop                      #  89    0x148b39  1      OPC=nop             
  nop                      #  90    0x148b3a  1      OPC=nop             
  nop                      #  91    0x148b3b  1      OPC=nop             
  nop                      #  92    0x148b3c  1      OPC=nop             
  nop                      #  93    0x148b3d  1      OPC=nop             
  nop                      #  94    0x148b3e  1      OPC=nop             
  nop                      #  95    0x148b3f  1      OPC=nop             
  nop                      #  96    0x148b40  1      OPC=nop             
  nop                      #  97    0x148b41  1      OPC=nop             
  nop                      #  98    0x148b42  1      OPC=nop             
  nop                      #  99    0x148b43  1      OPC=nop             
  nop                      #  100   0x148b44  1      OPC=nop             
  nop                      #  101   0x148b45  1      OPC=nop             
  nop                      #  102   0x148b46  1      OPC=nop             
                                                                         
.size iswalnum, .-iswalnum

