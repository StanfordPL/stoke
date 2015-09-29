  .text
  .globl __deregister_frame
  .type __deregister_frame, @function

#! file-offset 0x151980
#! rip-offset  0x111980
#! capacity    128 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__deregister_frame:              #        0x111980  0      OPC=<label>         
  movl %edi, %edi                 #  1     0x111980  2      OPC=movl_r32_r32    
  subl $0x8, %esp                 #  2     0x111982  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                 #  3     0x111985  3      OPC=addq_r64_r64    
  movl %edi, %edi                 #  4     0x111988  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r11d       #  5     0x11198a  4      OPC=movl_r32_m32    
  testl %r11d, %r11d              #  6     0x11198e  3      OPC=testl_r32_r32   
  jne .L_1119c0                   #  7     0x111991  2      OPC=jne_label       
  addl $0x8, %esp                 #  8     0x111993  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  9     0x111996  3      OPC=addq_r64_r64    
  popq %r11                       #  10    0x111999  2      OPC=popq_r64_1      
  nop                             #  11    0x11199b  1      OPC=nop             
  nop                             #  12    0x11199c  1      OPC=nop             
  nop                             #  13    0x11199d  1      OPC=nop             
  nop                             #  14    0x11199e  1      OPC=nop             
  nop                             #  15    0x11199f  1      OPC=nop             
  andl $0xffffffe0, %r11d         #  16    0x1119a0  7      OPC=andl_r32_imm32  
  nop                             #  17    0x1119a7  1      OPC=nop             
  nop                             #  18    0x1119a8  1      OPC=nop             
  nop                             #  19    0x1119a9  1      OPC=nop             
  nop                             #  20    0x1119aa  1      OPC=nop             
  addq %r15, %r11                 #  21    0x1119ab  3      OPC=addq_r64_r64    
  jmpq %r11                       #  22    0x1119ae  3      OPC=jmpq_r64        
  nop                             #  23    0x1119b1  1      OPC=nop             
  nop                             #  24    0x1119b2  1      OPC=nop             
  nop                             #  25    0x1119b3  1      OPC=nop             
  nop                             #  26    0x1119b4  1      OPC=nop             
  nop                             #  27    0x1119b5  1      OPC=nop             
  nop                             #  28    0x1119b6  1      OPC=nop             
  nop                             #  29    0x1119b7  1      OPC=nop             
  nop                             #  30    0x1119b8  1      OPC=nop             
  nop                             #  31    0x1119b9  1      OPC=nop             
  nop                             #  32    0x1119ba  1      OPC=nop             
  nop                             #  33    0x1119bb  1      OPC=nop             
  nop                             #  34    0x1119bc  1      OPC=nop             
  nop                             #  35    0x1119bd  1      OPC=nop             
  nop                             #  36    0x1119be  1      OPC=nop             
  nop                             #  37    0x1119bf  1      OPC=nop             
  nop                             #  38    0x1119c0  1      OPC=nop             
  nop                             #  39    0x1119c1  1      OPC=nop             
  nop                             #  40    0x1119c2  1      OPC=nop             
  nop                             #  41    0x1119c3  1      OPC=nop             
  nop                             #  42    0x1119c4  1      OPC=nop             
  nop                             #  43    0x1119c5  1      OPC=nop             
  nop                             #  44    0x1119c6  1      OPC=nop             
.L_1119c0:                        #        0x1119c7  0      OPC=<label>         
  nop                             #  45    0x1119c7  1      OPC=nop             
  nop                             #  46    0x1119c8  1      OPC=nop             
  nop                             #  47    0x1119c9  1      OPC=nop             
  nop                             #  48    0x1119ca  1      OPC=nop             
  nop                             #  49    0x1119cb  1      OPC=nop             
  nop                             #  50    0x1119cc  1      OPC=nop             
  nop                             #  51    0x1119cd  1      OPC=nop             
  nop                             #  52    0x1119ce  1      OPC=nop             
  nop                             #  53    0x1119cf  1      OPC=nop             
  nop                             #  54    0x1119d0  1      OPC=nop             
  nop                             #  55    0x1119d1  1      OPC=nop             
  nop                             #  56    0x1119d2  1      OPC=nop             
  nop                             #  57    0x1119d3  1      OPC=nop             
  nop                             #  58    0x1119d4  1      OPC=nop             
  nop                             #  59    0x1119d5  1      OPC=nop             
  nop                             #  60    0x1119d6  1      OPC=nop             
  nop                             #  61    0x1119d7  1      OPC=nop             
  nop                             #  62    0x1119d8  1      OPC=nop             
  nop                             #  63    0x1119d9  1      OPC=nop             
  nop                             #  64    0x1119da  1      OPC=nop             
  nop                             #  65    0x1119db  1      OPC=nop             
  nop                             #  66    0x1119dc  1      OPC=nop             
  nop                             #  67    0x1119dd  1      OPC=nop             
  nop                             #  68    0x1119de  1      OPC=nop             
  nop                             #  69    0x1119df  1      OPC=nop             
  nop                             #  70    0x1119e0  1      OPC=nop             
  nop                             #  71    0x1119e1  1      OPC=nop             
  callq .__deregister_frame_info  #  72    0x1119e2  5      OPC=callq_label     
  addl $0x8, %esp                 #  73    0x1119e7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  74    0x1119ea  3      OPC=addq_r64_r64    
  movl %eax, %edi                 #  75    0x1119ed  2      OPC=movl_r32_r32    
  jmpq .free                      #  76    0x1119ef  5      OPC=jmpq_label_1    
  nop                             #  77    0x1119f4  1      OPC=nop             
  nop                             #  78    0x1119f5  1      OPC=nop             
  nop                             #  79    0x1119f6  1      OPC=nop             
  nop                             #  80    0x1119f7  1      OPC=nop             
  nop                             #  81    0x1119f8  1      OPC=nop             
  nop                             #  82    0x1119f9  1      OPC=nop             
  nop                             #  83    0x1119fa  1      OPC=nop             
  nop                             #  84    0x1119fb  1      OPC=nop             
  nop                             #  85    0x1119fc  1      OPC=nop             
  nop                             #  86    0x1119fd  1      OPC=nop             
  nop                             #  87    0x1119fe  1      OPC=nop             
  nop                             #  88    0x1119ff  1      OPC=nop             
  nop                             #  89    0x111a00  1      OPC=nop             
  nop                             #  90    0x111a01  1      OPC=nop             
  nop                             #  91    0x111a02  1      OPC=nop             
  nop                             #  92    0x111a03  1      OPC=nop             
  nop                             #  93    0x111a04  1      OPC=nop             
  nop                             #  94    0x111a05  1      OPC=nop             
  nop                             #  95    0x111a06  1      OPC=nop             
                                                                                
.size __deregister_frame, .-__deregister_frame

