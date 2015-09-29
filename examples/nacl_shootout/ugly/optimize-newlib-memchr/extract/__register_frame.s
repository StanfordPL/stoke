  .text
  .globl __register_frame
  .type __register_frame, @function

#! file-offset 0x150700
#! rip-offset  0x110700
#! capacity    96 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.__register_frame:             #        0x110700  0      OPC=<label>         
  pushq %rbx                   #  1     0x110700  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x110701  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  3     0x110703  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax     #  4     0x110705  4      OPC=movl_r32_m32    
  testl %eax, %eax             #  5     0x110709  2      OPC=testl_r32_r32   
  jne .L_110720                #  6     0x11070b  2      OPC=jne_label       
  popq %rbx                    #  7     0x11070d  1      OPC=popq_r64_1      
  popq %r11                    #  8     0x11070e  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  9     0x110710  7      OPC=andl_r32_imm32  
  nop                          #  10    0x110717  1      OPC=nop             
  nop                          #  11    0x110718  1      OPC=nop             
  nop                          #  12    0x110719  1      OPC=nop             
  nop                          #  13    0x11071a  1      OPC=nop             
  addq %r15, %r11              #  14    0x11071b  3      OPC=addq_r64_r64    
  jmpq %r11                    #  15    0x11071e  3      OPC=jmpq_r64        
  nop                          #  16    0x110721  1      OPC=nop             
  nop                          #  17    0x110722  1      OPC=nop             
  nop                          #  18    0x110723  1      OPC=nop             
  nop                          #  19    0x110724  1      OPC=nop             
  nop                          #  20    0x110725  1      OPC=nop             
  nop                          #  21    0x110726  1      OPC=nop             
.L_110720:                     #        0x110727  0      OPC=<label>         
  movl $0x18, %edi             #  22    0x110727  5      OPC=movl_r32_imm32  
  nop                          #  23    0x11072c  1      OPC=nop             
  nop                          #  24    0x11072d  1      OPC=nop             
  nop                          #  25    0x11072e  1      OPC=nop             
  nop                          #  26    0x11072f  1      OPC=nop             
  nop                          #  27    0x110730  1      OPC=nop             
  nop                          #  28    0x110731  1      OPC=nop             
  nop                          #  29    0x110732  1      OPC=nop             
  nop                          #  30    0x110733  1      OPC=nop             
  nop                          #  31    0x110734  1      OPC=nop             
  nop                          #  32    0x110735  1      OPC=nop             
  nop                          #  33    0x110736  1      OPC=nop             
  nop                          #  34    0x110737  1      OPC=nop             
  nop                          #  35    0x110738  1      OPC=nop             
  nop                          #  36    0x110739  1      OPC=nop             
  nop                          #  37    0x11073a  1      OPC=nop             
  nop                          #  38    0x11073b  1      OPC=nop             
  nop                          #  39    0x11073c  1      OPC=nop             
  nop                          #  40    0x11073d  1      OPC=nop             
  nop                          #  41    0x11073e  1      OPC=nop             
  nop                          #  42    0x11073f  1      OPC=nop             
  nop                          #  43    0x110740  1      OPC=nop             
  nop                          #  44    0x110741  1      OPC=nop             
  callq .malloc                #  45    0x110742  5      OPC=callq_label     
  movl %ebx, %edi              #  46    0x110747  2      OPC=movl_r32_r32    
  movl %eax, %esi              #  47    0x110749  2      OPC=movl_r32_r32    
  popq %rbx                    #  48    0x11074b  1      OPC=popq_r64_1      
  jmpq .__register_frame_info  #  49    0x11074c  5      OPC=jmpq_label_1    
  nop                          #  50    0x110751  1      OPC=nop             
  nop                          #  51    0x110752  1      OPC=nop             
  nop                          #  52    0x110753  1      OPC=nop             
  nop                          #  53    0x110754  1      OPC=nop             
  nop                          #  54    0x110755  1      OPC=nop             
  nop                          #  55    0x110756  1      OPC=nop             
  nop                          #  56    0x110757  1      OPC=nop             
  nop                          #  57    0x110758  1      OPC=nop             
  nop                          #  58    0x110759  1      OPC=nop             
  nop                          #  59    0x11075a  1      OPC=nop             
  nop                          #  60    0x11075b  1      OPC=nop             
  nop                          #  61    0x11075c  1      OPC=nop             
  nop                          #  62    0x11075d  1      OPC=nop             
  nop                          #  63    0x11075e  1      OPC=nop             
  nop                          #  64    0x11075f  1      OPC=nop             
  nop                          #  65    0x110760  1      OPC=nop             
  nop                          #  66    0x110761  1      OPC=nop             
  nop                          #  67    0x110762  1      OPC=nop             
  nop                          #  68    0x110763  1      OPC=nop             
  nop                          #  69    0x110764  1      OPC=nop             
  nop                          #  70    0x110765  1      OPC=nop             
  nop                          #  71    0x110766  1      OPC=nop             
                                                                             
.size __register_frame, .-__register_frame

