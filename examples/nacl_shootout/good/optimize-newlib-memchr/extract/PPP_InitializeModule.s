  .text
  .globl PPP_InitializeModule
  .type PPP_InitializeModule, @function

#! file-offset 0x6cdc0
#! rip-offset  0x2cdc0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.PPP_InitializeModule:         #        0x2cdc0  0      OPC=<label>         
  pushq %rbx                   #  1     0x2cdc0  1      OPC=pushq_r64_1     
  movl %esi, %ebx              #  2     0x2cdc1  2      OPC=movl_r32_r32    
  movl %edi, 0x10044813(%rip)  #  3     0x2cdc3  6      OPC=movl_m32_r32    
  movl $0x10039c68, %edi       #  4     0x2cdc9  5      OPC=movl_r32_imm32  
  nop                          #  5     0x2cdce  1      OPC=nop             
  nop                          #  6     0x2cdcf  1      OPC=nop             
  nop                          #  7     0x2cdd0  1      OPC=nop             
  nop                          #  8     0x2cdd1  1      OPC=nop             
  nop                          #  9     0x2cdd2  1      OPC=nop             
  nop                          #  10    0x2cdd3  1      OPC=nop             
  nop                          #  11    0x2cdd4  1      OPC=nop             
  nop                          #  12    0x2cdd5  1      OPC=nop             
  nop                          #  13    0x2cdd6  1      OPC=nop             
  nop                          #  14    0x2cdd7  1      OPC=nop             
  andl $0xffffffe0, %ebx       #  15    0x2cdd8  6      OPC=andl_r32_imm32  
  nop                          #  16    0x2cdde  1      OPC=nop             
  nop                          #  17    0x2cddf  1      OPC=nop             
  nop                          #  18    0x2cde0  1      OPC=nop             
  addq %r15, %rbx              #  19    0x2cde1  3      OPC=addq_r64_r64    
  callq %rbx                   #  20    0x2cde4  2      OPC=callq_r64       
  movl %eax, 0x100447ee(%rip)  #  21    0x2cde6  6      OPC=movl_m32_r32    
  movl $0x10039c7a, %edi       #  22    0x2cdec  5      OPC=movl_r32_imm32  
  nop                          #  23    0x2cdf1  1      OPC=nop             
  nop                          #  24    0x2cdf2  1      OPC=nop             
  nop                          #  25    0x2cdf3  1      OPC=nop             
  nop                          #  26    0x2cdf4  1      OPC=nop             
  nop                          #  27    0x2cdf5  1      OPC=nop             
  nop                          #  28    0x2cdf6  1      OPC=nop             
  nop                          #  29    0x2cdf7  1      OPC=nop             
  nop                          #  30    0x2cdf8  1      OPC=nop             
  nop                          #  31    0x2cdf9  1      OPC=nop             
  nop                          #  32    0x2cdfa  1      OPC=nop             
  nop                          #  33    0x2cdfb  1      OPC=nop             
  nop                          #  34    0x2cdfc  1      OPC=nop             
  nop                          #  35    0x2cdfd  1      OPC=nop             
  andl $0xffffffe0, %ebx       #  36    0x2cdfe  6      OPC=andl_r32_imm32  
  nop                          #  37    0x2ce04  1      OPC=nop             
  nop                          #  38    0x2ce05  1      OPC=nop             
  nop                          #  39    0x2ce06  1      OPC=nop             
  addq %r15, %rbx              #  40    0x2ce07  3      OPC=addq_r64_r64    
  callq %rbx                   #  41    0x2ce0a  2      OPC=callq_r64       
  movl %eax, 0x100447d2(%rip)  #  42    0x2ce0c  6      OPC=movl_m32_r32    
  movl $0x10039c86, %edi       #  43    0x2ce12  5      OPC=movl_r32_imm32  
  nop                          #  44    0x2ce17  1      OPC=nop             
  nop                          #  45    0x2ce18  1      OPC=nop             
  nop                          #  46    0x2ce19  1      OPC=nop             
  nop                          #  47    0x2ce1a  1      OPC=nop             
  nop                          #  48    0x2ce1b  1      OPC=nop             
  nop                          #  49    0x2ce1c  1      OPC=nop             
  nop                          #  50    0x2ce1d  1      OPC=nop             
  nop                          #  51    0x2ce1e  1      OPC=nop             
  nop                          #  52    0x2ce1f  1      OPC=nop             
  nop                          #  53    0x2ce20  1      OPC=nop             
  nop                          #  54    0x2ce21  1      OPC=nop             
  nop                          #  55    0x2ce22  1      OPC=nop             
  nop                          #  56    0x2ce23  1      OPC=nop             
  andl $0xffffffe0, %ebx       #  57    0x2ce24  6      OPC=andl_r32_imm32  
  nop                          #  58    0x2ce2a  1      OPC=nop             
  nop                          #  59    0x2ce2b  1      OPC=nop             
  nop                          #  60    0x2ce2c  1      OPC=nop             
  addq %r15, %rbx              #  61    0x2ce2d  3      OPC=addq_r64_r64    
  callq %rbx                   #  62    0x2ce30  2      OPC=callq_r64       
  movl %eax, 0x100447aa(%rip)  #  63    0x2ce32  6      OPC=movl_m32_r32    
  xorl %eax, %eax              #  64    0x2ce38  2      OPC=xorl_r32_r32    
  popq %rbx                    #  65    0x2ce3a  1      OPC=popq_r64_1      
  popq %r11                    #  66    0x2ce3b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  67    0x2ce3d  7      OPC=andl_r32_imm32  
  nop                          #  68    0x2ce44  1      OPC=nop             
  nop                          #  69    0x2ce45  1      OPC=nop             
  nop                          #  70    0x2ce46  1      OPC=nop             
  nop                          #  71    0x2ce47  1      OPC=nop             
  addq %r15, %r11              #  72    0x2ce48  3      OPC=addq_r64_r64    
  jmpq %r11                    #  73    0x2ce4b  3      OPC=jmpq_r64        
  nop                          #  74    0x2ce4e  1      OPC=nop             
  nop                          #  75    0x2ce4f  1      OPC=nop             
  nop                          #  76    0x2ce50  1      OPC=nop             
  nop                          #  77    0x2ce51  1      OPC=nop             
  nop                          #  78    0x2ce52  1      OPC=nop             
  nop                          #  79    0x2ce53  1      OPC=nop             
  nop                          #  80    0x2ce54  1      OPC=nop             
  nop                          #  81    0x2ce55  1      OPC=nop             
  nop                          #  82    0x2ce56  1      OPC=nop             
  nop                          #  83    0x2ce57  1      OPC=nop             
  nop                          #  84    0x2ce58  1      OPC=nop             
                                                                            
.size PPP_InitializeModule, .-PPP_InitializeModule

