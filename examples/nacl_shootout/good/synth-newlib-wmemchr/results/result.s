  .text
  .globl wmemchr
  .type wmemchr, @function

#! file-offset 0x40
#! rip-offset  0
#! capacity    44 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.wmemchr:                  #        0     0      OPC=<label>        
  xorl %eax, %eax          #  1     0     2      OPC=xorl_r32_r32   
  je .L_10                 #  2     0x2   2      OPC=je_label       
  nop                      #  3     0x4   1      OPC=nop            
  xorl $0x2, %edi          #  4     0x5   3      OPC=xorl_r32_imm8  
  jne .L_10                #  5     0x8   2      OPC=jne_label      
  nop                      #  6     0xa   1      OPC=nop            
  nop                      #  7     0xb   1      OPC=nop            
  nop                      #  8     0xc   1      OPC=nop            
  nop                      #  9     0xd   1      OPC=nop            
  nop                      #  10    0xe   1      OPC=nop            
  nop                      #  11    0xf   1      OPC=nop            
  nop                      #  12    0x10  1      OPC=nop            
  nop                      #  13    0x11  1      OPC=nop            
  nop                      #  14    0x12  1      OPC=nop            
  nop                      #  15    0x13  1      OPC=nop            
  nop                      #  16    0x14  1      OPC=nop            
  nop                      #  17    0x15  1      OPC=nop            
  nop                      #  18    0x16  1      OPC=nop            
  nop                      #  19    0x17  1      OPC=nop            
  nop                      #  20    0x18  1      OPC=nop            
  nop                      #  21    0x19  1      OPC=nop            
  nop                      #  22    0x1a  1      OPC=nop            
  nop                      #  23    0x1b  1      OPC=nop            
  nop                      #  24    0x1c  1      OPC=nop            
  nop                      #  25    0x1d  1      OPC=nop            
  jmpq .wmemchr            #  26    0x1e  2      OPC=jmpq_label     
.L_10:                     #        0x20  0      OPC=<label>        
  leal (%rdi), %r8d        #  27    0x20  3      OPC=leal_r32_m64   
  cmpl %esi, (%r15,%r8,1)  #  28    0x23  4      OPC=cmpl_m32_r32   
  je .L_28                 #  29    0x27  2      OPC=je_label       
.L_14:                     #        0x29  0      OPC=<label>        
  addl $0x4, %edi          #  30    0x29  3      OPC=addl_r32_imm8  
  decw %dx                 #  31    0x2c  3      OPC=decw_r16       
  jne .L_10                #  32    0x2f  2      OPC=jne_label      
  nop                      #  33    0x31  1      OPC=nop            
  nop                      #  34    0x32  1      OPC=nop            
  nop                      #  35    0x33  1      OPC=nop            
  nop                      #  36    0x34  1      OPC=nop            
  nop                      #  37    0x35  1      OPC=nop            
  nop                      #  38    0x36  1      OPC=nop            
  nop                      #  39    0x37  1      OPC=nop            
  nop                      #  40    0x38  1      OPC=nop            
  nop                      #  41    0x39  1      OPC=nop            
  nop                      #  42    0x3a  1      OPC=nop            
  nop                      #  43    0x3b  1      OPC=nop            
  nop                      #  44    0x3c  1      OPC=nop            
  nop                      #  45    0x3d  1      OPC=nop            
  nop                      #  46    0x3e  1      OPC=nop            
  nop                      #  47    0x3f  1      OPC=nop            
.L_21:                     #        0x40  0      OPC=<label>        
  popq %r11                #  48    0x40  2      OPC=popq_r64_1     
  andl $0xe0, %r11d        #  49    0x42  4      OPC=andl_r32_imm8  
  addq %r15, %r11          #  50    0x46  3      OPC=addq_r64_r64   
  jmpq %r11                #  51    0x49  3      OPC=jmpq_r64       
  nop                      #  52    0x4c  1      OPC=nop            
  nop                      #  53    0x4d  1      OPC=nop            
  nop                      #  54    0x4e  1      OPC=nop            
  nop                      #  55    0x4f  1      OPC=nop            
  nop                      #  56    0x50  1      OPC=nop            
  nop                      #  57    0x51  1      OPC=nop            
  nop                      #  58    0x52  1      OPC=nop            
  nop                      #  59    0x53  1      OPC=nop            
  nop                      #  60    0x54  1      OPC=nop            
  nop                      #  61    0x55  1      OPC=nop            
  nop                      #  62    0x56  1      OPC=nop            
  nop                      #  63    0x57  1      OPC=nop            
  nop                      #  64    0x58  1      OPC=nop            
  nop                      #  65    0x59  1      OPC=nop            
  nop                      #  66    0x5a  1      OPC=nop            
  nop                      #  67    0x5b  1      OPC=nop            
  nop                      #  68    0x5c  1      OPC=nop            
  nop                      #  69    0x5d  1      OPC=nop            
  nop                      #  70    0x5e  1      OPC=nop            
  nop                      #  71    0x5f  1      OPC=nop            
.L_28:                     #        0x60  0      OPC=<label>        
  nop                      #  72    0x60  1      OPC=nop            
  nop                      #  73    0x61  1      OPC=nop            
  nop                      #  74    0x62  1      OPC=nop            
  nop                      #  75    0x63  1      OPC=nop            
  movq %rdi, %rax          #  76    0x64  3      OPC=movq_r64_r64   
  nop                      #  77    0x67  1      OPC=nop            
  nop                      #  78    0x68  1      OPC=nop            
  nop                      #  79    0x69  1      OPC=nop            
  nop                      #  80    0x6a  1      OPC=nop            
  nop                      #  81    0x6b  1      OPC=nop            
  nop                      #  82    0x6c  1      OPC=nop            
  nop                      #  83    0x6d  1      OPC=nop            
  nop                      #  84    0x6e  1      OPC=nop            
  nop                      #  85    0x6f  1      OPC=nop            
  nop                      #  86    0x70  1      OPC=nop            
  popq %r11                #  87    0x71  2      OPC=popq_r64_1     
  andl $0xe0, %r11d        #  88    0x73  4      OPC=andl_r32_imm8  
  addq %r15, %r11          #  89    0x77  3      OPC=addq_r64_r64   
  jmpq %r11                #  90    0x7a  3      OPC=jmpq_r64       
                                                                    
.size wmemchr, .-wmemchr
