  .text
  .globl __register_frame
  .type __register_frame, @function

#! file-offset 0x14fce0
#! rip-offset  0x10fce0
#! capacity    96 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.__register_frame:             #        0x10fce0  0      OPC=<label>         
  pushq %rbx                   #  1     0x10fce0  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x10fce1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  3     0x10fce3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax     #  4     0x10fce5  4      OPC=movl_r32_m32    
  testl %eax, %eax             #  5     0x10fce9  2      OPC=testl_r32_r32   
  jne .L_10fd00                #  6     0x10fceb  2      OPC=jne_label       
  popq %rbx                    #  7     0x10fced  1      OPC=popq_r64_1      
  popq %r11                    #  8     0x10fcee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  9     0x10fcf0  7      OPC=andl_r32_imm32  
  nop                          #  10    0x10fcf7  1      OPC=nop             
  nop                          #  11    0x10fcf8  1      OPC=nop             
  nop                          #  12    0x10fcf9  1      OPC=nop             
  nop                          #  13    0x10fcfa  1      OPC=nop             
  addq %r15, %r11              #  14    0x10fcfb  3      OPC=addq_r64_r64    
  jmpq %r11                    #  15    0x10fcfe  3      OPC=jmpq_r64        
  nop                          #  16    0x10fd01  1      OPC=nop             
  nop                          #  17    0x10fd02  1      OPC=nop             
  nop                          #  18    0x10fd03  1      OPC=nop             
  nop                          #  19    0x10fd04  1      OPC=nop             
  nop                          #  20    0x10fd05  1      OPC=nop             
  nop                          #  21    0x10fd06  1      OPC=nop             
.L_10fd00:                     #        0x10fd07  0      OPC=<label>         
  movl $0x18, %edi             #  22    0x10fd07  5      OPC=movl_r32_imm32  
  nop                          #  23    0x10fd0c  1      OPC=nop             
  nop                          #  24    0x10fd0d  1      OPC=nop             
  nop                          #  25    0x10fd0e  1      OPC=nop             
  nop                          #  26    0x10fd0f  1      OPC=nop             
  nop                          #  27    0x10fd10  1      OPC=nop             
  nop                          #  28    0x10fd11  1      OPC=nop             
  nop                          #  29    0x10fd12  1      OPC=nop             
  nop                          #  30    0x10fd13  1      OPC=nop             
  nop                          #  31    0x10fd14  1      OPC=nop             
  nop                          #  32    0x10fd15  1      OPC=nop             
  nop                          #  33    0x10fd16  1      OPC=nop             
  nop                          #  34    0x10fd17  1      OPC=nop             
  nop                          #  35    0x10fd18  1      OPC=nop             
  nop                          #  36    0x10fd19  1      OPC=nop             
  nop                          #  37    0x10fd1a  1      OPC=nop             
  nop                          #  38    0x10fd1b  1      OPC=nop             
  nop                          #  39    0x10fd1c  1      OPC=nop             
  nop                          #  40    0x10fd1d  1      OPC=nop             
  nop                          #  41    0x10fd1e  1      OPC=nop             
  nop                          #  42    0x10fd1f  1      OPC=nop             
  nop                          #  43    0x10fd20  1      OPC=nop             
  nop                          #  44    0x10fd21  1      OPC=nop             
  callq .malloc                #  45    0x10fd22  5      OPC=callq_label     
  movl %ebx, %edi              #  46    0x10fd27  2      OPC=movl_r32_r32    
  movl %eax, %esi              #  47    0x10fd29  2      OPC=movl_r32_r32    
  popq %rbx                    #  48    0x10fd2b  1      OPC=popq_r64_1      
  jmpq .__register_frame_info  #  49    0x10fd2c  5      OPC=jmpq_label_1    
  nop                          #  50    0x10fd31  1      OPC=nop             
  nop                          #  51    0x10fd32  1      OPC=nop             
  nop                          #  52    0x10fd33  1      OPC=nop             
  nop                          #  53    0x10fd34  1      OPC=nop             
  nop                          #  54    0x10fd35  1      OPC=nop             
  nop                          #  55    0x10fd36  1      OPC=nop             
  nop                          #  56    0x10fd37  1      OPC=nop             
  nop                          #  57    0x10fd38  1      OPC=nop             
  nop                          #  58    0x10fd39  1      OPC=nop             
  nop                          #  59    0x10fd3a  1      OPC=nop             
  nop                          #  60    0x10fd3b  1      OPC=nop             
  nop                          #  61    0x10fd3c  1      OPC=nop             
  nop                          #  62    0x10fd3d  1      OPC=nop             
  nop                          #  63    0x10fd3e  1      OPC=nop             
  nop                          #  64    0x10fd3f  1      OPC=nop             
  nop                          #  65    0x10fd40  1      OPC=nop             
  nop                          #  66    0x10fd41  1      OPC=nop             
  nop                          #  67    0x10fd42  1      OPC=nop             
  nop                          #  68    0x10fd43  1      OPC=nop             
  nop                          #  69    0x10fd44  1      OPC=nop             
  nop                          #  70    0x10fd45  1      OPC=nop             
  nop                          #  71    0x10fd46  1      OPC=nop             
                                                                             
.size __register_frame, .-__register_frame

