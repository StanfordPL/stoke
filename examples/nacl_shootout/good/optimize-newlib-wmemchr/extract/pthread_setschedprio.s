  .text
  .globl pthread_setschedprio
  .type pthread_setschedprio, @function

#! file-offset 0x6e660
#! rip-offset  0x2e660
#! capacity    160 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_setschedprio:         #        0x2e660  0      OPC=<label>         
  movq %rbx, -0x10(%rsp)       #  1     0x2e660  5      OPC=movq_m64_r64    
  movq %r12, -0x8(%rsp)        #  2     0x2e665  5      OPC=movq_m64_r64    
  movl %edi, %ebx              #  3     0x2e66a  2      OPC=movl_r32_r32    
  subl $0x18, %esp             #  4     0x2e66c  3      OPC=subl_r32_imm8   
  addq %r15, %rsp              #  5     0x2e66f  3      OPC=addq_r64_r64    
  movl %esi, %r12d             #  6     0x2e672  3      OPC=movl_r32_r32    
  nop                          #  7     0x2e675  1      OPC=nop             
  nop                          #  8     0x2e676  1      OPC=nop             
  nop                          #  9     0x2e677  1      OPC=nop             
  nop                          #  10    0x2e678  1      OPC=nop             
  nop                          #  11    0x2e679  1      OPC=nop             
  nop                          #  12    0x2e67a  1      OPC=nop             
  callq .pthread_self          #  13    0x2e67b  5      OPC=callq_label     
  cmpl %ebx, %eax              #  14    0x2e680  2      OPC=cmpl_r32_r32    
  je .L_2e6c0                  #  15    0x2e682  2      OPC=je_label        
  movq 0x8(%rsp), %rbx         #  16    0x2e684  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12        #  17    0x2e689  5      OPC=movq_r64_m64    
  addl $0x18, %esp             #  18    0x2e68e  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  19    0x2e691  3      OPC=addq_r64_r64    
  popq %r11                    #  20    0x2e694  2      OPC=popq_r64_1      
  movl $0x1, %eax              #  21    0x2e696  5      OPC=movl_r32_imm32  
  nop                          #  22    0x2e69b  1      OPC=nop             
  nop                          #  23    0x2e69c  1      OPC=nop             
  nop                          #  24    0x2e69d  1      OPC=nop             
  nop                          #  25    0x2e69e  1      OPC=nop             
  nop                          #  26    0x2e69f  1      OPC=nop             
  andl $0xffffffe0, %r11d      #  27    0x2e6a0  7      OPC=andl_r32_imm32  
  nop                          #  28    0x2e6a7  1      OPC=nop             
  nop                          #  29    0x2e6a8  1      OPC=nop             
  nop                          #  30    0x2e6a9  1      OPC=nop             
  nop                          #  31    0x2e6aa  1      OPC=nop             
  addq %r15, %r11              #  32    0x2e6ab  3      OPC=addq_r64_r64    
  jmpq %r11                    #  33    0x2e6ae  3      OPC=jmpq_r64        
  nop                          #  34    0x2e6b1  1      OPC=nop             
  nop                          #  35    0x2e6b2  1      OPC=nop             
  nop                          #  36    0x2e6b3  1      OPC=nop             
  nop                          #  37    0x2e6b4  1      OPC=nop             
  nop                          #  38    0x2e6b5  1      OPC=nop             
  nop                          #  39    0x2e6b6  1      OPC=nop             
  nop                          #  40    0x2e6b7  1      OPC=nop             
  nop                          #  41    0x2e6b8  1      OPC=nop             
  nop                          #  42    0x2e6b9  1      OPC=nop             
  nop                          #  43    0x2e6ba  1      OPC=nop             
  nop                          #  44    0x2e6bb  1      OPC=nop             
  nop                          #  45    0x2e6bc  1      OPC=nop             
  nop                          #  46    0x2e6bd  1      OPC=nop             
  nop                          #  47    0x2e6be  1      OPC=nop             
  nop                          #  48    0x2e6bf  1      OPC=nop             
  nop                          #  49    0x2e6c0  1      OPC=nop             
  nop                          #  50    0x2e6c1  1      OPC=nop             
  nop                          #  51    0x2e6c2  1      OPC=nop             
  nop                          #  52    0x2e6c3  1      OPC=nop             
  nop                          #  53    0x2e6c4  1      OPC=nop             
  nop                          #  54    0x2e6c5  1      OPC=nop             
  nop                          #  55    0x2e6c6  1      OPC=nop             
.L_2e6c0:                      #        0x2e6c7  0      OPC=<label>         
  movl 0x1004ab5a(%rip), %eax  #  56    0x2e6c7  6      OPC=movl_r32_m32    
  movl %r12d, %edi             #  57    0x2e6cd  3      OPC=movl_r32_r32    
  movq 0x8(%rsp), %rbx         #  58    0x2e6d0  5      OPC=movq_r64_m64    
  movq 0x10(%rsp), %r12        #  59    0x2e6d5  5      OPC=movq_r64_m64    
  addl $0x18, %esp             #  60    0x2e6da  3      OPC=addl_r32_imm8   
  addq %r15, %rsp              #  61    0x2e6dd  3      OPC=addq_r64_r64    
  nop                          #  62    0x2e6e0  1      OPC=nop             
  nop                          #  63    0x2e6e1  1      OPC=nop             
  nop                          #  64    0x2e6e2  1      OPC=nop             
  nop                          #  65    0x2e6e3  1      OPC=nop             
  nop                          #  66    0x2e6e4  1      OPC=nop             
  nop                          #  67    0x2e6e5  1      OPC=nop             
  nop                          #  68    0x2e6e6  1      OPC=nop             
  andl $0xffffffe0, %eax       #  69    0x2e6e7  6      OPC=andl_r32_imm32  
  nop                          #  70    0x2e6ed  1      OPC=nop             
  nop                          #  71    0x2e6ee  1      OPC=nop             
  nop                          #  72    0x2e6ef  1      OPC=nop             
  addq %r15, %rax              #  73    0x2e6f0  3      OPC=addq_r64_r64    
  jmpq %rax                    #  74    0x2e6f3  2      OPC=jmpq_r64        
  nop                          #  75    0x2e6f5  1      OPC=nop             
  nop                          #  76    0x2e6f6  1      OPC=nop             
  nop                          #  77    0x2e6f7  1      OPC=nop             
  nop                          #  78    0x2e6f8  1      OPC=nop             
  nop                          #  79    0x2e6f9  1      OPC=nop             
  nop                          #  80    0x2e6fa  1      OPC=nop             
  nop                          #  81    0x2e6fb  1      OPC=nop             
  nop                          #  82    0x2e6fc  1      OPC=nop             
  nop                          #  83    0x2e6fd  1      OPC=nop             
  nop                          #  84    0x2e6fe  1      OPC=nop             
  nop                          #  85    0x2e6ff  1      OPC=nop             
  nop                          #  86    0x2e700  1      OPC=nop             
  nop                          #  87    0x2e701  1      OPC=nop             
  nop                          #  88    0x2e702  1      OPC=nop             
  nop                          #  89    0x2e703  1      OPC=nop             
  nop                          #  90    0x2e704  1      OPC=nop             
  nop                          #  91    0x2e705  1      OPC=nop             
  nop                          #  92    0x2e706  1      OPC=nop             
  nop                          #  93    0x2e707  1      OPC=nop             
  nop                          #  94    0x2e708  1      OPC=nop             
  nop                          #  95    0x2e709  1      OPC=nop             
  nop                          #  96    0x2e70a  1      OPC=nop             
  nop                          #  97    0x2e70b  1      OPC=nop             
  nop                          #  98    0x2e70c  1      OPC=nop             
                                                                            
.size pthread_setschedprio, .-pthread_setschedprio

