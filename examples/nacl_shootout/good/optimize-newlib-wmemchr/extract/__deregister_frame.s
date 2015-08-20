  .text
  .globl __deregister_frame
  .type __deregister_frame, @function

#! file-offset 0x151260
#! rip-offset  0x111260
#! capacity    128 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__deregister_frame:              #        0x111260  0      OPC=<label>         
  movl %edi, %edi                 #  1     0x111260  2      OPC=movl_r32_r32    
  subl $0x8, %esp                 #  2     0x111262  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                 #  3     0x111265  3      OPC=addq_r64_r64    
  movl %edi, %edi                 #  4     0x111268  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r11d       #  5     0x11126a  4      OPC=movl_r32_m32    
  testl %r11d, %r11d              #  6     0x11126e  3      OPC=testl_r32_r32   
  jne .L_1112a0                   #  7     0x111271  2      OPC=jne_label       
  addl $0x8, %esp                 #  8     0x111273  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  9     0x111276  3      OPC=addq_r64_r64    
  popq %r11                       #  10    0x111279  2      OPC=popq_r64_1      
  nop                             #  11    0x11127b  1      OPC=nop             
  nop                             #  12    0x11127c  1      OPC=nop             
  nop                             #  13    0x11127d  1      OPC=nop             
  nop                             #  14    0x11127e  1      OPC=nop             
  nop                             #  15    0x11127f  1      OPC=nop             
  andl $0xffffffe0, %r11d         #  16    0x111280  7      OPC=andl_r32_imm32  
  nop                             #  17    0x111287  1      OPC=nop             
  nop                             #  18    0x111288  1      OPC=nop             
  nop                             #  19    0x111289  1      OPC=nop             
  nop                             #  20    0x11128a  1      OPC=nop             
  addq %r15, %r11                 #  21    0x11128b  3      OPC=addq_r64_r64    
  jmpq %r11                       #  22    0x11128e  3      OPC=jmpq_r64        
  nop                             #  23    0x111291  1      OPC=nop             
  nop                             #  24    0x111292  1      OPC=nop             
  nop                             #  25    0x111293  1      OPC=nop             
  nop                             #  26    0x111294  1      OPC=nop             
  nop                             #  27    0x111295  1      OPC=nop             
  nop                             #  28    0x111296  1      OPC=nop             
  nop                             #  29    0x111297  1      OPC=nop             
  nop                             #  30    0x111298  1      OPC=nop             
  nop                             #  31    0x111299  1      OPC=nop             
  nop                             #  32    0x11129a  1      OPC=nop             
  nop                             #  33    0x11129b  1      OPC=nop             
  nop                             #  34    0x11129c  1      OPC=nop             
  nop                             #  35    0x11129d  1      OPC=nop             
  nop                             #  36    0x11129e  1      OPC=nop             
  nop                             #  37    0x11129f  1      OPC=nop             
  nop                             #  38    0x1112a0  1      OPC=nop             
  nop                             #  39    0x1112a1  1      OPC=nop             
  nop                             #  40    0x1112a2  1      OPC=nop             
  nop                             #  41    0x1112a3  1      OPC=nop             
  nop                             #  42    0x1112a4  1      OPC=nop             
  nop                             #  43    0x1112a5  1      OPC=nop             
  nop                             #  44    0x1112a6  1      OPC=nop             
.L_1112a0:                        #        0x1112a7  0      OPC=<label>         
  nop                             #  45    0x1112a7  1      OPC=nop             
  nop                             #  46    0x1112a8  1      OPC=nop             
  nop                             #  47    0x1112a9  1      OPC=nop             
  nop                             #  48    0x1112aa  1      OPC=nop             
  nop                             #  49    0x1112ab  1      OPC=nop             
  nop                             #  50    0x1112ac  1      OPC=nop             
  nop                             #  51    0x1112ad  1      OPC=nop             
  nop                             #  52    0x1112ae  1      OPC=nop             
  nop                             #  53    0x1112af  1      OPC=nop             
  nop                             #  54    0x1112b0  1      OPC=nop             
  nop                             #  55    0x1112b1  1      OPC=nop             
  nop                             #  56    0x1112b2  1      OPC=nop             
  nop                             #  57    0x1112b3  1      OPC=nop             
  nop                             #  58    0x1112b4  1      OPC=nop             
  nop                             #  59    0x1112b5  1      OPC=nop             
  nop                             #  60    0x1112b6  1      OPC=nop             
  nop                             #  61    0x1112b7  1      OPC=nop             
  nop                             #  62    0x1112b8  1      OPC=nop             
  nop                             #  63    0x1112b9  1      OPC=nop             
  nop                             #  64    0x1112ba  1      OPC=nop             
  nop                             #  65    0x1112bb  1      OPC=nop             
  nop                             #  66    0x1112bc  1      OPC=nop             
  nop                             #  67    0x1112bd  1      OPC=nop             
  nop                             #  68    0x1112be  1      OPC=nop             
  nop                             #  69    0x1112bf  1      OPC=nop             
  nop                             #  70    0x1112c0  1      OPC=nop             
  nop                             #  71    0x1112c1  1      OPC=nop             
  callq .__deregister_frame_info  #  72    0x1112c2  5      OPC=callq_label     
  addl $0x8, %esp                 #  73    0x1112c7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  74    0x1112ca  3      OPC=addq_r64_r64    
  movl %eax, %edi                 #  75    0x1112cd  2      OPC=movl_r32_r32    
  jmpq .free                      #  76    0x1112cf  5      OPC=jmpq_label_1    
  nop                             #  77    0x1112d4  1      OPC=nop             
  nop                             #  78    0x1112d5  1      OPC=nop             
  nop                             #  79    0x1112d6  1      OPC=nop             
  nop                             #  80    0x1112d7  1      OPC=nop             
  nop                             #  81    0x1112d8  1      OPC=nop             
  nop                             #  82    0x1112d9  1      OPC=nop             
  nop                             #  83    0x1112da  1      OPC=nop             
  nop                             #  84    0x1112db  1      OPC=nop             
  nop                             #  85    0x1112dc  1      OPC=nop             
  nop                             #  86    0x1112dd  1      OPC=nop             
  nop                             #  87    0x1112de  1      OPC=nop             
  nop                             #  88    0x1112df  1      OPC=nop             
  nop                             #  89    0x1112e0  1      OPC=nop             
  nop                             #  90    0x1112e1  1      OPC=nop             
  nop                             #  91    0x1112e2  1      OPC=nop             
  nop                             #  92    0x1112e3  1      OPC=nop             
  nop                             #  93    0x1112e4  1      OPC=nop             
  nop                             #  94    0x1112e5  1      OPC=nop             
  nop                             #  95    0x1112e6  1      OPC=nop             
                                                                                
.size __deregister_frame, .-__deregister_frame

