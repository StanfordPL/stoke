  .text
  .globl _ZN17__eh_globals_initD1Ev
  .type _ZN17__eh_globals_initD1Ev, @function

#! file-offset 0x1209a0
#! rip-offset  0xe09a0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
._ZN17__eh_globals_initD1Ev:   #        0xe09a0  0      OPC=<label>         
  pushq %rbx                   #  1     0xe09a0  1      OPC=pushq_r64_1     
  movl %edi, %ebx              #  2     0xe09a1  2      OPC=movl_r32_r32    
  movl %ebx, %ebx              #  3     0xe09a3  2      OPC=movl_r32_r32    
  cmpb $0x0, 0x4(%r15,%rbx,1)  #  4     0xe09a5  6      OPC=cmpb_m8_imm8    
  jne .L_e09e0                 #  5     0xe09ab  2      OPC=jne_label       
  movl %ebx, %ebx              #  6     0xe09ad  2      OPC=movl_r32_r32    
  movb $0x0, 0x4(%r15,%rbx,1)  #  7     0xe09af  6      OPC=movb_m8_imm8    
  popq %rbx                    #  8     0xe09b5  1      OPC=popq_r64_1      
  popq %r11                    #  9     0xe09b6  2      OPC=popq_r64_1      
  nop                          #  10    0xe09b8  1      OPC=nop             
  nop                          #  11    0xe09b9  1      OPC=nop             
  nop                          #  12    0xe09ba  1      OPC=nop             
  nop                          #  13    0xe09bb  1      OPC=nop             
  nop                          #  14    0xe09bc  1      OPC=nop             
  nop                          #  15    0xe09bd  1      OPC=nop             
  nop                          #  16    0xe09be  1      OPC=nop             
  nop                          #  17    0xe09bf  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  18    0xe09c0  7      OPC=andl_r32_imm32  
  nop                          #  19    0xe09c7  1      OPC=nop             
  nop                          #  20    0xe09c8  1      OPC=nop             
  nop                          #  21    0xe09c9  1      OPC=nop             
  nop                          #  22    0xe09ca  1      OPC=nop             
  addq %r15, %r11              #  23    0xe09cb  3      OPC=addq_r64_r64    
  jmpq %r11                    #  24    0xe09ce  3      OPC=jmpq_r64        
  nop                          #  25    0xe09d1  1      OPC=nop             
  nop                          #  26    0xe09d2  1      OPC=nop             
  nop                          #  27    0xe09d3  1      OPC=nop             
  nop                          #  28    0xe09d4  1      OPC=nop             
  nop                          #  29    0xe09d5  1      OPC=nop             
  nop                          #  30    0xe09d6  1      OPC=nop             
  nop                          #  31    0xe09d7  1      OPC=nop             
  nop                          #  32    0xe09d8  1      OPC=nop             
  nop                          #  33    0xe09d9  1      OPC=nop             
  nop                          #  34    0xe09da  1      OPC=nop             
  nop                          #  35    0xe09db  1      OPC=nop             
  nop                          #  36    0xe09dc  1      OPC=nop             
  nop                          #  37    0xe09dd  1      OPC=nop             
  nop                          #  38    0xe09de  1      OPC=nop             
  nop                          #  39    0xe09df  1      OPC=nop             
  nop                          #  40    0xe09e0  1      OPC=nop             
  nop                          #  41    0xe09e1  1      OPC=nop             
  nop                          #  42    0xe09e2  1      OPC=nop             
  nop                          #  43    0xe09e3  1      OPC=nop             
  nop                          #  44    0xe09e4  1      OPC=nop             
  nop                          #  45    0xe09e5  1      OPC=nop             
  nop                          #  46    0xe09e6  1      OPC=nop             
.L_e09e0:                      #        0xe09e7  0      OPC=<label>         
  movl %ebx, %ebx              #  47    0xe09e7  2      OPC=movl_r32_r32    
  movl (%r15,%rbx,1), %edi     #  48    0xe09e9  4      OPC=movl_r32_m32    
  nop                          #  49    0xe09ed  1      OPC=nop             
  nop                          #  50    0xe09ee  1      OPC=nop             
  nop                          #  51    0xe09ef  1      OPC=nop             
  nop                          #  52    0xe09f0  1      OPC=nop             
  nop                          #  53    0xe09f1  1      OPC=nop             
  nop                          #  54    0xe09f2  1      OPC=nop             
  nop                          #  55    0xe09f3  1      OPC=nop             
  nop                          #  56    0xe09f4  1      OPC=nop             
  nop                          #  57    0xe09f5  1      OPC=nop             
  nop                          #  58    0xe09f6  1      OPC=nop             
  nop                          #  59    0xe09f7  1      OPC=nop             
  nop                          #  60    0xe09f8  1      OPC=nop             
  nop                          #  61    0xe09f9  1      OPC=nop             
  nop                          #  62    0xe09fa  1      OPC=nop             
  nop                          #  63    0xe09fb  1      OPC=nop             
  nop                          #  64    0xe09fc  1      OPC=nop             
  nop                          #  65    0xe09fd  1      OPC=nop             
  nop                          #  66    0xe09fe  1      OPC=nop             
  nop                          #  67    0xe09ff  1      OPC=nop             
  nop                          #  68    0xe0a00  1      OPC=nop             
  nop                          #  69    0xe0a01  1      OPC=nop             
  callq .pthread_key_delete    #  70    0xe0a02  5      OPC=callq_label     
  movl %ebx, %ebx              #  71    0xe0a07  2      OPC=movl_r32_r32    
  movb $0x0, 0x4(%r15,%rbx,1)  #  72    0xe0a09  6      OPC=movb_m8_imm8    
  popq %rbx                    #  73    0xe0a0f  1      OPC=popq_r64_1      
  popq %r11                    #  74    0xe0a10  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  75    0xe0a12  7      OPC=andl_r32_imm32  
  nop                          #  76    0xe0a19  1      OPC=nop             
  nop                          #  77    0xe0a1a  1      OPC=nop             
  nop                          #  78    0xe0a1b  1      OPC=nop             
  nop                          #  79    0xe0a1c  1      OPC=nop             
  addq %r15, %r11              #  80    0xe0a1d  3      OPC=addq_r64_r64    
  jmpq %r11                    #  81    0xe0a20  3      OPC=jmpq_r64        
  nop                          #  82    0xe0a23  1      OPC=nop             
  nop                          #  83    0xe0a24  1      OPC=nop             
  nop                          #  84    0xe0a25  1      OPC=nop             
  nop                          #  85    0xe0a26  1      OPC=nop             
  nop                          #  86    0xe0a27  1      OPC=nop             
  nop                          #  87    0xe0a28  1      OPC=nop             
  nop                          #  88    0xe0a29  1      OPC=nop             
  nop                          #  89    0xe0a2a  1      OPC=nop             
  nop                          #  90    0xe0a2b  1      OPC=nop             
  nop                          #  91    0xe0a2c  1      OPC=nop             
  nop                          #  92    0xe0a2d  1      OPC=nop             
                                                                            
.size _ZN17__eh_globals_initD1Ev, .-_ZN17__eh_globals_initD1Ev

