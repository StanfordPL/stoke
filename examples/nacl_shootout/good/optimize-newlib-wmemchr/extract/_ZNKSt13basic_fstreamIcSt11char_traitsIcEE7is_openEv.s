  .text
  .globl _ZNKSt13basic_fstreamIcSt11char_traitsIcEE7is_openEv
  .type _ZNKSt13basic_fstreamIcSt11char_traitsIcEE7is_openEv, @function

#! file-offset 0x12cac0
#! rip-offset  0xecac0
#! capacity    128 bytes

# Text                                                  #  Line  RIP      Bytes  Opcode              
._ZNKSt13basic_fstreamIcSt11char_traitsIcEE7is_openEv:  #        0xecac0  0      OPC=<label>         
  subl $0x8, %esp                                       #  1     0xecac0  3      OPC=subl_r32_imm8   
  addq %r15, %rsp                                       #  2     0xecac3  3      OPC=addq_r64_r64    
  addl $0x40, %edi                                      #  3     0xecac6  3      OPC=addl_r32_imm8   
  nop                                                   #  4     0xecac9  1      OPC=nop             
  nop                                                   #  5     0xecaca  1      OPC=nop             
  nop                                                   #  6     0xecacb  1      OPC=nop             
  nop                                                   #  7     0xecacc  1      OPC=nop             
  nop                                                   #  8     0xecacd  1      OPC=nop             
  nop                                                   #  9     0xecace  1      OPC=nop             
  nop                                                   #  10    0xecacf  1      OPC=nop             
  nop                                                   #  11    0xecad0  1      OPC=nop             
  nop                                                   #  12    0xecad1  1      OPC=nop             
  nop                                                   #  13    0xecad2  1      OPC=nop             
  nop                                                   #  14    0xecad3  1      OPC=nop             
  nop                                                   #  15    0xecad4  1      OPC=nop             
  nop                                                   #  16    0xecad5  1      OPC=nop             
  nop                                                   #  17    0xecad6  1      OPC=nop             
  nop                                                   #  18    0xecad7  1      OPC=nop             
  nop                                                   #  19    0xecad8  1      OPC=nop             
  nop                                                   #  20    0xecad9  1      OPC=nop             
  nop                                                   #  21    0xecada  1      OPC=nop             
  callq ._ZNKSt12__basic_fileIcE7is_openEv              #  22    0xecadb  5      OPC=callq_label     
  addl $0x8, %esp                                       #  23    0xecae0  3      OPC=addl_r32_imm8   
  addq %r15, %rsp                                       #  24    0xecae3  3      OPC=addq_r64_r64    
  popq %r11                                             #  25    0xecae6  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d                               #  26    0xecae8  7      OPC=andl_r32_imm32  
  nop                                                   #  27    0xecaef  1      OPC=nop             
  nop                                                   #  28    0xecaf0  1      OPC=nop             
  nop                                                   #  29    0xecaf1  1      OPC=nop             
  nop                                                   #  30    0xecaf2  1      OPC=nop             
  addq %r15, %r11                                       #  31    0xecaf3  3      OPC=addq_r64_r64    
  jmpq %r11                                             #  32    0xecaf6  3      OPC=jmpq_r64        
  nop                                                   #  33    0xecaf9  1      OPC=nop             
  nop                                                   #  34    0xecafa  1      OPC=nop             
  nop                                                   #  35    0xecafb  1      OPC=nop             
  nop                                                   #  36    0xecafc  1      OPC=nop             
  nop                                                   #  37    0xecafd  1      OPC=nop             
  nop                                                   #  38    0xecafe  1      OPC=nop             
  nop                                                   #  39    0xecaff  1      OPC=nop             
  nop                                                   #  40    0xecb00  1      OPC=nop             
  nop                                                   #  41    0xecb01  1      OPC=nop             
  nop                                                   #  42    0xecb02  1      OPC=nop             
  nop                                                   #  43    0xecb03  1      OPC=nop             
  nop                                                   #  44    0xecb04  1      OPC=nop             
  nop                                                   #  45    0xecb05  1      OPC=nop             
  nop                                                   #  46    0xecb06  1      OPC=nop             
  cmpq $0xff, %rdx                                      #  47    0xecb07  4      OPC=cmpq_r64_imm8   
  movl %eax, %edi                                       #  48    0xecb0b  2      OPC=movl_r32_r32    
  je .L_ecb20                                           #  49    0xecb0d  2      OPC=je_label        
  nop                                                   #  50    0xecb0f  1      OPC=nop             
  nop                                                   #  51    0xecb10  1      OPC=nop             
  nop                                                   #  52    0xecb11  1      OPC=nop             
  nop                                                   #  53    0xecb12  1      OPC=nop             
  nop                                                   #  54    0xecb13  1      OPC=nop             
  nop                                                   #  55    0xecb14  1      OPC=nop             
  nop                                                   #  56    0xecb15  1      OPC=nop             
  nop                                                   #  57    0xecb16  1      OPC=nop             
  nop                                                   #  58    0xecb17  1      OPC=nop             
  nop                                                   #  59    0xecb18  1      OPC=nop             
  nop                                                   #  60    0xecb19  1      OPC=nop             
  nop                                                   #  61    0xecb1a  1      OPC=nop             
  nop                                                   #  62    0xecb1b  1      OPC=nop             
  nop                                                   #  63    0xecb1c  1      OPC=nop             
  nop                                                   #  64    0xecb1d  1      OPC=nop             
  nop                                                   #  65    0xecb1e  1      OPC=nop             
  nop                                                   #  66    0xecb1f  1      OPC=nop             
  nop                                                   #  67    0xecb20  1      OPC=nop             
  nop                                                   #  68    0xecb21  1      OPC=nop             
  callq ._Unwind_Resume                                 #  69    0xecb22  5      OPC=callq_label     
.L_ecb20:                                               #        0xecb27  0      OPC=<label>         
  nop                                                   #  70    0xecb27  1      OPC=nop             
  nop                                                   #  71    0xecb28  1      OPC=nop             
  nop                                                   #  72    0xecb29  1      OPC=nop             
  nop                                                   #  73    0xecb2a  1      OPC=nop             
  nop                                                   #  74    0xecb2b  1      OPC=nop             
  nop                                                   #  75    0xecb2c  1      OPC=nop             
  nop                                                   #  76    0xecb2d  1      OPC=nop             
  nop                                                   #  77    0xecb2e  1      OPC=nop             
  nop                                                   #  78    0xecb2f  1      OPC=nop             
  nop                                                   #  79    0xecb30  1      OPC=nop             
  nop                                                   #  80    0xecb31  1      OPC=nop             
  nop                                                   #  81    0xecb32  1      OPC=nop             
  nop                                                   #  82    0xecb33  1      OPC=nop             
  nop                                                   #  83    0xecb34  1      OPC=nop             
  nop                                                   #  84    0xecb35  1      OPC=nop             
  nop                                                   #  85    0xecb36  1      OPC=nop             
  nop                                                   #  86    0xecb37  1      OPC=nop             
  nop                                                   #  87    0xecb38  1      OPC=nop             
  nop                                                   #  88    0xecb39  1      OPC=nop             
  nop                                                   #  89    0xecb3a  1      OPC=nop             
  nop                                                   #  90    0xecb3b  1      OPC=nop             
  nop                                                   #  91    0xecb3c  1      OPC=nop             
  nop                                                   #  92    0xecb3d  1      OPC=nop             
  nop                                                   #  93    0xecb3e  1      OPC=nop             
  nop                                                   #  94    0xecb3f  1      OPC=nop             
  nop                                                   #  95    0xecb40  1      OPC=nop             
  nop                                                   #  96    0xecb41  1      OPC=nop             
  callq .__cxa_call_unexpected                          #  97    0xecb42  5      OPC=callq_label     
                                                                                                     
.size _ZNKSt13basic_fstreamIcSt11char_traitsIcEE7is_openEv, .-_ZNKSt13basic_fstreamIcSt11char_traitsIcEE7is_openEv

