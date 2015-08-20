  .text
  .globl __register_frame
  .type __register_frame, @function

#! file-offset 0x14ffe0
#! rip-offset  0x10ffe0
#! capacity    96 bytes

# Text                         #  Line  RIP       Bytes  Opcode              
.__register_frame:             #        0x10ffe0  0      OPC=<label>         
  pushq %rbx                   #  1     0x10ffe0  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0x10ffe1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  3     0x10ffe3  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %eax     #  4     0x10ffe5  4      OPC=movl_r32_m32    
  testl %eax, %eax             #  5     0x10ffe9  2      OPC=testl_r32_r32   
  jne .L_110000                #  6     0x10ffeb  2      OPC=jne_label       
  popq %rbx                    #  7     0x10ffed  1      OPC=popq_r64_1      
  popq %r11                    #  8     0x10ffee  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  9     0x10fff0  7      OPC=andl_r32_imm32  
  nop                          #  10    0x10fff7  1      OPC=nop             
  nop                          #  11    0x10fff8  1      OPC=nop             
  nop                          #  12    0x10fff9  1      OPC=nop             
  nop                          #  13    0x10fffa  1      OPC=nop             
  addq %r15, %r11              #  14    0x10fffb  3      OPC=addq_r64_r64    
  jmpq %r11                    #  15    0x10fffe  3      OPC=jmpq_r64        
  nop                          #  16    0x110001  1      OPC=nop             
  nop                          #  17    0x110002  1      OPC=nop             
  nop                          #  18    0x110003  1      OPC=nop             
  nop                          #  19    0x110004  1      OPC=nop             
  nop                          #  20    0x110005  1      OPC=nop             
  nop                          #  21    0x110006  1      OPC=nop             
.L_110000:                     #        0x110007  0      OPC=<label>         
  movl $0x18, %edi             #  22    0x110007  5      OPC=movl_r32_imm32  
  nop                          #  23    0x11000c  1      OPC=nop             
  nop                          #  24    0x11000d  1      OPC=nop             
  nop                          #  25    0x11000e  1      OPC=nop             
  nop                          #  26    0x11000f  1      OPC=nop             
  nop                          #  27    0x110010  1      OPC=nop             
  nop                          #  28    0x110011  1      OPC=nop             
  nop                          #  29    0x110012  1      OPC=nop             
  nop                          #  30    0x110013  1      OPC=nop             
  nop                          #  31    0x110014  1      OPC=nop             
  nop                          #  32    0x110015  1      OPC=nop             
  nop                          #  33    0x110016  1      OPC=nop             
  nop                          #  34    0x110017  1      OPC=nop             
  nop                          #  35    0x110018  1      OPC=nop             
  nop                          #  36    0x110019  1      OPC=nop             
  nop                          #  37    0x11001a  1      OPC=nop             
  nop                          #  38    0x11001b  1      OPC=nop             
  nop                          #  39    0x11001c  1      OPC=nop             
  nop                          #  40    0x11001d  1      OPC=nop             
  nop                          #  41    0x11001e  1      OPC=nop             
  nop                          #  42    0x11001f  1      OPC=nop             
  nop                          #  43    0x110020  1      OPC=nop             
  nop                          #  44    0x110021  1      OPC=nop             
  callq .malloc                #  45    0x110022  5      OPC=callq_label     
  movl %ebx, %edi              #  46    0x110027  2      OPC=movl_r32_r32    
  movl %eax, %esi              #  47    0x110029  2      OPC=movl_r32_r32    
  popq %rbx                    #  48    0x11002b  1      OPC=popq_r64_1      
  jmpq .__register_frame_info  #  49    0x11002c  5      OPC=jmpq_label_1    
  nop                          #  50    0x110031  1      OPC=nop             
  nop                          #  51    0x110032  1      OPC=nop             
  nop                          #  52    0x110033  1      OPC=nop             
  nop                          #  53    0x110034  1      OPC=nop             
  nop                          #  54    0x110035  1      OPC=nop             
  nop                          #  55    0x110036  1      OPC=nop             
  nop                          #  56    0x110037  1      OPC=nop             
  nop                          #  57    0x110038  1      OPC=nop             
  nop                          #  58    0x110039  1      OPC=nop             
  nop                          #  59    0x11003a  1      OPC=nop             
  nop                          #  60    0x11003b  1      OPC=nop             
  nop                          #  61    0x11003c  1      OPC=nop             
  nop                          #  62    0x11003d  1      OPC=nop             
  nop                          #  63    0x11003e  1      OPC=nop             
  nop                          #  64    0x11003f  1      OPC=nop             
  nop                          #  65    0x110040  1      OPC=nop             
  nop                          #  66    0x110041  1      OPC=nop             
  nop                          #  67    0x110042  1      OPC=nop             
  nop                          #  68    0x110043  1      OPC=nop             
  nop                          #  69    0x110044  1      OPC=nop             
  nop                          #  70    0x110045  1      OPC=nop             
  nop                          #  71    0x110046  1      OPC=nop             
                                                                             
.size __register_frame, .-__register_frame

