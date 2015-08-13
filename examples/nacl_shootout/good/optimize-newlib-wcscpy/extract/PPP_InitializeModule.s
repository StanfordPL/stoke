  .text
  .globl PPP_InitializeModule
  .type PPP_InitializeModule, @function

#! file-offset 0x6c3a0
#! rip-offset  0x2c3a0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.PPP_InitializeModule:         #        0x2c3a0  0      OPC=<label>         
  pushq %rbx                   #  1     0x2c3a0  1      OPC=pushq_r64_1     
  movl %esi, %ebx              #  2     0x2c3a1  2      OPC=movl_r32_r32    
  movl %edi, 0x10045233(%rip)  #  3     0x2c3a3  6      OPC=movl_m32_r32    
  movl $0x10039c68, %edi       #  4     0x2c3a9  5      OPC=movl_r32_imm32  
  nop                          #  5     0x2c3ae  1      OPC=nop             
  nop                          #  6     0x2c3af  1      OPC=nop             
  nop                          #  7     0x2c3b0  1      OPC=nop             
  nop                          #  8     0x2c3b1  1      OPC=nop             
  nop                          #  9     0x2c3b2  1      OPC=nop             
  nop                          #  10    0x2c3b3  1      OPC=nop             
  nop                          #  11    0x2c3b4  1      OPC=nop             
  nop                          #  12    0x2c3b5  1      OPC=nop             
  nop                          #  13    0x2c3b6  1      OPC=nop             
  nop                          #  14    0x2c3b7  1      OPC=nop             
  andl $0xffffffe0, %ebx       #  15    0x2c3b8  6      OPC=andl_r32_imm32  
  nop                          #  16    0x2c3be  1      OPC=nop             
  nop                          #  17    0x2c3bf  1      OPC=nop             
  nop                          #  18    0x2c3c0  1      OPC=nop             
  addq %r15, %rbx              #  19    0x2c3c1  3      OPC=addq_r64_r64    
  callq %rbx                   #  20    0x2c3c4  2      OPC=callq_r64       
  movl %eax, 0x1004520e(%rip)  #  21    0x2c3c6  6      OPC=movl_m32_r32    
  movl $0x10039c7a, %edi       #  22    0x2c3cc  5      OPC=movl_r32_imm32  
  nop                          #  23    0x2c3d1  1      OPC=nop             
  nop                          #  24    0x2c3d2  1      OPC=nop             
  nop                          #  25    0x2c3d3  1      OPC=nop             
  nop                          #  26    0x2c3d4  1      OPC=nop             
  nop                          #  27    0x2c3d5  1      OPC=nop             
  nop                          #  28    0x2c3d6  1      OPC=nop             
  nop                          #  29    0x2c3d7  1      OPC=nop             
  nop                          #  30    0x2c3d8  1      OPC=nop             
  nop                          #  31    0x2c3d9  1      OPC=nop             
  nop                          #  32    0x2c3da  1      OPC=nop             
  nop                          #  33    0x2c3db  1      OPC=nop             
  nop                          #  34    0x2c3dc  1      OPC=nop             
  nop                          #  35    0x2c3dd  1      OPC=nop             
  andl $0xffffffe0, %ebx       #  36    0x2c3de  6      OPC=andl_r32_imm32  
  nop                          #  37    0x2c3e4  1      OPC=nop             
  nop                          #  38    0x2c3e5  1      OPC=nop             
  nop                          #  39    0x2c3e6  1      OPC=nop             
  addq %r15, %rbx              #  40    0x2c3e7  3      OPC=addq_r64_r64    
  callq %rbx                   #  41    0x2c3ea  2      OPC=callq_r64       
  movl %eax, 0x100451f2(%rip)  #  42    0x2c3ec  6      OPC=movl_m32_r32    
  movl $0x10039c86, %edi       #  43    0x2c3f2  5      OPC=movl_r32_imm32  
  nop                          #  44    0x2c3f7  1      OPC=nop             
  nop                          #  45    0x2c3f8  1      OPC=nop             
  nop                          #  46    0x2c3f9  1      OPC=nop             
  nop                          #  47    0x2c3fa  1      OPC=nop             
  nop                          #  48    0x2c3fb  1      OPC=nop             
  nop                          #  49    0x2c3fc  1      OPC=nop             
  nop                          #  50    0x2c3fd  1      OPC=nop             
  nop                          #  51    0x2c3fe  1      OPC=nop             
  nop                          #  52    0x2c3ff  1      OPC=nop             
  nop                          #  53    0x2c400  1      OPC=nop             
  nop                          #  54    0x2c401  1      OPC=nop             
  nop                          #  55    0x2c402  1      OPC=nop             
  nop                          #  56    0x2c403  1      OPC=nop             
  andl $0xffffffe0, %ebx       #  57    0x2c404  6      OPC=andl_r32_imm32  
  nop                          #  58    0x2c40a  1      OPC=nop             
  nop                          #  59    0x2c40b  1      OPC=nop             
  nop                          #  60    0x2c40c  1      OPC=nop             
  addq %r15, %rbx              #  61    0x2c40d  3      OPC=addq_r64_r64    
  callq %rbx                   #  62    0x2c410  2      OPC=callq_r64       
  movl %eax, 0x100451ca(%rip)  #  63    0x2c412  6      OPC=movl_m32_r32    
  xorl %eax, %eax              #  64    0x2c418  2      OPC=xorl_r32_r32    
  popq %rbx                    #  65    0x2c41a  1      OPC=popq_r64_1      
  popq %r11                    #  66    0x2c41b  2      OPC=popq_r64_1      
  andl $0xffffffe0, %r11d      #  67    0x2c41d  7      OPC=andl_r32_imm32  
  nop                          #  68    0x2c424  1      OPC=nop             
  nop                          #  69    0x2c425  1      OPC=nop             
  nop                          #  70    0x2c426  1      OPC=nop             
  nop                          #  71    0x2c427  1      OPC=nop             
  addq %r15, %r11              #  72    0x2c428  3      OPC=addq_r64_r64    
  jmpq %r11                    #  73    0x2c42b  3      OPC=jmpq_r64        
  nop                          #  74    0x2c42e  1      OPC=nop             
  nop                          #  75    0x2c42f  1      OPC=nop             
  nop                          #  76    0x2c430  1      OPC=nop             
  nop                          #  77    0x2c431  1      OPC=nop             
  nop                          #  78    0x2c432  1      OPC=nop             
  nop                          #  79    0x2c433  1      OPC=nop             
  nop                          #  80    0x2c434  1      OPC=nop             
  nop                          #  81    0x2c435  1      OPC=nop             
  nop                          #  82    0x2c436  1      OPC=nop             
  nop                          #  83    0x2c437  1      OPC=nop             
  nop                          #  84    0x2c438  1      OPC=nop             
                                                                            
.size PPP_InitializeModule, .-PPP_InitializeModule

