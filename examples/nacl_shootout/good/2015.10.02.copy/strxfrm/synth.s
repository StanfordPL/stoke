  .text
  .globl strxfrm
  .type strxfrm, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    79 bytes

# Text                            #  Line  RIP   Bytes  Opcode              
.strxfrm:                         #        0     0      OPC=<label>         
  xorl %eax, %eax                 #  1     0     2      OPC=xorl_r32_r32    
  leal 0x1(%rsi), %ecx            #  2     0x2   3      OPC=leal_r32_m16    
  andl %edx, %edx                 #  3     0x5   2      OPC=andl_r32_r32_1  
  je .L_38                        #  4     0x7   6      OPC=je_label_1      
  subl %eax, %esi                 #  5     0xd   2      OPC=subl_r32_r32_1  
  movzbl (%r15,%rsi,1), %eax      #  6     0xf   5      OPC=movzbl_r32_m8   
  addq %rdx, %rsi                 #  7     0x14  3      OPC=addq_r64_r64    
  leal (%rdi), %r8d               #  8     0x17  3      OPC=leal_r32_m64    
  movb %al, (%r15,%r8,1)          #  9     0x1a  4      OPC=movb_m8_r8      
  testb %al, %al                  #  10    0x1e  2      OPC=testb_r8_r8     
  nop                             #  11    0x20  1      OPC=nop             
  je .L_4c                        #  12    0x21  6      OPC=je_label_1      
  subq %rax, %rax                 #  13    0x27  3      OPC=subq_r64_r64_1  
  nop                             #  14    0x2a  1      OPC=nop             
  nop                             #  15    0x2b  1      OPC=nop             
  nop                             #  16    0x2c  1      OPC=nop             
  nop                             #  17    0x2d  1      OPC=nop             
  nop                             #  18    0x2e  1      OPC=nop             
  nop                             #  19    0x2f  1      OPC=nop             
  nop                             #  20    0x30  1      OPC=nop             
  nop                             #  21    0x31  1      OPC=nop             
  nop                             #  22    0x32  1      OPC=nop             
  nop                             #  23    0x33  1      OPC=nop             
  subw %ax, %si                   #  24    0x34  3      OPC=subw_r16_r16_1  
  nop                             #  25    0x37  1      OPC=nop             
  nop                             #  26    0x38  1      OPC=nop             
  nop                             #  27    0x39  1      OPC=nop             
  nop                             #  28    0x3a  1      OPC=nop             
  jmpq .L_2f                      #  29    0x3b  5      OPC=jmpq_label_1    
.L_20:                            #        0x40  0      OPC=<label>         
  nop                             #  30    0x40  1      OPC=nop             
  nop                             #  31    0x41  1      OPC=nop             
  nop                             #  32    0x42  1      OPC=nop             
  nop                             #  33    0x43  1      OPC=nop             
  nop                             #  34    0x44  1      OPC=nop             
  nop                             #  35    0x45  1      OPC=nop             
  nop                             #  36    0x46  1      OPC=nop             
  addl $0x1, %ecx                 #  37    0x47  3      OPC=addl_r32_imm8   
  movzbq -0x1(%r15,%rcx,1), %rdx  #  38    0x4a  6      OPC=movzbq_r64_m8   
  leal (%rdi,%rax,1), %r8d        #  39    0x50  4      OPC=leal_r32_m32    
  movb %dl, (%r15,%r8,1)          #  40    0x54  4      OPC=movb_m8_r8      
  testb %dl, %dl                  #  41    0x58  2      OPC=testb_r8_r8     
  je .L_4a                        #  42    0x5a  6      OPC=je_label_1      
.L_2f:                            #        0x60  0      OPC=<label>         
  addl $0x1, %eax                 #  43    0x60  6      OPC=addl_r32_imm32  
  cmpq %rsi, %rcx                 #  44    0x66  3      OPC=cmpq_r64_r64    
  jne .L_20                       #  45    0x69  6      OPC=jne_label_1     
  nopl %eax                       #  46    0x6f  3      OPC=nopl_r32        
  nop                             #  47    0x72  1      OPC=nop             
  nop                             #  48    0x73  1      OPC=nop             
  nop                             #  49    0x74  1      OPC=nop             
  nop                             #  50    0x75  1      OPC=nop             
  nop                             #  51    0x76  1      OPC=nop             
  nop                             #  52    0x77  1      OPC=nop             
  nop                             #  53    0x78  1      OPC=nop             
  nop                             #  54    0x79  1      OPC=nop             
  nop                             #  55    0x7a  1      OPC=nop             
  nop                             #  56    0x7b  1      OPC=nop             
  nop                             #  57    0x7c  1      OPC=nop             
  nop                             #  58    0x7d  1      OPC=nop             
  nop                             #  59    0x7e  1      OPC=nop             
  nop                             #  60    0x7f  1      OPC=nop             
.L_38:                            #        0x80  0      OPC=<label>         
  nop                             #  61    0x80  1      OPC=nop             
  nop                             #  62    0x81  1      OPC=nop             
  nop                             #  63    0x82  1      OPC=nop             
  nop                             #  64    0x83  1      OPC=nop             
  nop                             #  65    0x84  1      OPC=nop             
  leal (%rsi), %r8d               #  66    0x85  3      OPC=leal_r32_m16    
  cmpb $0x0, (%r15,%r8,1)         #  67    0x88  5      OPC=cmpb_m8_imm8    
  nop                             #  68    0x8d  1      OPC=nop             
  nop                             #  69    0x8e  1      OPC=nop             
  nop                             #  70    0x8f  1      OPC=nop             
  nop                             #  71    0x90  1      OPC=nop             
  nop                             #  72    0x91  1      OPC=nop             
  nop                             #  73    0x92  1      OPC=nop             
  nop                             #  74    0x93  1      OPC=nop             
  nop                             #  75    0x94  1      OPC=nop             
  nop                             #  76    0x95  1      OPC=nop             
  nop                             #  77    0x96  1      OPC=nop             
  nop                             #  78    0x97  1      OPC=nop             
  nop                             #  79    0x98  1      OPC=nop             
  nop                             #  80    0x99  1      OPC=nop             
  je .L_4a                        #  81    0x9a  6      OPC=je_label_1      
.L_40:                            #        0xa0  0      OPC=<label>         
  addl $0x1, %eax                 #  82    0xa0  3      OPC=addl_r32_imm8   
  incl %r8d                       #  83    0xa3  3      OPC=incl_r32        
  cmpb $0x0, (%r15,%r8,1)         #  84    0xa6  5      OPC=cmpb_m8_imm8    
  jne .L_40                       #  85    0xab  6      OPC=jne_label_1     
  nop                             #  86    0xb1  1      OPC=nop             
  nop                             #  87    0xb2  1      OPC=nop             
  nop                             #  88    0xb3  1      OPC=nop             
  nop                             #  89    0xb4  1      OPC=nop             
  nop                             #  90    0xb5  1      OPC=nop             
  nop                             #  91    0xb6  1      OPC=nop             
  nop                             #  92    0xb7  1      OPC=nop             
  nop                             #  93    0xb8  1      OPC=nop             
  nop                             #  94    0xb9  1      OPC=nop             
  nop                             #  95    0xba  1      OPC=nop             
  nop                             #  96    0xbb  1      OPC=nop             
  nop                             #  97    0xbc  1      OPC=nop             
  nop                             #  98    0xbd  1      OPC=nop             
  nop                             #  99    0xbe  1      OPC=nop             
  nop                             #  100   0xbf  1      OPC=nop             
.L_4a:                            #        0xc0  0      OPC=<label>         
  nop                             #  101   0xc0  1      OPC=nop             
  nop                             #  102   0xc1  1      OPC=nop             
  nop                             #  103   0xc2  1      OPC=nop             
  nop                             #  104   0xc3  1      OPC=nop             
  nop                             #  105   0xc4  1      OPC=nop             
  nop                             #  106   0xc5  1      OPC=nop             
  retq
  nop                             #  111   0xd2  1      OPC=nop             
  nop                             #  112   0xd3  1      OPC=nop             
  nop                             #  113   0xd4  1      OPC=nop             
  nop                             #  114   0xd5  1      OPC=nop             
  nopl %eax                       #  115   0xd6  3      OPC=nopl_r32        
  nop                             #  116   0xd9  1      OPC=nop             
  nop                             #  117   0xda  1      OPC=nop             
  nop                             #  118   0xdb  1      OPC=nop             
  nop                             #  119   0xdc  1      OPC=nop             
  nop                             #  120   0xdd  1      OPC=nop             
  nop                             #  121   0xde  1      OPC=nop             
  nop                             #  122   0xdf  1      OPC=nop             
.L_4c:                            #        0xe0  0      OPC=<label>         
  nop                             #  123   0xe0  1      OPC=nop             
  nop                             #  124   0xe1  1      OPC=nop             
  nop                             #  125   0xe2  1      OPC=nop             
  nop                             #  126   0xe3  1      OPC=nop             
  nop                             #  127   0xe4  1      OPC=nop             
  nop                             #  128   0xe5  1      OPC=nop             
  nop                             #  129   0xe6  1      OPC=nop             
  nop                             #  130   0xe7  1      OPC=nop             
  nop                             #  131   0xe8  1      OPC=nop             
  nop                             #  132   0xe9  1      OPC=nop             
  nop                             #  133   0xea  1      OPC=nop             
  nop                             #  134   0xeb  1      OPC=nop             
  nop                             #  135   0xec  1      OPC=nop             
  nop                             #  136   0xed  1      OPC=nop             
  nop                             #  137   0xee  1      OPC=nop             
  nop                             #  138   0xef  1      OPC=nop             
  nop                             #  139   0xf0  1      OPC=nop             
  nop                             #  140   0xf1  1      OPC=nop             
  nop                             #  141   0xf2  1      OPC=nop             
  retq
                                                                            
.size strxfrm, .-strxfrm
