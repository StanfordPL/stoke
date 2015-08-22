  .text
  .globl pthread_mutex_init
  .type pthread_mutex_init, @function

#! file-offset 0x6d9e0
#! rip-offset  0x2d9e0
#! capacity    128 bytes

# Text                         #  Line  RIP      Bytes  Opcode              
.pthread_mutex_init:           #        0x2d9e0  0      OPC=<label>         
  movl %esi, %esi              #  1     0x2d9e0  2      OPC=movl_r32_r32    
  movl %edi, %edi              #  2     0x2d9e2  2      OPC=movl_r32_r32    
  testq %rsi, %rsi             #  3     0x2d9e4  3      OPC=testq_r64_r64   
  movl %edi, %edi              #  4     0x2d9e7  2      OPC=movl_r32_r32    
  movl $0x0, (%r15,%rdi,1)     #  5     0x2d9e9  8      OPC=movl_m32_imm32  
  movl %edi, %edi              #  6     0x2d9f1  2      OPC=movl_r32_r32    
  movl $0x0, 0xc(%r15,%rdi,1)  #  7     0x2d9f3  9      OPC=movl_m32_imm32  
  nop                          #  8     0x2d9fc  1      OPC=nop             
  nop                          #  9     0x2d9fd  1      OPC=nop             
  nop                          #  10    0x2d9fe  1      OPC=nop             
  nop                          #  11    0x2d9ff  1      OPC=nop             
  movl %edi, %edi              #  12    0x2da00  2      OPC=movl_r32_r32    
  movl $0x0, 0x8(%r15,%rdi,1)  #  13    0x2da02  9      OPC=movl_m32_imm32  
  je .L_2da40                  #  14    0x2da0b  2      OPC=je_label        
  popq %r11                    #  15    0x2da0d  2      OPC=popq_r64_1      
  movl %esi, %esi              #  16    0x2da0f  2      OPC=movl_r32_r32    
  movl (%r15,%rsi,1), %eax     #  17    0x2da11  4      OPC=movl_r32_m32    
  movl %edi, %edi              #  18    0x2da15  2      OPC=movl_r32_r32    
  movl %eax, 0x4(%r15,%rdi,1)  #  19    0x2da17  5      OPC=movl_m32_r32    
  xorl %eax, %eax              #  20    0x2da1c  2      OPC=xorl_r32_r32    
  xchgw %ax, %ax               #  21    0x2da1e  2      OPC=xchgw_ax_r16    
  andl $0xffffffe0, %r11d      #  22    0x2da20  7      OPC=andl_r32_imm32  
  nop                          #  23    0x2da27  1      OPC=nop             
  nop                          #  24    0x2da28  1      OPC=nop             
  nop                          #  25    0x2da29  1      OPC=nop             
  nop                          #  26    0x2da2a  1      OPC=nop             
  addq %r15, %r11              #  27    0x2da2b  3      OPC=addq_r64_r64    
  jmpq %r11                    #  28    0x2da2e  3      OPC=jmpq_r64        
  nop                          #  29    0x2da31  1      OPC=nop             
  nop                          #  30    0x2da32  1      OPC=nop             
  nop                          #  31    0x2da33  1      OPC=nop             
  nop                          #  32    0x2da34  1      OPC=nop             
  nop                          #  33    0x2da35  1      OPC=nop             
  nop                          #  34    0x2da36  1      OPC=nop             
  nop                          #  35    0x2da37  1      OPC=nop             
  nop                          #  36    0x2da38  1      OPC=nop             
  nop                          #  37    0x2da39  1      OPC=nop             
  nop                          #  38    0x2da3a  1      OPC=nop             
  nop                          #  39    0x2da3b  1      OPC=nop             
  nop                          #  40    0x2da3c  1      OPC=nop             
  nop                          #  41    0x2da3d  1      OPC=nop             
  nop                          #  42    0x2da3e  1      OPC=nop             
  nop                          #  43    0x2da3f  1      OPC=nop             
  nop                          #  44    0x2da40  1      OPC=nop             
  nop                          #  45    0x2da41  1      OPC=nop             
  nop                          #  46    0x2da42  1      OPC=nop             
  nop                          #  47    0x2da43  1      OPC=nop             
  nop                          #  48    0x2da44  1      OPC=nop             
  nop                          #  49    0x2da45  1      OPC=nop             
  nop                          #  50    0x2da46  1      OPC=nop             
.L_2da40:                      #        0x2da47  0      OPC=<label>         
  popq %r11                    #  51    0x2da47  2      OPC=popq_r64_1      
  xorl %eax, %eax              #  52    0x2da49  2      OPC=xorl_r32_r32    
  movl %edi, %edi              #  53    0x2da4b  2      OPC=movl_r32_r32    
  movl $0x0, 0x4(%r15,%rdi,1)  #  54    0x2da4d  9      OPC=movl_m32_imm32  
  andl $0xffffffe0, %r11d      #  55    0x2da56  7      OPC=andl_r32_imm32  
  nop                          #  56    0x2da5d  1      OPC=nop             
  nop                          #  57    0x2da5e  1      OPC=nop             
  nop                          #  58    0x2da5f  1      OPC=nop             
  nop                          #  59    0x2da60  1      OPC=nop             
  addq %r15, %r11              #  60    0x2da61  3      OPC=addq_r64_r64    
  jmpq %r11                    #  61    0x2da64  3      OPC=jmpq_r64        
  nop                          #  62    0x2da67  1      OPC=nop             
  nop                          #  63    0x2da68  1      OPC=nop             
  nop                          #  64    0x2da69  1      OPC=nop             
  nop                          #  65    0x2da6a  1      OPC=nop             
  nop                          #  66    0x2da6b  1      OPC=nop             
  nop                          #  67    0x2da6c  1      OPC=nop             
  nop                          #  68    0x2da6d  1      OPC=nop             
                                                                            
.size pthread_mutex_init, .-pthread_mutex_init

