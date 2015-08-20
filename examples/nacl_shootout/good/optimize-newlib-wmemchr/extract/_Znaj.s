  .text
  .globl _Znaj
  .type _Znaj, @function

#! file-offset 0x121020
#! rip-offset  0xe1020
#! capacity    128 bytes

# Text                          #  Line  RIP      Bytes  Opcode              
._Znaj:                         #        0xe1020  0      OPC=<label>         
  subl $0x8, %esp               #  1     0xe1020  3      OPC=subl_r32_imm8   
  addq %r15, %rsp               #  2     0xe1023  3      OPC=addq_r64_r64    
  nop                           #  3     0xe1026  1      OPC=nop             
  nop                           #  4     0xe1027  1      OPC=nop             
  nop                           #  5     0xe1028  1      OPC=nop             
  nop                           #  6     0xe1029  1      OPC=nop             
  nop                           #  7     0xe102a  1      OPC=nop             
  nop                           #  8     0xe102b  1      OPC=nop             
  nop                           #  9     0xe102c  1      OPC=nop             
  nop                           #  10    0xe102d  1      OPC=nop             
  nop                           #  11    0xe102e  1      OPC=nop             
  nop                           #  12    0xe102f  1      OPC=nop             
  nop                           #  13    0xe1030  1      OPC=nop             
  nop                           #  14    0xe1031  1      OPC=nop             
  nop                           #  15    0xe1032  1      OPC=nop             
  nop                           #  16    0xe1033  1      OPC=nop             
  nop                           #  17    0xe1034  1      OPC=nop             
  nop                           #  18    0xe1035  1      OPC=nop             
  nop                           #  19    0xe1036  1      OPC=nop             
  nop                           #  20    0xe1037  1      OPC=nop             
  nop                           #  21    0xe1038  1      OPC=nop             
  nop                           #  22    0xe1039  1      OPC=nop             
  nop                           #  23    0xe103a  1      OPC=nop             
  callq ._Znwj                  #  24    0xe103b  5      OPC=callq_label     
  addl $0x8, %esp               #  25    0xe1040  3      OPC=addl_r32_imm8   
  addq %r15, %rsp               #  26    0xe1043  3      OPC=addq_r64_r64    
  movl %eax, %eax               #  27    0xe1046  2      OPC=movl_r32_r32    
  popq %r11                     #  28    0xe1048  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d       #  29    0xe104a  7      OPC=andl_r32_imm32  
  nop                           #  30    0xe1051  1      OPC=nop             
  nop                           #  31    0xe1052  1      OPC=nop             
  nop                           #  32    0xe1053  1      OPC=nop             
  nop                           #  33    0xe1054  1      OPC=nop             
  addq %r15, %r11               #  34    0xe1055  3      OPC=addq_r64_r64    
  jmpq %r11                     #  35    0xe1058  3      OPC=jmpq_r64        
  nop                           #  36    0xe105b  1      OPC=nop             
  nop                           #  37    0xe105c  1      OPC=nop             
  nop                           #  38    0xe105d  1      OPC=nop             
  nop                           #  39    0xe105e  1      OPC=nop             
  nop                           #  40    0xe105f  1      OPC=nop             
  nop                           #  41    0xe1060  1      OPC=nop             
  nop                           #  42    0xe1061  1      OPC=nop             
  nop                           #  43    0xe1062  1      OPC=nop             
  nop                           #  44    0xe1063  1      OPC=nop             
  nop                           #  45    0xe1064  1      OPC=nop             
  nop                           #  46    0xe1065  1      OPC=nop             
  nop                           #  47    0xe1066  1      OPC=nop             
  cmpq $0xff, %rdx              #  48    0xe1067  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi               #  49    0xe106b  2      OPC=movl_r32_r32    
  je .L_e1080                   #  50    0xe106d  2      OPC=je_label        
  nop                           #  51    0xe106f  1      OPC=nop             
  nop                           #  52    0xe1070  1      OPC=nop             
  nop                           #  53    0xe1071  1      OPC=nop             
  nop                           #  54    0xe1072  1      OPC=nop             
  nop                           #  55    0xe1073  1      OPC=nop             
  nop                           #  56    0xe1074  1      OPC=nop             
  nop                           #  57    0xe1075  1      OPC=nop             
  nop                           #  58    0xe1076  1      OPC=nop             
  nop                           #  59    0xe1077  1      OPC=nop             
  nop                           #  60    0xe1078  1      OPC=nop             
  nop                           #  61    0xe1079  1      OPC=nop             
  nop                           #  62    0xe107a  1      OPC=nop             
  nop                           #  63    0xe107b  1      OPC=nop             
  nop                           #  64    0xe107c  1      OPC=nop             
  nop                           #  65    0xe107d  1      OPC=nop             
  nop                           #  66    0xe107e  1      OPC=nop             
  nop                           #  67    0xe107f  1      OPC=nop             
  nop                           #  68    0xe1080  1      OPC=nop             
  nop                           #  69    0xe1081  1      OPC=nop             
  callq ._Unwind_Resume         #  70    0xe1082  5      OPC=callq_label     
.L_e1080:                       #        0xe1087  0      OPC=<label>         
  nop                           #  71    0xe1087  1      OPC=nop             
  nop                           #  72    0xe1088  1      OPC=nop             
  nop                           #  73    0xe1089  1      OPC=nop             
  nop                           #  74    0xe108a  1      OPC=nop             
  nop                           #  75    0xe108b  1      OPC=nop             
  nop                           #  76    0xe108c  1      OPC=nop             
  nop                           #  77    0xe108d  1      OPC=nop             
  nop                           #  78    0xe108e  1      OPC=nop             
  nop                           #  79    0xe108f  1      OPC=nop             
  nop                           #  80    0xe1090  1      OPC=nop             
  nop                           #  81    0xe1091  1      OPC=nop             
  nop                           #  82    0xe1092  1      OPC=nop             
  nop                           #  83    0xe1093  1      OPC=nop             
  nop                           #  84    0xe1094  1      OPC=nop             
  nop                           #  85    0xe1095  1      OPC=nop             
  nop                           #  86    0xe1096  1      OPC=nop             
  nop                           #  87    0xe1097  1      OPC=nop             
  nop                           #  88    0xe1098  1      OPC=nop             
  nop                           #  89    0xe1099  1      OPC=nop             
  nop                           #  90    0xe109a  1      OPC=nop             
  nop                           #  91    0xe109b  1      OPC=nop             
  nop                           #  92    0xe109c  1      OPC=nop             
  nop                           #  93    0xe109d  1      OPC=nop             
  nop                           #  94    0xe109e  1      OPC=nop             
  nop                           #  95    0xe109f  1      OPC=nop             
  nop                           #  96    0xe10a0  1      OPC=nop             
  nop                           #  97    0xe10a1  1      OPC=nop             
  callq .__cxa_call_unexpected  #  98    0xe10a2  5      OPC=callq_label     
                                                                             
.size _Znaj, .-_Znaj

