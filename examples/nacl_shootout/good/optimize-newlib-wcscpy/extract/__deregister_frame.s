  .text
  .globl __deregister_frame
  .type __deregister_frame, @function

#! file-offset 0x150f60
#! rip-offset  0x110f60
#! capacity    128 bytes

# Text                            #  Line  RIP       Bytes  Opcode              
.__deregister_frame:              #        0x110f60  0      OPC=<label>         
  movl %edi, %edi                 #  1     0x110f60  2      OPC=movl_r32_r32    
  subl $0x8, %esp                 #  2     0x110f62  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                 #  3     0x110f65  3      OPC=addq_r64_r64    
  movl %edi, %edi                 #  4     0x110f68  2      OPC=movl_r32_r32    
  movl (%r15,%rdi,1), %r11d       #  5     0x110f6a  4      OPC=movl_r32_m32    
  testl %r11d, %r11d              #  6     0x110f6e  3      OPC=testl_r32_r32   
  jne .L_110fa0                   #  7     0x110f71  2      OPC=jne_label       
  addl $0x8, %esp                 #  8     0x110f73  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  9     0x110f76  3      OPC=addq_r64_r64    
  popq %r11                       #  10    0x110f79  2      OPC=popq_r64_1      
  nop                             #  11    0x110f7b  1      OPC=nop             
  nop                             #  12    0x110f7c  1      OPC=nop             
  nop                             #  13    0x110f7d  1      OPC=nop             
  nop                             #  14    0x110f7e  1      OPC=nop             
  nop                             #  15    0x110f7f  1      OPC=nop             
  andl $0xffffffe0, %r11d         #  16    0x110f80  7      OPC=andl_r32_imm32  
  nop                             #  17    0x110f87  1      OPC=nop             
  nop                             #  18    0x110f88  1      OPC=nop             
  nop                             #  19    0x110f89  1      OPC=nop             
  nop                             #  20    0x110f8a  1      OPC=nop             
  addq %r15, %r11                 #  21    0x110f8b  3      OPC=addq_r64_r64    
  jmpq %r11                       #  22    0x110f8e  3      OPC=jmpq_r64        
  nop                             #  23    0x110f91  1      OPC=nop             
  nop                             #  24    0x110f92  1      OPC=nop             
  nop                             #  25    0x110f93  1      OPC=nop             
  nop                             #  26    0x110f94  1      OPC=nop             
  nop                             #  27    0x110f95  1      OPC=nop             
  nop                             #  28    0x110f96  1      OPC=nop             
  nop                             #  29    0x110f97  1      OPC=nop             
  nop                             #  30    0x110f98  1      OPC=nop             
  nop                             #  31    0x110f99  1      OPC=nop             
  nop                             #  32    0x110f9a  1      OPC=nop             
  nop                             #  33    0x110f9b  1      OPC=nop             
  nop                             #  34    0x110f9c  1      OPC=nop             
  nop                             #  35    0x110f9d  1      OPC=nop             
  nop                             #  36    0x110f9e  1      OPC=nop             
  nop                             #  37    0x110f9f  1      OPC=nop             
  nop                             #  38    0x110fa0  1      OPC=nop             
  nop                             #  39    0x110fa1  1      OPC=nop             
  nop                             #  40    0x110fa2  1      OPC=nop             
  nop                             #  41    0x110fa3  1      OPC=nop             
  nop                             #  42    0x110fa4  1      OPC=nop             
  nop                             #  43    0x110fa5  1      OPC=nop             
  nop                             #  44    0x110fa6  1      OPC=nop             
.L_110fa0:                        #        0x110fa7  0      OPC=<label>         
  nop                             #  45    0x110fa7  1      OPC=nop             
  nop                             #  46    0x110fa8  1      OPC=nop             
  nop                             #  47    0x110fa9  1      OPC=nop             
  nop                             #  48    0x110faa  1      OPC=nop             
  nop                             #  49    0x110fab  1      OPC=nop             
  nop                             #  50    0x110fac  1      OPC=nop             
  nop                             #  51    0x110fad  1      OPC=nop             
  nop                             #  52    0x110fae  1      OPC=nop             
  nop                             #  53    0x110faf  1      OPC=nop             
  nop                             #  54    0x110fb0  1      OPC=nop             
  nop                             #  55    0x110fb1  1      OPC=nop             
  nop                             #  56    0x110fb2  1      OPC=nop             
  nop                             #  57    0x110fb3  1      OPC=nop             
  nop                             #  58    0x110fb4  1      OPC=nop             
  nop                             #  59    0x110fb5  1      OPC=nop             
  nop                             #  60    0x110fb6  1      OPC=nop             
  nop                             #  61    0x110fb7  1      OPC=nop             
  nop                             #  62    0x110fb8  1      OPC=nop             
  nop                             #  63    0x110fb9  1      OPC=nop             
  nop                             #  64    0x110fba  1      OPC=nop             
  nop                             #  65    0x110fbb  1      OPC=nop             
  nop                             #  66    0x110fbc  1      OPC=nop             
  nop                             #  67    0x110fbd  1      OPC=nop             
  nop                             #  68    0x110fbe  1      OPC=nop             
  nop                             #  69    0x110fbf  1      OPC=nop             
  nop                             #  70    0x110fc0  1      OPC=nop             
  nop                             #  71    0x110fc1  1      OPC=nop             
  callq .__deregister_frame_info  #  72    0x110fc2  5      OPC=callq_label     
  addl $0x8, %esp                 #  73    0x110fc7  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                 #  74    0x110fca  3      OPC=addq_r64_r64    
  movl %eax, %edi                 #  75    0x110fcd  2      OPC=movl_r32_r32    
  jmpq .free                      #  76    0x110fcf  5      OPC=jmpq_label_1    
  nop                             #  77    0x110fd4  1      OPC=nop             
  nop                             #  78    0x110fd5  1      OPC=nop             
  nop                             #  79    0x110fd6  1      OPC=nop             
  nop                             #  80    0x110fd7  1      OPC=nop             
  nop                             #  81    0x110fd8  1      OPC=nop             
  nop                             #  82    0x110fd9  1      OPC=nop             
  nop                             #  83    0x110fda  1      OPC=nop             
  nop                             #  84    0x110fdb  1      OPC=nop             
  nop                             #  85    0x110fdc  1      OPC=nop             
  nop                             #  86    0x110fdd  1      OPC=nop             
  nop                             #  87    0x110fde  1      OPC=nop             
  nop                             #  88    0x110fdf  1      OPC=nop             
  nop                             #  89    0x110fe0  1      OPC=nop             
  nop                             #  90    0x110fe1  1      OPC=nop             
  nop                             #  91    0x110fe2  1      OPC=nop             
  nop                             #  92    0x110fe3  1      OPC=nop             
  nop                             #  93    0x110fe4  1      OPC=nop             
  nop                             #  94    0x110fe5  1      OPC=nop             
  nop                             #  95    0x110fe6  1      OPC=nop             
                                                                                
.size __deregister_frame, .-__deregister_frame

