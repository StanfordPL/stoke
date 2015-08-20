  .text
  .globl PPP_InitializeModule
  .type PPP_InitializeModule, @function

#! file-offset 0x6c6a0
#! rip-offset  0x2c6a0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.PPP_InitializeModule:         #        0x2c6a0  0      OPC=<label>         
  pushq %rbx                   #  1     0x2c6a0  1      OPC=pushq_r64_1     
  movl %esi, %ebx              #  2     0x2c6a1  2      OPC=movl_r32_r32    
  movl %edi, 0x10044f33(%rip)  #  3     0x2c6a3  6      OPC=movl_m32_r32    
  movl $0x10039c68, %edi       #  4     0x2c6a9  5      OPC=movl_r32_imm32  
  nop                          #  5     0x2c6ae  1      OPC=nop             
  nop                          #  6     0x2c6af  1      OPC=nop             
  nop                          #  7     0x2c6b0  1      OPC=nop             
  nop                          #  8     0x2c6b1  1      OPC=nop             
  nop                          #  9     0x2c6b2  1      OPC=nop             
  nop                          #  10    0x2c6b3  1      OPC=nop             
  nop                          #  11    0x2c6b4  1      OPC=nop             
  nop                          #  12    0x2c6b5  1      OPC=nop             
  nop                          #  13    0x2c6b6  1      OPC=nop             
  nop                          #  14    0x2c6b7  1      OPC=nop             
  andl $0xffffffe0, %ebx       #  15    0x2c6b8  6      OPC=andl_r32_imm32  
  nop                          #  16    0x2c6be  1      OPC=nop             
  nop                          #  17    0x2c6bf  1      OPC=nop             
  nop                          #  18    0x2c6c0  1      OPC=nop             
  addq %r15, %rbx              #  19    0x2c6c1  3      OPC=addq_r64_r64    
  callq %rbx                   #  20    0x2c6c4  2      OPC=callq_r64       
  movl %eax, 0x10044f0e(%rip)  #  21    0x2c6c6  6      OPC=movl_m32_r32    
  movl $0x10039c7a, %edi       #  22    0x2c6cc  5      OPC=movl_r32_imm32  
  nop                          #  23    0x2c6d1  1      OPC=nop             
  nop                          #  24    0x2c6d2  1      OPC=nop             
  nop                          #  25    0x2c6d3  1      OPC=nop             
  nop                          #  26    0x2c6d4  1      OPC=nop             
  nop                          #  27    0x2c6d5  1      OPC=nop             
  nop                          #  28    0x2c6d6  1      OPC=nop             
  nop                          #  29    0x2c6d7  1      OPC=nop             
  nop                          #  30    0x2c6d8  1      OPC=nop             
  nop                          #  31    0x2c6d9  1      OPC=nop             
  nop                          #  32    0x2c6da  1      OPC=nop             
  nop                          #  33    0x2c6db  1      OPC=nop             
  nop                          #  34    0x2c6dc  1      OPC=nop             
  nop                          #  35    0x2c6dd  1      OPC=nop             
  andl $0xffffffe0, %ebx       #  36    0x2c6de  6      OPC=andl_r32_imm32  
  nop                          #  37    0x2c6e4  1      OPC=nop             
  nop                          #  38    0x2c6e5  1      OPC=nop             
  nop                          #  39    0x2c6e6  1      OPC=nop             
  addq %r15, %rbx              #  40    0x2c6e7  3      OPC=addq_r64_r64    
  callq %rbx                   #  41    0x2c6ea  2      OPC=callq_r64       
  movl %eax, 0x10044ef2(%rip)  #  42    0x2c6ec  6      OPC=movl_m32_r32    
  movl $0x10039c86, %edi       #  43    0x2c6f2  5      OPC=movl_r32_imm32  
  nop                          #  44    0x2c6f7  1      OPC=nop             
  nop                          #  45    0x2c6f8  1      OPC=nop             
  nop                          #  46    0x2c6f9  1      OPC=nop             
  nop                          #  47    0x2c6fa  1      OPC=nop             
  nop                          #  48    0x2c6fb  1      OPC=nop             
  nop                          #  49    0x2c6fc  1      OPC=nop             
  nop                          #  50    0x2c6fd  1      OPC=nop             
  nop                          #  51    0x2c6fe  1      OPC=nop             
  nop                          #  52    0x2c6ff  1      OPC=nop             
  nop                          #  53    0x2c700  1      OPC=nop             
  nop                          #  54    0x2c701  1      OPC=nop             
  nop                          #  55    0x2c702  1      OPC=nop             
  nop                          #  56    0x2c703  1      OPC=nop             
  andl $0xffffffe0, %ebx       #  57    0x2c704  6      OPC=andl_r32_imm32  
  nop                          #  58    0x2c70a  1      OPC=nop             
  nop                          #  59    0x2c70b  1      OPC=nop             
  nop                          #  60    0x2c70c  1      OPC=nop             
  addq %r15, %rbx              #  61    0x2c70d  3      OPC=addq_r64_r64    
  callq %rbx                   #  62    0x2c710  2      OPC=callq_r64       
  movl %eax, 0x10044eca(%rip)  #  63    0x2c712  6      OPC=movl_m32_r32    
  xorl %eax, %eax              #  64    0x2c718  2      OPC=xorl_r32_r32    
  popq %rbx                    #  65    0x2c71a  1      OPC=popq_r64_1      
  popq %r11                    #  66    0x2c71b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  67    0x2c71d  7      OPC=andl_r32_imm32  
  nop                          #  68    0x2c724  1      OPC=nop             
  nop                          #  69    0x2c725  1      OPC=nop             
  nop                          #  70    0x2c726  1      OPC=nop             
  nop                          #  71    0x2c727  1      OPC=nop             
  addq %r15, %r11              #  72    0x2c728  3      OPC=addq_r64_r64    
  jmpq %r11                    #  73    0x2c72b  3      OPC=jmpq_r64        
  nop                          #  74    0x2c72e  1      OPC=nop             
  nop                          #  75    0x2c72f  1      OPC=nop             
  nop                          #  76    0x2c730  1      OPC=nop             
  nop                          #  77    0x2c731  1      OPC=nop             
  nop                          #  78    0x2c732  1      OPC=nop             
  nop                          #  79    0x2c733  1      OPC=nop             
  nop                          #  80    0x2c734  1      OPC=nop             
  nop                          #  81    0x2c735  1      OPC=nop             
  nop                          #  82    0x2c736  1      OPC=nop             
  nop                          #  83    0x2c737  1      OPC=nop             
  nop                          #  84    0x2c738  1      OPC=nop             
                                                                            
.size PPP_InitializeModule, .-PPP_InitializeModule

