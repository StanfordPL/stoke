  .text
  .globl _ZN17__eh_globals_initD1Ev
  .type _ZN17__eh_globals_initD1Ev, @function

#! file-offset 0x1210c0
#! rip-offset  0xe10c0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZN17__eh_globals_initD1Ev:   #        0xe10c0  0      OPC=<label>         
  pushq %rbx                   #  1     0xe10c0  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0xe10c1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  3     0xe10c3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x4(%r15,%rbx,1)  #  4     0xe10c5  6      OPC=cmpb_m8_imm8    
  jne .L_e1100                 #  5     0xe10cb  2      OPC=jne_label       
  movl %ebx, %ebx              #  6     0xe10cd  2      OPC=movl_r32_r32    
  movb $0x0, 0x4(%r15,%rbx,1)  #  7     0xe10cf  6      OPC=movb_m8_imm8    
  popq %rbx                    #  8     0xe10d5  1      OPC=popq_r64_1      
  popq %r11                    #  9     0xe10d6  2      OPC=popq_r64_1      
  nop                          #  10    0xe10d8  1      OPC=nop             
  nop                          #  11    0xe10d9  1      OPC=nop             
  nop                          #  12    0xe10da  1      OPC=nop             
  nop                          #  13    0xe10db  1      OPC=nop             
  nop                          #  14    0xe10dc  1      OPC=nop             
  nop                          #  15    0xe10dd  1      OPC=nop             
  nop                          #  16    0xe10de  1      OPC=nop             
  nop                          #  17    0xe10df  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  18    0xe10e0  7      OPC=andl_r32_imm32  
  nop                          #  19    0xe10e7  1      OPC=nop             
  nop                          #  20    0xe10e8  1      OPC=nop             
  nop                          #  21    0xe10e9  1      OPC=nop             
  nop                          #  22    0xe10ea  1      OPC=nop             
  addq %r15, %r11              #  23    0xe10eb  3      OPC=addq_r64_r64    
  jmpq %r11                    #  24    0xe10ee  3      OPC=jmpq_r64        
  nop                          #  25    0xe10f1  1      OPC=nop             
  nop                          #  26    0xe10f2  1      OPC=nop             
  nop                          #  27    0xe10f3  1      OPC=nop             
  nop                          #  28    0xe10f4  1      OPC=nop             
  nop                          #  29    0xe10f5  1      OPC=nop             
  nop                          #  30    0xe10f6  1      OPC=nop             
  nop                          #  31    0xe10f7  1      OPC=nop             
  nop                          #  32    0xe10f8  1      OPC=nop             
  nop                          #  33    0xe10f9  1      OPC=nop             
  nop                          #  34    0xe10fa  1      OPC=nop             
  nop                          #  35    0xe10fb  1      OPC=nop             
  nop                          #  36    0xe10fc  1      OPC=nop             
  nop                          #  37    0xe10fd  1      OPC=nop             
  nop                          #  38    0xe10fe  1      OPC=nop             
  nop                          #  39    0xe10ff  1      OPC=nop             
  nop                          #  40    0xe1100  1      OPC=nop             
  nop                          #  41    0xe1101  1      OPC=nop             
  nop                          #  42    0xe1102  1      OPC=nop             
  nop                          #  43    0xe1103  1      OPC=nop             
  nop                          #  44    0xe1104  1      OPC=nop             
  nop                          #  45    0xe1105  1      OPC=nop             
  nop                          #  46    0xe1106  1      OPC=nop             
.L_e1100:                      #        0xe1107  0      OPC=<label>         
  movl %ebx, %ebx              #  47    0xe1107  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi     #  48    0xe1109  4      OPC=movl_r32_m32    
  nop                          #  49    0xe110d  1      OPC=nop             
  nop                          #  50    0xe110e  1      OPC=nop             
  nop                          #  51    0xe110f  1      OPC=nop             
  nop                          #  52    0xe1110  1      OPC=nop             
  nop                          #  53    0xe1111  1      OPC=nop             
  nop                          #  54    0xe1112  1      OPC=nop             
  nop                          #  55    0xe1113  1      OPC=nop             
  nop                          #  56    0xe1114  1      OPC=nop             
  nop                          #  57    0xe1115  1      OPC=nop             
  nop                          #  58    0xe1116  1      OPC=nop             
  nop                          #  59    0xe1117  1      OPC=nop             
  nop                          #  60    0xe1118  1      OPC=nop             
  nop                          #  61    0xe1119  1      OPC=nop             
  nop                          #  62    0xe111a  1      OPC=nop             
  nop                          #  63    0xe111b  1      OPC=nop             
  nop                          #  64    0xe111c  1      OPC=nop             
  nop                          #  65    0xe111d  1      OPC=nop             
  nop                          #  66    0xe111e  1      OPC=nop             
  nop                          #  67    0xe111f  1      OPC=nop             
  nop                          #  68    0xe1120  1      OPC=nop             
  nop                          #  69    0xe1121  1      OPC=nop             
  callq .pthread_key_delete    #  70    0xe1122  5      OPC=callq_label     
  movl %ebx, %ebx              #  71    0xe1127  2      OPC=movl_r32_r32    
  movb $0x0, 0x4(%r15,%rbx,1)  #  72    0xe1129  6      OPC=movb_m8_imm8    
  popq %rbx                    #  73    0xe112f  1      OPC=popq_r64_1      
  popq %r11                    #  74    0xe1130  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  75    0xe1132  7      OPC=andl_r32_imm32  
  nop                          #  76    0xe1139  1      OPC=nop             
  nop                          #  77    0xe113a  1      OPC=nop             
  nop                          #  78    0xe113b  1      OPC=nop             
  nop                          #  79    0xe113c  1      OPC=nop             
  addq %r15, %r11              #  80    0xe113d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  81    0xe1140  3      OPC=jmpq_r64        
  nop                          #  82    0xe1143  1      OPC=nop             
  nop                          #  83    0xe1144  1      OPC=nop             
  nop                          #  84    0xe1145  1      OPC=nop             
  nop                          #  85    0xe1146  1      OPC=nop             
  nop                          #  86    0xe1147  1      OPC=nop             
  nop                          #  87    0xe1148  1      OPC=nop             
  nop                          #  88    0xe1149  1      OPC=nop             
  nop                          #  89    0xe114a  1      OPC=nop             
  nop                          #  90    0xe114b  1      OPC=nop             
  nop                          #  91    0xe114c  1      OPC=nop             
  nop                          #  92    0xe114d  1      OPC=nop             
                                                                            
.size _ZN17__eh_globals_initD1Ev, .-_ZN17__eh_globals_initD1Ev

